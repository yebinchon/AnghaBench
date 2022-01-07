; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_probe_scbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_probe_scbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_MODE_UNKNOWN_MSK = common dso_local global i32 0, align 4
@AHD_MODE_CFG_MSK = common dso_local global i32 0, align 4
@AHD_SCB_MAX = common dso_local global i32 0, align 4
@SCB_BASE = common dso_local global i64 0, align 8
@SCB_CONTROL = common dso_local global i64 0, align 8
@MK_MESSAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*)* @ahd_probe_scbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_probe_scbs(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %5 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %6 = load i32, i32* @AHD_MODE_UNKNOWN_MSK, align 4
  %7 = load i32, i32* @AHD_MODE_CFG_MSK, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @AHD_MODE_UNKNOWN_MSK, align 4
  %11 = load i32, i32* @AHD_MODE_CFG_MSK, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %5, i32 %9, i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %60, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @AHD_SCB_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %63

19:                                               ; preds = %15
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %20, i32 %21)
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %24 = load i64, i64* @SCB_BASE, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ahd_outw(%struct.ahd_softc* %23, i64 %24, i32 %25)
  store i32 2, i32* %4, align 4
  br label %27

27:                                               ; preds = %37, %19
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 64
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %32 = load i64, i64* @SCB_BASE, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @ahd_outb(%struct.ahd_softc* %31, i64 %35, i32 0)
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %27

40:                                               ; preds = %27
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %42 = load i64, i64* @SCB_CONTROL, align 8
  %43 = load i32, i32* @MK_MESSAGE, align 4
  %44 = call i32 @ahd_outb(%struct.ahd_softc* %41, i64 %42, i32 %43)
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %46 = load i64, i64* @SCB_BASE, align 8
  %47 = call i32 @ahd_inw_scbram(%struct.ahd_softc* %45, i64 %46)
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %63

51:                                               ; preds = %40
  %52 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %53 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %52, i32 0)
  %54 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %55 = load i64, i64* @SCB_BASE, align 8
  %56 = call i32 @ahd_inw_scbram(%struct.ahd_softc* %54, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %15

63:                                               ; preds = %58, %50, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i64, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i64, i32) #1

declare dso_local i32 @ahd_inw_scbram(%struct.ahd_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
