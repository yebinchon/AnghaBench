; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_read_cmv_e1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_read_cmv_e1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i32 }

@E1_MEMACCESS = common dso_local global i32 0, align 4
@E1_REQUESTREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"reading cmv failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*, i32, i32, i32*)* @uea_read_cmv_e1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_read_cmv_e1(%struct.uea_softc* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.uea_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.uea_softc* %0, %struct.uea_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.uea_softc*, %struct.uea_softc** %5, align 8
  %11 = load i32, i32* @E1_MEMACCESS, align 4
  %12 = load i32, i32* @E1_REQUESTREAD, align 4
  %13 = call i32 @E1_MAKEFUNCTION(i32 %11, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @uea_cmv_e1(%struct.uea_softc* %10, i32 %13, i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.uea_softc*, %struct.uea_softc** %5, align 8
  %21 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %20)
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @uea_err(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %29

24:                                               ; preds = %4
  %25 = load %struct.uea_softc*, %struct.uea_softc** %5, align 8
  %26 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local i32 @uea_cmv_e1(%struct.uea_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @E1_MAKEFUNCTION(i32, i32) #1

declare dso_local i32 @uea_err(i32, i8*, i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
