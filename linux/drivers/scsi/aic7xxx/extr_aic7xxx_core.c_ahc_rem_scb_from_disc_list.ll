; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_rem_scb_from_disc_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_rem_scb_from_disc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }

@SCBPTR = common dso_local global i32 0, align 4
@SCB_NEXT = common dso_local global i32 0, align 4
@SCB_CONTROL = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i64 0, align 8
@DISCONNECTED_SCBH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ahc_softc*, i64, i64)* @ahc_rem_scb_from_disc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ahc_rem_scb_from_disc_list(%struct.ahc_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %9 = load i32, i32* @SCBPTR, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @ahc_outb(%struct.ahc_softc* %8, i32 %9, i64 %10)
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %13 = load i32, i32* @SCB_NEXT, align 4
  %14 = call i64 @ahc_inb(%struct.ahc_softc* %12, i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %16 = load i32, i32* @SCB_CONTROL, align 4
  %17 = call i32 @ahc_outb(%struct.ahc_softc* %15, i32 %16, i64 0)
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %19 = call i32 @ahc_add_curscb_to_free_list(%struct.ahc_softc* %18)
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @SCB_LIST_NULL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %25 = load i32, i32* @SCBPTR, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @ahc_outb(%struct.ahc_softc* %24, i32 %25, i64 %26)
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %29 = load i32, i32* @SCB_NEXT, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @ahc_outb(%struct.ahc_softc* %28, i32 %29, i64 %30)
  br label %37

32:                                               ; preds = %3
  %33 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %34 = load i32, i32* @DISCONNECTED_SCBH, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @ahc_outb(%struct.ahc_softc* %33, i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %32, %23
  %38 = load i64, i64* %7, align 8
  ret i64 %38
}

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i64) #1

declare dso_local i64 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_add_curscb_to_free_list(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
