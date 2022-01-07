; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_extent_same.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_extent_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_root = type { i32, i32, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.btrfs_root* }

@.str = private unnamed_addr constant [84 x i8] c"cannot deduplicate to root %llu while send operations are using it (%d in progress)\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@BTRFS_MAX_DEDUPE_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, %struct.inode*, i64)* @btrfs_extent_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_extent_same(%struct.inode* %0, i64 %1, i64 %2, %struct.inode* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.btrfs_root*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.inode* %3, %struct.inode** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.inode*, %struct.inode** %10, align 8
  %18 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  store %struct.btrfs_root* %20, %struct.btrfs_root** %16, align 8
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %22 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %5
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %33 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %37 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @btrfs_warn_rl(i32 %31, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %38)
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %41 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %106

45:                                               ; preds = %5
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %51 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @BTRFS_MAX_DEDUPE_LEN, align 8
  %55 = srem i64 %53, %54
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @BTRFS_MAX_DEDUPE_LEN, align 8
  %58 = call i64 @div_u64(i64 %56, i64 %57)
  store i64 %58, i64* %15, align 8
  store i64 0, i64* %13, align 8
  br label %59

59:                                               ; preds = %80, %45
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %15, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @BTRFS_MAX_DEDUPE_LEN, align 8
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @btrfs_extent_same_range(%struct.inode* %64, i64 %65, i64 %66, %struct.inode* %67, i64 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %94

73:                                               ; preds = %63
  %74 = load i64, i64* @BTRFS_MAX_DEDUPE_LEN, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* @BTRFS_MAX_DEDUPE_LEN, align 8
  %78 = load i64, i64* %11, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %11, align 8
  br label %80

80:                                               ; preds = %73
  %81 = load i64, i64* %13, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %13, align 8
  br label %59

83:                                               ; preds = %59
  %84 = load i64, i64* %14, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %14, align 8
  %90 = load %struct.inode*, %struct.inode** %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @btrfs_extent_same_range(%struct.inode* %87, i64 %88, i64 %89, %struct.inode* %90, i64 %91)
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %86, %83
  br label %94

94:                                               ; preds = %93, %72
  %95 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %96 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %95, i32 0, i32 0
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %99 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %103 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %94, %28
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_warn_rl(i32, i8*, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @div_u64(i64, i64) #1

declare dso_local i32 @btrfs_extent_same_range(%struct.inode*, i64, i64, %struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
