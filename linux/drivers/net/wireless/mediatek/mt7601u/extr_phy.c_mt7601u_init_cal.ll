; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_init_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_init_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MT_EE_TEMPERATURE_SLOPE = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MCU_CAL_R = common dso_local global i32 0, align 4
@MCU_CAL_TXDCOC = common dso_local global i32 0, align 4
@MCU_CAL_LOFT = common dso_local global i32 0, align 4
@MCU_CAL_TXIQ = common dso_local global i32 0, align 4
@MCU_CAL_RXIQ = common dso_local global i32 0, align 4
@MCU_CAL_DPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*)* @mt7601u_init_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_init_cal(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  %6 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %7 = call i32 @mt7601u_read_bootup_temp(%struct.mt7601u_dev* %6)
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %12, %17
  %19 = load i32, i32* @MT_EE_TEMPERATURE_SLOPE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %22 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %29 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %30 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %32 = load i32, i32* @MCU_CAL_R, align 4
  %33 = call i32 @mt7601u_mcu_calibrate(%struct.mt7601u_dev* %31, i32 %32, i32 0)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %119

38:                                               ; preds = %1
  %39 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %40 = call i32 @mt7601u_rf_rr(%struct.mt7601u_dev* %39, i32 0, i32 4)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %119

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, 128
  store i32 %47, i32* %5, align 4
  %48 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @mt7601u_rf_wr(%struct.mt7601u_dev* %48, i32 0, i32 4, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %119

55:                                               ; preds = %45
  %56 = call i32 @msleep(i32 2)
  %57 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %58 = load i32, i32* @MCU_CAL_TXDCOC, align 4
  %59 = call i32 @mt7601u_mcu_calibrate(%struct.mt7601u_dev* %57, i32 %58, i32 0)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %119

64:                                               ; preds = %55
  %65 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %66 = call i32 @mt7601u_rxdc_cal(%struct.mt7601u_dev* %65)
  %67 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %68 = call i32 @mt7601u_set_bw_filter(%struct.mt7601u_dev* %67, i32 1)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %119

73:                                               ; preds = %64
  %74 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %75 = load i32, i32* @MCU_CAL_LOFT, align 4
  %76 = call i32 @mt7601u_mcu_calibrate(%struct.mt7601u_dev* %74, i32 %75, i32 0)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %119

81:                                               ; preds = %73
  %82 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %83 = load i32, i32* @MCU_CAL_TXIQ, align 4
  %84 = call i32 @mt7601u_mcu_calibrate(%struct.mt7601u_dev* %82, i32 %83, i32 0)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %119

89:                                               ; preds = %81
  %90 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %91 = load i32, i32* @MCU_CAL_RXIQ, align 4
  %92 = call i32 @mt7601u_mcu_calibrate(%struct.mt7601u_dev* %90, i32 %91, i32 0)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %119

97:                                               ; preds = %89
  %98 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %99 = load i32, i32* @MCU_CAL_DPD, align 4
  %100 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %101 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @mt7601u_mcu_calibrate(%struct.mt7601u_dev* %98, i32 %99, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %119

108:                                              ; preds = %97
  %109 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %110 = call i32 @mt7601u_rxdc_cal(%struct.mt7601u_dev* %109)
  %111 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %112 = call i32 @mt7601u_tssi_dc_gain_cal(%struct.mt7601u_dev* %111)
  %113 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %114 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %113, i32 %114, i32 %115)
  %117 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %118 = call i32 @mt7601u_temp_comp(%struct.mt7601u_dev* %117, i32 1)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %108, %106, %95, %87, %79, %71, %62, %53, %43, %36
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @mt7601u_read_bootup_temp(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_mcu_calibrate(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt7601u_rf_rr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt7601u_rf_wr(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mt7601u_rxdc_cal(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_set_bw_filter(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_tssi_dc_gain_cal(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt7601u_temp_comp(%struct.mt7601u_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
