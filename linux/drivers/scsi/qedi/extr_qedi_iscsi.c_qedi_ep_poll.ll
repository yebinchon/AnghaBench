; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_ep_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_ep_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.qedi_endpoint* }
%struct.qedi_endpoint = type { i64, i32 }

@qedi_do_not_recover = common dso_local global i64 0, align 8
@EP_STATE_IDLE = common dso_local global i64 0, align 8
@EP_STATE_OFLDCONN_NONE = common dso_local global i64 0, align 8
@EP_STATE_OFLDCONN_FAILED = common dso_local global i64 0, align 8
@EP_STATE_OFLDCONN_COMPL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_endpoint*, i32)* @qedi_ep_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_ep_poll(%struct.iscsi_endpoint* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qedi_endpoint*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* @qedi_do_not_recover, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %65

11:                                               ; preds = %2
  %12 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %12, i32 0, i32 0
  %14 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %13, align 8
  store %struct.qedi_endpoint* %14, %struct.qedi_endpoint** %6, align 8
  %15 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %6, align 8
  %16 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EP_STATE_IDLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %11
  %21 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %6, align 8
  %22 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EP_STATE_OFLDCONN_NONE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %6, align 8
  %28 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EP_STATE_OFLDCONN_FAILED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20, %11
  store i32 -1, i32* %3, align 4
  br label %65

33:                                               ; preds = %26
  %34 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %6, align 8
  %35 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EP_STATE_OFLDCONN_COMPL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %6, align 8
  %42 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %6, align 8
  %45 = call i32 @QEDI_OFLD_WAIT_STATE(%struct.qedi_endpoint* %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @msecs_to_jiffies(i32 %46)
  %48 = call i32 @wait_event_interruptible_timeout(i32 %43, i32 %45, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %6, align 8
  %50 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EP_STATE_OFLDCONN_FAILED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 -1, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %62, %58, %32, %10
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @QEDI_OFLD_WAIT_STATE(%struct.qedi_endpoint*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
