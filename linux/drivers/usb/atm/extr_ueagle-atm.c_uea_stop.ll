; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"kthread finish with status %d\0A\00", align 1
@UEA_SET_MODE = common dso_local global i32 0, align 4
@UEA_LOOPBACK_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uea_softc*)* @uea_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uea_stop(%struct.uea_softc* %0) #0 {
  %2 = alloca %struct.uea_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.uea_softc* %0, %struct.uea_softc** %2, align 8
  %4 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %5 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %4)
  %6 = call i32 @uea_enters(i32 %5)
  %7 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @kthread_stop(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %12 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @uea_dbg(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %16 = load i32, i32* @UEA_SET_MODE, align 4
  %17 = load i32, i32* @UEA_LOOPBACK_ON, align 4
  %18 = call i32 @uea_request(%struct.uea_softc* %15, i32 %16, i32 %17, i32 0, i32* null)
  %19 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %20 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @usb_kill_urb(%struct.TYPE_3__* %21)
  %23 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %24 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kfree(i32 %27)
  %29 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %30 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @usb_free_urb(%struct.TYPE_3__* %31)
  %33 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %34 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %33, i32 0, i32 1
  %35 = call i32 @flush_work(i32* %34)
  %36 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %37 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @release_firmware(i32 %38)
  %40 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %41 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %40)
  %42 = call i32 @uea_leaves(i32 %41)
  ret void
}

declare dso_local i32 @uea_enters(i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @uea_dbg(i32, i8*, i32) #1

declare dso_local i32 @uea_request(%struct.uea_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_3__*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @uea_leaves(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
