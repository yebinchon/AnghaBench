; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.rio_channel = type { i32, i32, i32 }

@CHOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ch_%d by %s(%d)\00", align 1
@current = common dso_local global %struct.TYPE_3__* null, align 8
@RIO_CM_DESTROYING = common dso_local global i32 0, align 4
@RIO_CM_CONNECTED = common dso_local global i32 0, align 4
@WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"wait on %d returns %ld\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s(%d) timed out waiting for ch %d\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"%s(%d) wait for ch %d was interrupted\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"ch_%d resources released\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to release ch_%d resources\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_channel*)* @riocm_ch_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riocm_ch_close(%struct.rio_channel* %0) #0 {
  %2 = alloca %struct.rio_channel*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rio_channel* %0, %struct.rio_channel** %2, align 8
  %7 = call i64 @msecs_to_jiffies(i32 3000)
  store i64 %7, i64* %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @CHOP, align 4
  %9 = load %struct.rio_channel*, %struct.rio_channel** %2, align 8
  %10 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %16 = call i32 @task_pid_nr(%struct.TYPE_3__* %15)
  %17 = call i32 (i32, i8*, i32, ...) @riocm_debug(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %16)
  %18 = load %struct.rio_channel*, %struct.rio_channel** %2, align 8
  %19 = load i32, i32* @RIO_CM_DESTROYING, align 4
  %20 = call i32 @riocm_exch(%struct.rio_channel* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @RIO_CM_CONNECTED, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.rio_channel*, %struct.rio_channel** %2, align 8
  %26 = call i32 @riocm_send_close(%struct.rio_channel* %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.rio_channel*, %struct.rio_channel** %2, align 8
  %29 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %28, i32 0, i32 2
  %30 = call i32 @complete_all(i32* %29)
  %31 = load %struct.rio_channel*, %struct.rio_channel** %2, align 8
  %32 = call i32 @riocm_put_channel(%struct.rio_channel* %31)
  %33 = load %struct.rio_channel*, %struct.rio_channel** %2, align 8
  %34 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %33, i32 0, i32 1
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @wait_for_completion_interruptible_timeout(i32* %34, i64 %35)
  store i64 %36, i64* %5, align 8
  %37 = load i32, i32* @WAIT, align 4
  %38 = load %struct.rio_channel*, %struct.rio_channel** %2, align 8
  %39 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 (i32, i8*, i32, ...) @riocm_debug(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %40, i64 %41)
  %43 = load i64, i64* %5, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %27
  %46 = load i32, i32* @CHOP, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %51 = call i32 @task_pid_nr(%struct.TYPE_3__* %50)
  %52 = load %struct.rio_channel*, %struct.rio_channel** %2, align 8
  %53 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i32, ...) @riocm_debug(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %51, i32 %54)
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %77

58:                                               ; preds = %27
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @ERESTARTSYS, align 8
  %61 = sub nsw i64 0, %60
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i32, i32* @CHOP, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %69 = call i32 @task_pid_nr(%struct.TYPE_3__* %68)
  %70 = load %struct.rio_channel*, %struct.rio_channel** %2, align 8
  %71 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, i32, ...) @riocm_debug(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %69, i32 %72)
  %74 = load i32, i32* @EINTR, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %63, %58
  br label %77

77:                                               ; preds = %76, %45
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @CHOP, align 4
  %82 = load %struct.rio_channel*, %struct.rio_channel** %2, align 8
  %83 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, i32, ...) @riocm_debug(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load %struct.rio_channel*, %struct.rio_channel** %2, align 8
  %87 = call i32 @kfree(%struct.rio_channel* %86)
  br label %94

88:                                               ; preds = %77
  %89 = load i32, i32* @CHOP, align 4
  %90 = load %struct.rio_channel*, %struct.rio_channel** %2, align 8
  %91 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, i32, ...) @riocm_debug(i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %88, %80
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @riocm_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_3__*) #1

declare dso_local i32 @riocm_exch(%struct.rio_channel*, i32) #1

declare dso_local i32 @riocm_send_close(%struct.rio_channel*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @riocm_put_channel(%struct.rio_channel*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i64) #1

declare dso_local i32 @kfree(%struct.rio_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
