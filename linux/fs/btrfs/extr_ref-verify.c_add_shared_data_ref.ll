; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_add_shared_data_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_add_shared_data_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.block_entry = type { i32, i32 }
%struct.ref_entry = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"existing shared ref when reading from disk?\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32, i64, i32, i32)* @add_shared_data_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_shared_data_ref(%struct.btrfs_fs_info* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.block_entry*, align 8
  %13 = alloca %struct.ref_entry*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ref_entry* @kzalloc(i32 16, i32 %14)
  store %struct.ref_entry* %15, %struct.ref_entry** %13, align 8
  %16 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %17 = icmp ne %struct.ref_entry* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %67

21:                                               ; preds = %5
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.block_entry* @add_block_entry(%struct.btrfs_fs_info* %22, i32 %23, i32 %24, i32 0)
  store %struct.block_entry* %25, %struct.block_entry** %12, align 8
  %26 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %27 = call i64 @IS_ERR(%struct.block_entry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %31 = call i32 @kfree(%struct.ref_entry* %30)
  %32 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %33 = call i32 @PTR_ERR(%struct.block_entry* %32)
  store i32 %33, i32* %6, align 4
  br label %67

34:                                               ; preds = %21
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %37 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %44 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %47 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %49 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %48, i32 0, i32 0
  %50 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %51 = call i64 @insert_ref_entry(i32* %49, %struct.ref_entry* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %34
  %54 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %55 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %58 = call i32 @btrfs_err(%struct.btrfs_fs_info* %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %60 = call i32 @kfree(%struct.ref_entry* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %67

63:                                               ; preds = %34
  %64 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %65 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %53, %29, %18
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.ref_entry* @kzalloc(i32, i32) #1

declare dso_local %struct.block_entry* @add_block_entry(%struct.btrfs_fs_info*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.block_entry*) #1

declare dso_local i32 @kfree(%struct.ref_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.block_entry*) #1

declare dso_local i64 @insert_ref_entry(i32*, %struct.ref_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
