; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_stop_qc_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_stop_qc_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdebug_defer = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SDEB_DEFER_HRT = common dso_local global i32 0, align 4
@SDEB_DEFER_WQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdebug_defer*, i32)* @stop_qc_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_qc_helper(%struct.sdebug_defer* %0, i32 %1) #0 {
  %3 = alloca %struct.sdebug_defer*, align 8
  %4 = alloca i32, align 4
  store %struct.sdebug_defer* %0, %struct.sdebug_defer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sdebug_defer*, %struct.sdebug_defer** %3, align 8
  %6 = icmp ne %struct.sdebug_defer* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %26

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SDEB_DEFER_HRT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load %struct.sdebug_defer*, %struct.sdebug_defer** %3, align 8
  %14 = getelementptr inbounds %struct.sdebug_defer, %struct.sdebug_defer* %13, i32 0, i32 1
  %15 = call i32 @hrtimer_cancel(i32* %14)
  br label %26

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SDEB_DEFER_WQ, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.sdebug_defer*, %struct.sdebug_defer** %3, align 8
  %22 = getelementptr inbounds %struct.sdebug_defer, %struct.sdebug_defer* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @cancel_work_sync(i32* %23)
  br label %25

25:                                               ; preds = %20, %16
  br label %26

26:                                               ; preds = %7, %25, %12
  ret void
}

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
