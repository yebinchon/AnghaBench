; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_wait_cmv_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_wait_cmv_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i64 }

@ACK_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"wait_event_timeout : %d ms\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*)* @wait_cmv_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_cmv_ack(%struct.uea_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  %5 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %6 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %7 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @ACK_TIMEOUT, align 4
  %10 = call i32 @uea_wait(%struct.uea_softc* %5, i64 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %14 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @jiffies_to_msecs(i32 %15)
  %17 = call i32 @uea_dbg(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %31

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ %27, %25 ], [ 0, %28 ]
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %20
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @uea_wait(%struct.uea_softc*, i64, i32) #1

declare dso_local i32 @uea_dbg(i32, i8*, i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
