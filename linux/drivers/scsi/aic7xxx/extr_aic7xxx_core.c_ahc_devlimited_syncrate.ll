; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_devlimited_syncrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_devlimited_syncrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_syncrate = type { i32 }
%struct.ahc_softc = type { i32 }
%struct.ahc_initiator_tinfo = type { %struct.ahc_transinfo, %struct.ahc_transinfo }
%struct.ahc_transinfo = type { i64, i64, i32 }

@AHC_ULTRA2 = common dso_local global i32 0, align 4
@SBLKCTL = common dso_local global i32 0, align 4
@ENAB40 = common dso_local global i32 0, align 4
@SSTAT2 = common dso_local global i32 0, align 4
@EXP_ACTIVE = common dso_local global i32 0, align 4
@AHC_SYNCRATE_DT = common dso_local global i32 0, align 4
@AHC_SYNCRATE_ULTRA = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@AHC_ULTRA = common dso_local global i32 0, align 4
@AHC_SYNCRATE_FAST = common dso_local global i32 0, align 4
@ROLE_TARGET = common dso_local global i64 0, align 8
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i64 0, align 8
@AHC_SYNCRATE_ULTRA2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ahc_syncrate* (%struct.ahc_softc*, %struct.ahc_initiator_tinfo*, i32*, i32*, i64)* @ahc_devlimited_syncrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ahc_syncrate* @ahc_devlimited_syncrate(%struct.ahc_softc* %0, %struct.ahc_initiator_tinfo* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.ahc_syncrate*, align 8
  %7 = alloca %struct.ahc_softc*, align 8
  %8 = alloca %struct.ahc_initiator_tinfo*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ahc_transinfo*, align 8
  %13 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %7, align 8
  store %struct.ahc_initiator_tinfo* %1, %struct.ahc_initiator_tinfo** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %15 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AHC_ULTRA2, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %5
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %22 = load i32, i32* @SBLKCTL, align 4
  %23 = call i32 @ahc_inb(%struct.ahc_softc* %21, i32 %22)
  %24 = load i32, i32* @ENAB40, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %29 = load i32, i32* @SSTAT2, align 4
  %30 = call i32 @ahc_inb(%struct.ahc_softc* %28, i32 %29)
  %31 = load i32, i32* @EXP_ACTIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @AHC_SYNCRATE_DT, align 4
  store i32 %35, i32* %13, align 4
  br label %43

36:                                               ; preds = %27, %20
  %37 = load i32, i32* @AHC_SYNCRATE_ULTRA, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %39 = xor i32 %38, -1
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %34
  br label %56

44:                                               ; preds = %5
  %45 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %46 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AHC_ULTRA, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @AHC_SYNCRATE_ULTRA, align 4
  store i32 %52, i32* %13, align 4
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @AHC_SYNCRATE_FAST, align 4
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @ROLE_TARGET, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %8, align 8
  %62 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %61, i32 0, i32 1
  store %struct.ahc_transinfo* %62, %struct.ahc_transinfo** %12, align 8
  br label %66

63:                                               ; preds = %56
  %64 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %8, align 8
  %65 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %64, i32 0, i32 0
  store %struct.ahc_transinfo* %65, %struct.ahc_transinfo** %12, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.ahc_transinfo*, %struct.ahc_transinfo** %12, align 8
  %68 = getelementptr inbounds %struct.ahc_transinfo, %struct.ahc_transinfo* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %69
  store i32 %72, i32* %70, align 4
  %73 = load %struct.ahc_transinfo*, %struct.ahc_transinfo** %12, align 8
  %74 = getelementptr inbounds %struct.ahc_transinfo, %struct.ahc_transinfo* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MSG_EXT_WDTR_BUS_8_BIT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %66
  %79 = load i32, i32* %13, align 4
  %80 = load i64, i64* @AHC_SYNCRATE_ULTRA2, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @max(i32 %79, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %84 = xor i32 %83, -1
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %78, %66
  %89 = load %struct.ahc_transinfo*, %struct.ahc_transinfo** %12, align 8
  %90 = getelementptr inbounds %struct.ahc_transinfo, %struct.ahc_transinfo* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32*, i32** %9, align 8
  store i32 0, i32* %94, align 4
  %95 = load i32*, i32** %10, align 8
  store i32 0, i32* %95, align 4
  store %struct.ahc_syncrate* null, %struct.ahc_syncrate** %6, align 8
  br label %110

96:                                               ; preds = %88
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ahc_transinfo*, %struct.ahc_transinfo** %12, align 8
  %100 = getelementptr inbounds %struct.ahc_transinfo, %struct.ahc_transinfo* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @max(i32 %98, i32 %102)
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  %105 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call %struct.ahc_syncrate* @ahc_find_syncrate(%struct.ahc_softc* %105, i32* %106, i32* %107, i32 %108)
  store %struct.ahc_syncrate* %109, %struct.ahc_syncrate** %6, align 8
  br label %110

110:                                              ; preds = %96, %93
  %111 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %6, align 8
  ret %struct.ahc_syncrate* %111
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.ahc_syncrate* @ahc_find_syncrate(%struct.ahc_softc*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
