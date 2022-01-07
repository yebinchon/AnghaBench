; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_qgroup_rescan_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_qgroup_rescan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BTRFS_QGROUP_STATUS_FLAG_RESCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"qgroup rescan init failed, qgroup is not enabled\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BTRFS_QGROUP_STATUS_FLAG_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"qgroup rescan init failed, qgroup rescan is not queued\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"qgroup rescan is already in progress\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@btrfs_qgroup_rescan_helper = common dso_local global i32 0, align 4
@btrfs_qgroup_rescan_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32, i32)* @qgroup_rescan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qgroup_rescan_init(%struct.btrfs_fs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %3
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %13 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BTRFS_QGROUP_STATUS_FLAG_RESCAN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %20 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %36

23:                                               ; preds = %11
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %25 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BTRFS_QGROUP_STATUS_FLAG_ON, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %32 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %31, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %23
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %120

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %44 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %43, i32 0, i32 3
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %47 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %46, i32 0, i32 4
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %93

51:                                               ; preds = %42
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %53 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BTRFS_QGROUP_STATUS_FLAG_RESCAN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %60 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @EINPROGRESS, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %76

63:                                               ; preds = %51
  %64 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %65 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BTRFS_QGROUP_STATUS_FLAG_ON, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %63
  %71 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %72 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %71, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %70, %63
  br label %76

76:                                               ; preds = %75, %58
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %81 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %80, i32 0, i32 4
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %84 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %83, i32 0, i32 3
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %120

87:                                               ; preds = %76
  %88 = load i32, i32* @BTRFS_QGROUP_STATUS_FLAG_RESCAN, align 4
  %89 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %90 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %42
  %94 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %95 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %94, i32 0, i32 6
  %96 = call i32 @memset(%struct.TYPE_3__* %95, i32 0, i32 4)
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %99 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %102 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %101, i32 0, i32 5
  %103 = call i32 @init_completion(i32* %102)
  %104 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %105 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  %106 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %107 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %106, i32 0, i32 4
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %110 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %109, i32 0, i32 3
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %113 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %112, i32 0, i32 2
  %114 = call i32 @memset(%struct.TYPE_3__* %113, i32 0, i32 4)
  %115 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %116 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %115, i32 0, i32 2
  %117 = load i32, i32* @btrfs_qgroup_rescan_helper, align 4
  %118 = load i32, i32* @btrfs_qgroup_rescan_worker, align 4
  %119 = call i32 @btrfs_init_work(%struct.TYPE_3__* %116, i32 %117, i32 %118, i32* null, i32* null)
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %93, %79, %39
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @btrfs_init_work(%struct.TYPE_3__*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
