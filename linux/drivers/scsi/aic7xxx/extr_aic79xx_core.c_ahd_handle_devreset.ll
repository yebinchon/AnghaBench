; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_devreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_devreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { %struct.ahd_tmode_tstate** }
%struct.ahd_tmode_tstate = type { %struct.ahd_tmode_lstate** }
%struct.ahd_tmode_lstate = type { i32 }
%struct.ahd_devinfo = type { i64, i32, i32, i32 }

@SCB_LIST_NULL = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHD_TRANS_CUR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CAM_SEL_TIMEOUT = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@AC_SENT_BDR = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s: %s on %c:%d. %d SCBs aborted\0A\00", align 1
@AHD_NUM_LUNS = common dso_local global i64 0, align 8
@MSG_BUS_DEV_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_devinfo*, i64, i64, i8*, i32)* @ahd_handle_devreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_handle_devreset(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1, i64 %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.ahd_softc*, align 8
  %8 = alloca %struct.ahd_devinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %7, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %15 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %16 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %19 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @SCB_LIST_NULL, align 4
  %23 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %24 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @ahd_abort_scbs(%struct.ahd_softc* %14, i32 %17, i32 %20, i64 %21, i32 %22, i32 %25, i64 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %29 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %30 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %31 = load i32, i32* @AHD_TRANS_CUR, align 4
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @ahd_set_width(%struct.ahd_softc* %28, %struct.ahd_devinfo* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %35 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %36 = load i32, i32* @AHD_TRANS_CUR, align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %34, %struct.ahd_devinfo* %35, i32 0, i32 0, i32 0, i32 %36, i32 %37)
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @CAM_SEL_TIMEOUT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %6
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %44 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %45 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %48 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %51 = load i32, i32* @AC_SENT_BDR, align 4
  %52 = call i32 @ahd_send_async(%struct.ahd_softc* %43, i32 %46, i32 %49, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %42, %6
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i64, i64* @bootverbose, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %61 = call i32 @ahd_name(%struct.ahd_softc* %60)
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %64 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %67 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %61, i8* %62, i32 %65, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %59, %56, %53
  ret void
}

declare dso_local i32 @ahd_abort_scbs(%struct.ahd_softc*, i32, i32, i64, i32, i32, i64) #1

declare dso_local i32 @ahd_set_width(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_send_async(%struct.ahd_softc*, i32, i32, i64, i32) #1

declare dso_local i32 @printk(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
