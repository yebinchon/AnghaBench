; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_execute_sync_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_execute_sync_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32*, i32, i64, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fd_dev = type { i32 }

@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"FILEIO: vfs_fsync_range() failed: %d\0A\00", align 1
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @fd_execute_sync_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_execute_sync_cache(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.fd_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 3
  %12 = load %struct.se_device*, %struct.se_device** %11, align 8
  store %struct.se_device* %12, %struct.se_device** %4, align 8
  %13 = load %struct.se_device*, %struct.se_device** %4, align 8
  %14 = call %struct.fd_dev* @FD_DEV(%struct.se_device* %13)
  store %struct.fd_dev* %14, %struct.fd_dev** %5, align 8
  %15 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 2
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %25 = load i32, i32* @SAM_STAT_GOOD, align 4
  %26 = call i32 @target_complete_cmd(%struct.se_cmd* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %34 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  %38 = load i32, i32* @LLONG_MAX, align 4
  store i32 %38, i32* %8, align 4
  br label %64

39:                                               ; preds = %32, %27
  %40 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.se_device*, %struct.se_device** %4, align 8
  %44 = getelementptr inbounds %struct.se_device, %struct.se_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %42, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %39
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %56 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = sub nsw i64 %58, 1
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %8, align 4
  br label %63

61:                                               ; preds = %39
  %62 = load i32, i32* @LLONG_MAX, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %61, %52
  br label %64

64:                                               ; preds = %63, %37
  %65 = load %struct.fd_dev*, %struct.fd_dev** %5, align 8
  %66 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @vfs_fsync_range(i32 %67, i32 %68, i32 %69, i32 1)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %64
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %92

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %85 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %86 = call i32 @target_complete_cmd(%struct.se_cmd* %84, i32 %85)
  br label %91

87:                                               ; preds = %80
  %88 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %89 = load i32, i32* @SAM_STAT_GOOD, align 4
  %90 = call i32 @target_complete_cmd(%struct.se_cmd* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %79
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.fd_dev* @FD_DEV(%struct.se_device*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

declare dso_local i32 @vfs_fsync_range(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
