; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_kthread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i32 (%struct.uea_softc*)*, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uea_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_kthread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.uea_softc*
  store %struct.uea_softc* %6, %struct.uea_softc** %3, align 8
  %7 = load i32, i32* @EAGAIN, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @set_freezable()
  %10 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %11 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %10)
  %12 = call i32 @uea_enters(i32 %11)
  br label %13

13:                                               ; preds = %46, %1
  %14 = call i32 (...) @kthread_should_stop()
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %22 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %17
  %26 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %27 = call i32 @uea_start_reset(%struct.uea_softc* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %33 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %32, i32 0, i32 0
  %34 = load i32 (%struct.uea_softc*)*, i32 (%struct.uea_softc*)** %33, align 8
  %35 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %36 = call i32 %34(%struct.uea_softc* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %44 = call i32 @msecs_to_jiffies(i32 1000)
  %45 = call i32 @uea_wait(%struct.uea_softc* %43, i32 0, i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = call i32 (...) @try_to_freeze()
  br label %13

48:                                               ; preds = %13
  %49 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %50 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %49)
  %51 = call i32 @uea_leaves(i32 %50)
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @uea_enters(i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @uea_start_reset(%struct.uea_softc*) #1

declare dso_local i32 @uea_wait(%struct.uea_softc*, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @uea_leaves(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
