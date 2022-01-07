; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_build_control_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_build_control_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { i32, %struct.scb*, %struct.TYPE_5__* }
%struct.scb = type { %struct.TYPE_6__, %struct.control_phy }
%struct.TYPE_6__ = type { i32 }
%struct.control_phy = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.asd_phy* }
%struct.asd_phy = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@CONTROL_PHY = common dso_local global i32 0, align 4
@HOTPLUG_DELAY_TIMEOUT = common dso_local global i32 0, align 4
@PHY_ROLE_INITIATOR = common dso_local global i32 0, align 4
@SAS_PROTOCOL_ALL = common dso_local global i32 0, align 4
@PHY_ROLE_TARGET = common dso_local global i32 0, align 4
@FUNCTION_MASK_DEFAULT = common dso_local global i32 0, align 4
@ASD_SATA_SPINUP_HOLD = common dso_local global i32 0, align 4
@SPINUP_HOLD_DIS = common dso_local global i32 0, align 4
@control_phy_tasklet_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asd_build_control_phy(%struct.asd_ascb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.asd_ascb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.asd_phy*, align 8
  %8 = alloca %struct.scb*, align 8
  %9 = alloca %struct.control_phy*, align 8
  store %struct.asd_ascb* %0, %struct.asd_ascb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %11 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.asd_phy*, %struct.asd_phy** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %14, i64 %16
  store %struct.asd_phy* %17, %struct.asd_phy** %7, align 8
  %18 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %19 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %18, i32 0, i32 1
  %20 = load %struct.scb*, %struct.scb** %19, align 8
  store %struct.scb* %20, %struct.scb** %8, align 8
  %21 = load %struct.scb*, %struct.scb** %8, align 8
  %22 = getelementptr inbounds %struct.scb, %struct.scb* %21, i32 0, i32 1
  store %struct.control_phy* %22, %struct.control_phy** %9, align 8
  %23 = load i32, i32* @CONTROL_PHY, align 4
  %24 = load %struct.scb*, %struct.scb** %8, align 8
  %25 = getelementptr inbounds %struct.scb, %struct.scb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.control_phy*, %struct.control_phy** %9, align 8
  %29 = getelementptr inbounds %struct.control_phy, %struct.control_phy* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.control_phy*, %struct.control_phy** %9, align 8
  %32 = getelementptr inbounds %struct.control_phy, %struct.control_phy* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %103 [
    i32 129, label %34
    i32 130, label %34
    i32 128, label %77
  ]

34:                                               ; preds = %3, %3
  %35 = load i32, i32* @HOTPLUG_DELAY_TIMEOUT, align 4
  %36 = load %struct.control_phy*, %struct.control_phy** %9, align 8
  %37 = getelementptr inbounds %struct.control_phy, %struct.control_phy* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load %struct.control_phy*, %struct.control_phy** %9, align 8
  %39 = getelementptr inbounds %struct.control_phy, %struct.control_phy* %38, i32 0, i32 6
  %40 = load %struct.asd_phy*, %struct.asd_phy** %7, align 8
  %41 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = call i32 @set_speed_mask(i32* %39, %struct.TYPE_8__* %42)
  %44 = load %struct.asd_phy*, %struct.asd_phy** %7, align 8
  %45 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PHY_ROLE_INITIATOR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %34
  %51 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %52 = shl i32 %51, 4
  %53 = load %struct.control_phy*, %struct.control_phy** %9, align 8
  %54 = getelementptr inbounds %struct.control_phy, %struct.control_phy* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %74

55:                                               ; preds = %34
  %56 = load %struct.asd_phy*, %struct.asd_phy** %7, align 8
  %57 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PHY_ROLE_TARGET, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %64 = load %struct.control_phy*, %struct.control_phy** %9, align 8
  %65 = getelementptr inbounds %struct.control_phy, %struct.control_phy* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %73

66:                                               ; preds = %55
  %67 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %68 = shl i32 %67, 4
  %69 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.control_phy*, %struct.control_phy** %9, align 8
  %72 = getelementptr inbounds %struct.control_phy, %struct.control_phy* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %62
  br label %74

74:                                               ; preds = %73, %50
  %75 = load %struct.control_phy*, %struct.control_phy** %9, align 8
  %76 = getelementptr inbounds %struct.control_phy, %struct.control_phy* %75, i32 0, i32 3
  store i32 10, i32* %76, align 4
  br label %77

77:                                               ; preds = %3, %74
  %78 = load i32, i32* @FUNCTION_MASK_DEFAULT, align 4
  %79 = load %struct.control_phy*, %struct.control_phy** %9, align 8
  %80 = getelementptr inbounds %struct.control_phy, %struct.control_phy* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.asd_phy*, %struct.asd_phy** %7, align 8
  %82 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ASD_SATA_SPINUP_HOLD, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %77
  %90 = load i32, i32* @SPINUP_HOLD_DIS, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.control_phy*, %struct.control_phy** %9, align 8
  %93 = getelementptr inbounds %struct.control_phy, %struct.control_phy* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %102

96:                                               ; preds = %77
  %97 = load i32, i32* @SPINUP_HOLD_DIS, align 4
  %98 = load %struct.control_phy*, %struct.control_phy** %9, align 8
  %99 = getelementptr inbounds %struct.control_phy, %struct.control_phy* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %89
  br label %103

103:                                              ; preds = %102, %3
  %104 = call i32 @cpu_to_le16(i32 65535)
  %105 = load %struct.control_phy*, %struct.control_phy** %9, align 8
  %106 = getelementptr inbounds %struct.control_phy, %struct.control_phy* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @control_phy_tasklet_complete, align 4
  %108 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %109 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  ret void
}

declare dso_local i32 @set_speed_mask(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
