; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_btrfs_alloc_stripe_hash_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_btrfs_alloc_stripe_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i64 }
%struct.btrfs_stripe_hash_table = type { %struct.btrfs_stripe_hash*, i32, i32 }
%struct.btrfs_stripe_hash = type { i32, i32 }

@BTRFS_STRIPE_HASH_TABLE_BITS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_alloc_stripe_hash_table(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_stripe_hash_table*, align 8
  %5 = alloca %struct.btrfs_stripe_hash_table*, align 8
  %6 = alloca %struct.btrfs_stripe_hash*, align 8
  %7 = alloca %struct.btrfs_stripe_hash*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  %11 = load i32, i32* @BTRFS_STRIPE_HASH_TABLE_BITS, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 8, %20
  %22 = add i64 16, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.btrfs_stripe_hash_table* @kvzalloc(i32 %24, i32 %25)
  store %struct.btrfs_stripe_hash_table* %26, %struct.btrfs_stripe_hash_table** %4, align 8
  %27 = load %struct.btrfs_stripe_hash_table*, %struct.btrfs_stripe_hash_table** %4, align 8
  %28 = icmp ne %struct.btrfs_stripe_hash_table* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %71

32:                                               ; preds = %18
  %33 = load %struct.btrfs_stripe_hash_table*, %struct.btrfs_stripe_hash_table** %4, align 8
  %34 = getelementptr inbounds %struct.btrfs_stripe_hash_table, %struct.btrfs_stripe_hash_table* %33, i32 0, i32 2
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.btrfs_stripe_hash_table*, %struct.btrfs_stripe_hash_table** %4, align 8
  %37 = getelementptr inbounds %struct.btrfs_stripe_hash_table, %struct.btrfs_stripe_hash_table* %36, i32 0, i32 1
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.btrfs_stripe_hash_table*, %struct.btrfs_stripe_hash_table** %4, align 8
  %40 = getelementptr inbounds %struct.btrfs_stripe_hash_table, %struct.btrfs_stripe_hash_table* %39, i32 0, i32 0
  %41 = load %struct.btrfs_stripe_hash*, %struct.btrfs_stripe_hash** %40, align 8
  store %struct.btrfs_stripe_hash* %41, %struct.btrfs_stripe_hash** %7, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %57, %32
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.btrfs_stripe_hash*, %struct.btrfs_stripe_hash** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.btrfs_stripe_hash, %struct.btrfs_stripe_hash* %47, i64 %49
  store %struct.btrfs_stripe_hash* %50, %struct.btrfs_stripe_hash** %6, align 8
  %51 = load %struct.btrfs_stripe_hash*, %struct.btrfs_stripe_hash** %6, align 8
  %52 = getelementptr inbounds %struct.btrfs_stripe_hash, %struct.btrfs_stripe_hash* %51, i32 0, i32 1
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.btrfs_stripe_hash*, %struct.btrfs_stripe_hash** %6, align 8
  %55 = getelementptr inbounds %struct.btrfs_stripe_hash, %struct.btrfs_stripe_hash* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_init(i32* %55)
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %62 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %61, i32 0, i32 0
  %63 = load %struct.btrfs_stripe_hash_table*, %struct.btrfs_stripe_hash_table** %4, align 8
  %64 = call %struct.btrfs_stripe_hash_table* @cmpxchg(i64* %62, i32* null, %struct.btrfs_stripe_hash_table* %63)
  store %struct.btrfs_stripe_hash_table* %64, %struct.btrfs_stripe_hash_table** %5, align 8
  %65 = load %struct.btrfs_stripe_hash_table*, %struct.btrfs_stripe_hash_table** %5, align 8
  %66 = icmp ne %struct.btrfs_stripe_hash_table* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.btrfs_stripe_hash_table*, %struct.btrfs_stripe_hash_table** %5, align 8
  %69 = call i32 @kvfree(%struct.btrfs_stripe_hash_table* %68)
  br label %70

70:                                               ; preds = %67, %60
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %29, %17
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.btrfs_stripe_hash_table* @kvzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.btrfs_stripe_hash_table* @cmpxchg(i64*, i32*, %struct.btrfs_stripe_hash_table*) #1

declare dso_local i32 @kvfree(%struct.btrfs_stripe_hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
