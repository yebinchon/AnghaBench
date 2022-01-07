; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_get_restripe_target.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_get_restripe_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_balance_control* }
%struct.btrfs_balance_control = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@BTRFS_BLOCK_GROUP_DATA = common dso_local global i32 0, align 4
@BTRFS_BALANCE_ARGS_CONVERT = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_SYSTEM = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32)* @get_restripe_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_restripe_target(%struct.btrfs_fs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_balance_control*, align 8
  %7 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 0
  %10 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %9, align 8
  store %struct.btrfs_balance_control* %10, %struct.btrfs_balance_control** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %6, align 8
  %12 = icmp ne %struct.btrfs_balance_control* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @BTRFS_BLOCK_GROUP_DATA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BTRFS_BALANCE_ARGS_CONVERT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i32, i32* @BTRFS_BLOCK_GROUP_DATA, align 4
  %29 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %6, align 8
  %30 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %28, %32
  store i32 %33, i32* %7, align 4
  br label %76

34:                                               ; preds = %19, %14
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %6, align 8
  %41 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BTRFS_BALANCE_ARGS_CONVERT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  %49 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %6, align 8
  %50 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %48, %52
  store i32 %53, i32* %7, align 4
  br label %75

54:                                               ; preds = %39, %34
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %6, align 8
  %61 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BTRFS_BALANCE_ARGS_CONVERT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %69 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %6, align 8
  %70 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %68, %72
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %67, %59, %54
  br label %75

75:                                               ; preds = %74, %47
  br label %76

76:                                               ; preds = %75, %27
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
