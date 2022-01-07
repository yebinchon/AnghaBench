; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_normal_mode_setup_3xxx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_normal_mode_setup_3xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.rt2800_drv_data* }
%struct.rt2800_drv_data = type { i32 }

@RFCSR17_TX_LO1_EN = common dso_local global i32 0, align 4
@RT3070 = common dso_local global i32 0, align 4
@RT3071 = common dso_local global i32 0, align 4
@REV_RT3071E = common dso_local global i32 0, align 4
@RT3090 = common dso_local global i32 0, align 4
@REV_RT3090E = common dso_local global i32 0, align 4
@RT3390 = common dso_local global i32 0, align 4
@REV_RT3390E = common dso_local global i32 0, align 4
@RFCSR17_R = common dso_local global i32 0, align 4
@RFCSR17_TXMIXER_GAIN = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_RXPATH = common dso_local global i32 0, align 4
@BBP138_RX_ADC1 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_TXPATH = common dso_local global i32 0, align 4
@BBP138_TX_DAC1 = common dso_local global i32 0, align 4
@REV_RT3070F = common dso_local global i32 0, align 4
@RFCSR27_R1 = common dso_local global i32 0, align 4
@RFCSR27_R2 = common dso_local global i32 0, align 4
@RFCSR27_R3 = common dso_local global i32 0, align 4
@RFCSR27_R4 = common dso_local global i32 0, align 4
@RFCSR1_RF_BLOCK_EN = common dso_local global i32 0, align 4
@RFCSR1_RX0_PD = common dso_local global i32 0, align 4
@RFCSR1_TX0_PD = common dso_local global i32 0, align 4
@RFCSR1_RX1_PD = common dso_local global i32 0, align 4
@RFCSR1_TX1_PD = common dso_local global i32 0, align 4
@RFCSR15_TX_LO2_EN = common dso_local global i32 0, align 4
@RFCSR20_RX_LO1_EN = common dso_local global i32 0, align 4
@RFCSR21_RX_LO2_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_normal_mode_setup_3xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_normal_mode_setup_3xxx(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.rt2800_drv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 0
  %10 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  store %struct.rt2800_drv_data* %10, %struct.rt2800_drv_data** %3, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %11, i32 17)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @RFCSR17_TX_LO1_EN, align 4
  %14 = call i32 @rt2x00_set_field8(i32* %5, i32 %13, i32 0)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = load i32, i32* @RT3070, align 4
  %17 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %1
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = load i32, i32* @RT3071, align 4
  %22 = load i32, i32* @REV_RT3071E, align 4
  %23 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %19
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = load i32, i32* @RT3090, align 4
  %28 = load i32, i32* @REV_RT3090E, align 4
  %29 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = load i32, i32* @RT3390, align 4
  %34 = load i32, i32* @REV_RT3390E, align 4
  %35 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31, %25, %19, %1
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %39 = call i32 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @RFCSR17_R, align 4
  %43 = call i32 @rt2x00_set_field8(i32* %5, i32 %42, i32 1)
  br label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = load i32, i32* @RT3070, align 4
  %48 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 2
  store i32 %51, i32* %4, align 4
  %52 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %53 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %45
  %58 = load i32, i32* @RFCSR17_TXMIXER_GAIN, align 4
  %59 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %60 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @rt2x00_set_field8(i32* %5, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %45
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %64, i32 17, i32 %65)
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %68 = load i32, i32* @RT3090, align 4
  %69 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %63
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %73 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %72, i32 138)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %75 = load i32, i32* @EEPROM_NIC_CONF0, align 4
  %76 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %74, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %79 = call i32 @rt2x00_get_field16(i32 %77, i32 %78)
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* @BBP138_RX_ADC1, align 4
  %83 = call i32 @rt2x00_set_field8(i32* %6, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %81, %71
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @EEPROM_NIC_CONF0_TXPATH, align 4
  %87 = call i32 @rt2x00_get_field16(i32 %85, i32 %86)
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @BBP138_TX_DAC1, align 4
  %91 = call i32 @rt2x00_set_field8(i32* %6, i32 %90, i32 1)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %93, i32 138, i32 %94)
  br label %96

96:                                               ; preds = %92, %63
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %98 = load i32, i32* @RT3070, align 4
  %99 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %96
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %103 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %102, i32 27)
  store i32 %103, i32* %5, align 4
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %105 = load i32, i32* @RT3070, align 4
  %106 = load i32, i32* @REV_RT3070F, align 4
  %107 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %104, i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @RFCSR27_R1, align 4
  %111 = call i32 @rt2x00_set_field8(i32* %5, i32 %110, i32 3)
  br label %115

112:                                              ; preds = %101
  %113 = load i32, i32* @RFCSR27_R1, align 4
  %114 = call i32 @rt2x00_set_field8(i32* %5, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32, i32* @RFCSR27_R2, align 4
  %117 = call i32 @rt2x00_set_field8(i32* %5, i32 %116, i32 0)
  %118 = load i32, i32* @RFCSR27_R3, align 4
  %119 = call i32 @rt2x00_set_field8(i32* %5, i32 %118, i32 0)
  %120 = load i32, i32* @RFCSR27_R4, align 4
  %121 = call i32 @rt2x00_set_field8(i32* %5, i32 %120, i32 0)
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %122, i32 27, i32 %123)
  br label %178

125:                                              ; preds = %96
  %126 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %127 = load i32, i32* @RT3071, align 4
  %128 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %125
  %131 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %132 = load i32, i32* @RT3090, align 4
  %133 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %137 = load i32, i32* @RT3390, align 4
  %138 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %177

140:                                              ; preds = %135, %130, %125
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %142 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %141, i32 1)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* @RFCSR1_RF_BLOCK_EN, align 4
  %144 = call i32 @rt2x00_set_field8(i32* %5, i32 %143, i32 1)
  %145 = load i32, i32* @RFCSR1_RX0_PD, align 4
  %146 = call i32 @rt2x00_set_field8(i32* %5, i32 %145, i32 0)
  %147 = load i32, i32* @RFCSR1_TX0_PD, align 4
  %148 = call i32 @rt2x00_set_field8(i32* %5, i32 %147, i32 0)
  %149 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %150 = call i32 @rt2x00_set_field8(i32* %5, i32 %149, i32 1)
  %151 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %152 = call i32 @rt2x00_set_field8(i32* %5, i32 %151, i32 1)
  %153 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %153, i32 1, i32 %154)
  %156 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %157 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %156, i32 15)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* @RFCSR15_TX_LO2_EN, align 4
  %159 = call i32 @rt2x00_set_field8(i32* %5, i32 %158, i32 0)
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %160, i32 15, i32 %161)
  %163 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %164 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %163, i32 20)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* @RFCSR20_RX_LO1_EN, align 4
  %166 = call i32 @rt2x00_set_field8(i32* %5, i32 %165, i32 0)
  %167 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %167, i32 20, i32 %168)
  %170 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %171 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %170, i32 21)
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* @RFCSR21_RX_LO2_EN, align 4
  %173 = call i32 @rt2x00_set_field8(i32* %5, i32 %172, i32 0)
  %174 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %174, i32 21, i32 %175)
  br label %177

177:                                              ; preds = %140, %135
  br label %178

178:                                              ; preds = %177, %115
  ret void
}

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
