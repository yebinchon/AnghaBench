; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_default_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32, i32 }
%struct.ahd_devinfo = type { i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ahd_tmode_tstate = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"%s: unable to allocate ahd_tmode_tstate.  Failing attach\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AHD_NUM_TARGETS = common dso_local global i32 0, align 4
@AHD_SYNCRATE_160 = common dso_local global i32 0, align 4
@MAX_OFFSET = common dso_local global i32 0, align 4
@MSG_EXT_PPR_RD_STRM = common dso_local global i32 0, align 4
@MSG_EXT_PPR_WR_FLOW = common dso_local global i32 0, align 4
@MSG_EXT_PPR_HOLD_MCS = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@MSG_EXT_PPR_QAS_REQ = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@AHD_RTI = common dso_local global i32 0, align 4
@MSG_EXT_PPR_RTI = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHD_TRANS_CUR = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AHD_SYNCRATE_DT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_default_config(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahd_devinfo, align 4
  %6 = alloca %struct.ahd_initiator_tinfo*, align 8
  %7 = alloca %struct.ahd_tmode_tstate*, align 8
  %8 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %9, i32 0, i32 0
  store i32 7, i32* %10, align 4
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @ahd_alloc_tstate(%struct.ahd_softc* %11, i32 %14, i8 signext 65)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %19 = call i32 @ahd_name(%struct.ahd_softc* %18)
  %20 = call i32 @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %2, align 4
  br label %139

22:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %135, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AHD_NUM_TARGETS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %138

27:                                               ; preds = %23
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %28, i8 signext 65, i32 %31, i32 %32, %struct.ahd_tmode_tstate** %7)
  store %struct.ahd_initiator_tinfo* %33, %struct.ahd_initiator_tinfo** %6, align 8
  %34 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %35 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 4, i32* %36, align 4
  %37 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %38 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 4, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 1, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %7, align 8
  %49 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @AHD_SYNCRATE_160, align 4
  %58 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %59 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @MAX_OFFSET, align 4
  %62 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %63 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @MSG_EXT_PPR_RD_STRM, align 4
  %66 = load i32, i32* @MSG_EXT_PPR_WR_FLOW, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MSG_EXT_PPR_HOLD_MCS, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %77 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 4
  %79 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %80 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AHD_RTI, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %27
  %86 = load i32, i32* @MSG_EXT_PPR_RTI, align 4
  %87 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %88 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %27
  %93 = load i32, i32* @MSG_EXT_WDTR_BUS_16_BIT, align 4
  %94 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %95 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 4
  %97 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %98 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 2, i32* %99, align 4
  %100 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %101 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 2, i32* %102, align 4
  %103 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %104 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 2, i32* %105, align 4
  %106 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %107 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i32 2, i32* %108, align 4
  %109 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %110 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %114 = load i32, i32* @ROLE_INITIATOR, align 4
  %115 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %5, i32 %111, i32 %112, i32 %113, i8 signext 65, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %7, align 8
  %119 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %123 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %124 = load i32, i32* @AHD_TRANS_CUR, align 4
  %125 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @TRUE, align 4
  %128 = call i32 @ahd_set_width(%struct.ahd_softc* %122, %struct.ahd_devinfo* %5, i32 %123, i32 %126, i32 %127)
  %129 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %130 = load i32, i32* @AHD_TRANS_CUR, align 4
  %131 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @TRUE, align 4
  %134 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %129, %struct.ahd_devinfo* %5, i32 0, i32 0, i32 0, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %92
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %23

138:                                              ; preds = %23
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %17
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32* @ahd_alloc_tstate(%struct.ahd_softc*, i32, i8 signext) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i8 signext, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i8 signext, i32) #1

declare dso_local i32 @ahd_set_width(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
