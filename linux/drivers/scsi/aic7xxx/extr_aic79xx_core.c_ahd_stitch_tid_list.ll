; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_stitch_tid_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_stitch_tid_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_MODE_SCSI_MSK = common dso_local global i32 0, align 4
@WAITING_TID_HEAD = common dso_local global i32 0, align 4
@SCB_NEXT2 = common dso_local global i32 0, align 4
@WAITING_TID_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, i32, i32, i32)* @ahd_stitch_tid_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_stitch_tid_list(%struct.ahd_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %10 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %11 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %12 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %9, i32 %10, i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @SCBID_IS_NULL(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @SCBID_IS_NULL(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %22 = load i32, i32* @WAITING_TID_HEAD, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ahd_outw(%struct.ahd_softc* %21, i32 %22, i32 %23)
  br label %33

25:                                               ; preds = %16
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %26, i32 %27)
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %30 = load i32, i32* @SCB_NEXT2, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ahd_outw(%struct.ahd_softc* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %20
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @SCBID_IS_NULL(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %39 = load i32, i32* @WAITING_TID_TAIL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ahd_outw(%struct.ahd_softc* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %33
  br label %77

43:                                               ; preds = %4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @SCBID_IS_NULL(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %49 = load i32, i32* @WAITING_TID_HEAD, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @ahd_outw(%struct.ahd_softc* %48, i32 %49, i32 %50)
  br label %60

52:                                               ; preds = %43
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %53, i32 %54)
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %57 = load i32, i32* @SCB_NEXT2, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ahd_outw(%struct.ahd_softc* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %61, i32 %62)
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %65 = load i32, i32* @SCB_NEXT2, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ahd_outw(%struct.ahd_softc* %64, i32 %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @SCBID_IS_NULL(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %73 = load i32, i32* @WAITING_TID_TAIL, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @ahd_outw(%struct.ahd_softc* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %60
  br label %77

77:                                               ; preds = %76, %42
  ret void
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @SCBID_IS_NULL(i32) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
