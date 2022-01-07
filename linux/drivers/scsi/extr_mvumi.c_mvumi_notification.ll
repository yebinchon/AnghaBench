; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_notification.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mvumi_driver_event = type { i32 }
%struct.mvumi_event_req = type { i32, %struct.mvumi_driver_event* }

@APICDB1_EVENT_GETEVENT = common dso_local global i64 0, align 8
@MAX_EVENTS_RETURNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"event count[0x%x] is bigger than max event count[0x%x].\0A\00", align 1
@APICDB1_HOST_GETEVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_hba*, i64, i8*)* @mvumi_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvumi_notification(%struct.mvumi_hba* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.mvumi_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mvumi_driver_event*, align 8
  %10 = alloca %struct.mvumi_event_req*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @APICDB1_EVENT_GETEVENT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %3
  store %struct.mvumi_driver_event* null, %struct.mvumi_driver_event** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.mvumi_event_req*
  store %struct.mvumi_event_req* %16, %struct.mvumi_event_req** %10, align 8
  %17 = load %struct.mvumi_event_req*, %struct.mvumi_event_req** %10, align 8
  %18 = getelementptr inbounds %struct.mvumi_event_req, %struct.mvumi_event_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MAX_EVENTS_RETURNED, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %25 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MAX_EVENTS_RETURNED, align 4
  %30 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %59

31:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.mvumi_event_req*, %struct.mvumi_event_req** %10, align 8
  %38 = getelementptr inbounds %struct.mvumi_event_req, %struct.mvumi_event_req* %37, i32 0, i32 1
  %39 = load %struct.mvumi_driver_event*, %struct.mvumi_driver_event** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mvumi_driver_event, %struct.mvumi_driver_event* %39, i64 %41
  store %struct.mvumi_driver_event* %42, %struct.mvumi_driver_event** %9, align 8
  %43 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %44 = load %struct.mvumi_driver_event*, %struct.mvumi_driver_event** %9, align 8
  %45 = call i32 @mvumi_show_event(%struct.mvumi_hba* %43, %struct.mvumi_driver_event* %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %32

49:                                               ; preds = %32
  br label %59

50:                                               ; preds = %3
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @APICDB1_HOST_GETEVENT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @mvumi_proc_msg(%struct.mvumi_hba* %55, i8* %56)
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %23, %58, %49
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @mvumi_show_event(%struct.mvumi_hba*, %struct.mvumi_driver_event*) #1

declare dso_local i32 @mvumi_proc_msg(%struct.mvumi_hba*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
