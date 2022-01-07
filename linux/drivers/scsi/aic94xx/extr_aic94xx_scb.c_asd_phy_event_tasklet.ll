; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_phy_event_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_phy_event_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { %struct.asd_phy*, %struct.sas_ha_struct }
%struct.asd_phy = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sas_ha_struct = type { i32 (%struct.TYPE_6__*, i32)* }
%struct.done_list_struct = type { i32* }

@DL_PHY_MASK = common dso_local global i32 0, align 4
@PHY_EVENTS_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"phy%d: device unplugged\0A\00", align 1
@PHYE_LOSS_OF_SIGNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"phy%d device plugged: lrate:0x%x, proto:0x%x\0A\00", align 1
@PHYE_OOB_DONE = common dso_local global i32 0, align 4
@PHYE_SPINUP_HOLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"phy%d error while OOB: oob status:0x%x\0A\00", align 1
@PHYE_OOB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ascb*, %struct.done_list_struct*)* @asd_phy_event_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_phy_event_tasklet(%struct.asd_ascb* %0, %struct.done_list_struct* %1) #0 {
  %3 = alloca %struct.asd_ascb*, align 8
  %4 = alloca %struct.done_list_struct*, align 8
  %5 = alloca %struct.asd_ha_struct*, align 8
  %6 = alloca %struct.sas_ha_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.asd_phy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.asd_ascb* %0, %struct.asd_ascb** %3, align 8
  store %struct.done_list_struct* %1, %struct.done_list_struct** %4, align 8
  %11 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %12 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %11, i32 0, i32 0
  %13 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %12, align 8
  store %struct.asd_ha_struct* %13, %struct.asd_ha_struct** %5, align 8
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %15 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %14, i32 0, i32 1
  store %struct.sas_ha_struct* %15, %struct.sas_ha_struct** %6, align 8
  %16 = load %struct.done_list_struct*, %struct.done_list_struct** %4, align 8
  %17 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DL_PHY_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %24 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %23, i32 0, i32 0
  %25 = load %struct.asd_phy*, %struct.asd_phy** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %25, i64 %27
  store %struct.asd_phy* %28, %struct.asd_phy** %8, align 8
  %29 = load %struct.done_list_struct*, %struct.done_list_struct** %4, align 8
  %30 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PHY_EVENTS_STATUS, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.done_list_struct*, %struct.done_list_struct** %4, align 8
  %37 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %114 [
    i32 131, label %42
    i32 130, label %58
    i32 128, label %82
    i32 132, label %93
    i32 129, label %93
  ]

42:                                               ; preds = %2
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @asd_turn_led(%struct.asd_ha_struct* %45, i32 %46, i32 0)
  %48 = load %struct.asd_phy*, %struct.asd_phy** %8, align 8
  %49 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %48, i32 0, i32 0
  %50 = call i32 @sas_phy_disconnected(%struct.TYPE_6__* %49)
  %51 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %52 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %52, align 8
  %54 = load %struct.asd_phy*, %struct.asd_phy** %8, align 8
  %55 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %54, i32 0, i32 0
  %56 = load i32, i32* @PHYE_LOSS_OF_SIGNAL, align 4
  %57 = call i32 %53(%struct.TYPE_6__* %55, i32 %56)
  br label %114

58:                                               ; preds = %2
  %59 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @asd_turn_led(%struct.asd_ha_struct* %59, i32 %60, i32 1)
  %62 = load %struct.asd_phy*, %struct.asd_phy** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @get_lrate_mode(%struct.asd_phy* %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.asd_phy*, %struct.asd_phy** %8, align 8
  %67 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.asd_phy*, %struct.asd_phy** %8, align 8
  %71 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %69, i32 %73)
  %75 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %76 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %76, align 8
  %78 = load %struct.asd_phy*, %struct.asd_phy** %8, align 8
  %79 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %78, i32 0, i32 0
  %80 = load i32, i32* @PHYE_OOB_DONE, align 4
  %81 = call i32 %77(%struct.TYPE_6__* %79, i32 %80)
  br label %114

82:                                               ; preds = %2
  %83 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @asd_turn_led(%struct.asd_ha_struct* %83, i32 %84, i32 1)
  %86 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %87 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %87, align 8
  %89 = load %struct.asd_phy*, %struct.asd_phy** %8, align 8
  %90 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %89, i32 0, i32 0
  %91 = load i32, i32* @PHYE_SPINUP_HOLD, align 4
  %92 = call i32 %88(%struct.TYPE_6__* %90, i32 %91)
  br label %114

93:                                               ; preds = %2, %2
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.done_list_struct*, %struct.done_list_struct** %4, align 8
  %96 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %99)
  %101 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @asd_turn_led(%struct.asd_ha_struct* %101, i32 %102, i32 0)
  %104 = load %struct.asd_phy*, %struct.asd_phy** %8, align 8
  %105 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %104, i32 0, i32 0
  %106 = call i32 @sas_phy_disconnected(%struct.TYPE_6__* %105)
  %107 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %108 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %107, i32 0, i32 0
  %109 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %108, align 8
  %110 = load %struct.asd_phy*, %struct.asd_phy** %8, align 8
  %111 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %110, i32 0, i32 0
  %112 = load i32, i32* @PHYE_OOB_ERROR, align 4
  %113 = call i32 %109(%struct.TYPE_6__* %111, i32 %112)
  br label %114

114:                                              ; preds = %2, %93, %82, %58, %42
  ret void
}

declare dso_local i32 @ASD_DPRINTK(i8*, i32, ...) #1

declare dso_local i32 @asd_turn_led(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @sas_phy_disconnected(%struct.TYPE_6__*) #1

declare dso_local i32 @get_lrate_mode(%struct.asd_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
