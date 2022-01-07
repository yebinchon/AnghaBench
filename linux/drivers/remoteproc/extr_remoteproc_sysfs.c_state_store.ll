; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_sysfs.c_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_sysfs.c_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rproc = type { i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@RPROC_RUNNING = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Boot failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unrecognised option: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rproc*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.rproc* @to_rproc(%struct.device* %12)
  store %struct.rproc* %13, %struct.rproc** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @sysfs_streq(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %4
  %18 = load %struct.rproc*, %struct.rproc** %10, align 8
  %19 = getelementptr inbounds %struct.rproc, %struct.rproc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RPROC_RUNNING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %72

26:                                               ; preds = %17
  %27 = load %struct.rproc*, %struct.rproc** %10, align 8
  %28 = call i32 @rproc_boot(%struct.rproc* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.rproc*, %struct.rproc** %10, align 8
  %33 = getelementptr inbounds %struct.rproc, %struct.rproc* %32, i32 0, i32 1
  %34 = load i32, i32* %11, align 4
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  br label %61

37:                                               ; preds = %4
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @sysfs_streq(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.rproc*, %struct.rproc** %10, align 8
  %43 = getelementptr inbounds %struct.rproc, %struct.rproc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RPROC_RUNNING, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %72

50:                                               ; preds = %41
  %51 = load %struct.rproc*, %struct.rproc** %10, align 8
  %52 = call i32 @rproc_shutdown(%struct.rproc* %51)
  br label %60

53:                                               ; preds = %37
  %54 = load %struct.rproc*, %struct.rproc** %10, align 8
  %55 = getelementptr inbounds %struct.rproc, %struct.rproc* %54, i32 0, i32 1
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %53, %50
  br label %61

61:                                               ; preds = %60, %36
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  br label %69

67:                                               ; preds = %61
  %68 = load i64, i64* %9, align 8
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i64 [ %66, %64 ], [ %68, %67 ]
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %47, %23
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.rproc* @to_rproc(%struct.device*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @rproc_boot(%struct.rproc*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @rproc_shutdown(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
