; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_add_block_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_add_block_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_entry = type { i8*, i32, i8*, i64, i64, i64, i8*, i8*, i8* }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.root_entry = type { i8*, i32, i8*, i64, i64, i64, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block_entry* (%struct.btrfs_fs_info*, i8*, i8*, i8*)* @add_block_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block_entry* @add_block_entry(%struct.btrfs_fs_info* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.block_entry*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.block_entry*, align 8
  %11 = alloca %struct.block_entry*, align 8
  %12 = alloca %struct.root_entry*, align 8
  %13 = alloca %struct.root_entry*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.block_entry* null, %struct.block_entry** %10, align 8
  store %struct.root_entry* null, %struct.root_entry** %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.root_entry* @kzalloc(i32 72, i32 %14)
  store %struct.root_entry* %15, %struct.root_entry** %12, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.root_entry* @kzalloc(i32 72, i32 %16)
  %18 = bitcast %struct.root_entry* %17 to %struct.block_entry*
  store %struct.block_entry* %18, %struct.block_entry** %10, align 8
  %19 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  %20 = icmp ne %struct.block_entry* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.root_entry*, %struct.root_entry** %12, align 8
  %23 = icmp ne %struct.root_entry* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %21, %4
  %25 = load %struct.root_entry*, %struct.root_entry** %12, align 8
  %26 = call i32 @kfree(%struct.root_entry* %25)
  %27 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  %28 = bitcast %struct.block_entry* %27 to %struct.root_entry*
  %29 = call i32 @kfree(%struct.root_entry* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.root_entry* @ERR_PTR(i32 %31)
  %33 = bitcast %struct.root_entry* %32 to %struct.block_entry*
  store %struct.block_entry* %33, %struct.block_entry** %5, align 8
  br label %104

34:                                               ; preds = %21
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  %37 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  %40 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.root_entry*, %struct.root_entry** %12, align 8
  %43 = getelementptr inbounds %struct.root_entry, %struct.root_entry* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  %44 = load %struct.root_entry*, %struct.root_entry** %12, align 8
  %45 = getelementptr inbounds %struct.root_entry, %struct.root_entry* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %47 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %46, i32 0, i32 1
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %50 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %49, i32 0, i32 0
  %51 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  %52 = bitcast %struct.block_entry* %51 to %struct.root_entry*
  %53 = call %struct.root_entry* @insert_block_entry(i32* %50, %struct.root_entry* %52)
  %54 = bitcast %struct.root_entry* %53 to %struct.block_entry*
  store %struct.block_entry* %54, %struct.block_entry** %11, align 8
  %55 = load %struct.block_entry*, %struct.block_entry** %11, align 8
  %56 = icmp ne %struct.block_entry* %55, null
  br i1 %56, label %57, label %76

57:                                               ; preds = %34
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.block_entry*, %struct.block_entry** %11, align 8
  %62 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %61, i32 0, i32 0
  %63 = load %struct.root_entry*, %struct.root_entry** %12, align 8
  %64 = call %struct.root_entry* @insert_root_entry(i8** %62, %struct.root_entry* %63)
  store %struct.root_entry* %64, %struct.root_entry** %13, align 8
  %65 = load %struct.root_entry*, %struct.root_entry** %13, align 8
  %66 = icmp ne %struct.root_entry* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.root_entry*, %struct.root_entry** %12, align 8
  %69 = call i32 @kfree(%struct.root_entry* %68)
  br label %70

70:                                               ; preds = %67, %60
  br label %71

71:                                               ; preds = %70, %57
  %72 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  %73 = bitcast %struct.block_entry* %72 to %struct.root_entry*
  %74 = call i32 @kfree(%struct.root_entry* %73)
  %75 = load %struct.block_entry*, %struct.block_entry** %11, align 8
  store %struct.block_entry* %75, %struct.block_entry** %5, align 8
  br label %104

76:                                               ; preds = %34
  %77 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  %78 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  %80 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  %82 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load i8*, i8** @RB_ROOT, align 8
  %84 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  %85 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** @RB_ROOT, align 8
  %87 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  %88 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  %90 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %89, i32 0, i32 1
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  %92 = load i8*, i8** %9, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %76
  %95 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  %96 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %95, i32 0, i32 0
  %97 = load %struct.root_entry*, %struct.root_entry** %12, align 8
  %98 = call %struct.root_entry* @insert_root_entry(i8** %96, %struct.root_entry* %97)
  br label %102

99:                                               ; preds = %76
  %100 = load %struct.root_entry*, %struct.root_entry** %12, align 8
  %101 = call i32 @kfree(%struct.root_entry* %100)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.block_entry*, %struct.block_entry** %10, align 8
  store %struct.block_entry* %103, %struct.block_entry** %5, align 8
  br label %104

104:                                              ; preds = %102, %71, %24
  %105 = load %struct.block_entry*, %struct.block_entry** %5, align 8
  ret %struct.block_entry* %105
}

declare dso_local %struct.root_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.root_entry*) #1

declare dso_local %struct.root_entry* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.root_entry* @insert_block_entry(i32*, %struct.root_entry*) #1

declare dso_local %struct.root_entry* @insert_root_entry(i8**, %struct.root_entry*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
