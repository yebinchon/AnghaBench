; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_bbp_53xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_bbp_53xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RT5392 = common dso_local global i32 0, align 4
@RT5390 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_ANT_DIVERSITY = common dso_local global i32 0, align 4
@GPIO_CTRL = common dso_local global i32 0, align 4
@GPIO_CTRL_DIR3 = common dso_local global i32 0, align 4
@GPIO_CTRL_DIR6 = common dso_local global i32 0, align 4
@GPIO_CTRL_VAL3 = common dso_local global i32 0, align 4
@GPIO_CTRL_VAL6 = common dso_local global i32 0, align 4
@REV_RT5390R = common dso_local global i32 0, align 4
@REV_RT5370G = common dso_local global i32 0, align 4
@BBP152_RX_DEFAULT_ANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_bbp_53xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_bbp_53xx(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = call i32 @rt2800_bbp4_mac_if_ctrl(%struct.rt2x00_dev* %8)
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %11 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %10, i32 31, i32 8)
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %12, i32 65, i32 44)
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %15 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %14, i32 66, i32 56)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %17 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %16, i32 68, i32 11)
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %19 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %18, i32 69, i32 18)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %20, i32 73, i32 19)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %22, i32 75, i32 70)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %25 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %24, i32 76, i32 40)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %26, i32 77, i32 89)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %28, i32 70, i32 10)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %31 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %30, i32 79, i32 19)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %32, i32 80, i32 5)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %35 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %34, i32 81, i32 51)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %36, i32 82, i32 98)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %39 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %38, i32 83, i32 122)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %40, i32 84, i32 154)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %43 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %42, i32 86, i32 56)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %45 = load i32, i32* @RT5392, align 4
  %46 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %1
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %49, i32 88, i32 144)
  br label %51

51:                                               ; preds = %48, %1
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %53 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %52, i32 91, i32 4)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %55 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %54, i32 92, i32 2)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %57 = load i32, i32* @RT5392, align 4
  %58 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %62 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %61, i32 95, i32 154)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %64 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %63, i32 98, i32 18)
  br label %65

65:                                               ; preds = %60, %51
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %67 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %66, i32 103, i32 192)
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %69 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %68, i32 104, i32 146)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %71 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %70, i32 105, i32 60)
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %73 = load i32, i32* @RT5390, align 4
  %74 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %78 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %77, i32 106, i32 3)
  br label %90

79:                                               ; preds = %65
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %81 = load i32, i32* @RT5392, align 4
  %82 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %86 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %85, i32 106, i32 18)
  br label %89

87:                                               ; preds = %79
  %88 = call i32 @WARN_ON(i32 1)
  br label %89

89:                                               ; preds = %87, %84
  br label %90

90:                                               ; preds = %89, %76
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %92 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %91, i32 128, i32 18)
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %94 = load i32, i32* @RT5392, align 4
  %95 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %99 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %98, i32 134, i32 208)
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %101 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %100, i32 135, i32 246)
  br label %102

102:                                              ; preds = %97, %90
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %104 = call i32 @rt2800_disable_unused_dac_adc(%struct.rt2x00_dev* %103)
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %106 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %107 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %105, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @EEPROM_NIC_CONF1_ANT_DIVERSITY, align 4
  %110 = call i32 @rt2x00_get_field16(i32 %108, i32 %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp eq i32 %111, 3
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 1, i32 0
  store i32 %114, i32* %3, align 4
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %116 = call i64 @rt2x00_has_cap_bt_coexist(%struct.rt2x00_dev* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %147

118:                                              ; preds = %102
  %119 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %120 = load i32, i32* @GPIO_CTRL, align 4
  %121 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %119, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* @GPIO_CTRL_DIR3, align 4
  %123 = call i32 @rt2x00_set_field32(i32* %7, i32 %122, i32 0)
  %124 = load i32, i32* @GPIO_CTRL_DIR6, align 4
  %125 = call i32 @rt2x00_set_field32(i32* %7, i32 %124, i32 0)
  %126 = load i32, i32* @GPIO_CTRL_VAL3, align 4
  %127 = call i32 @rt2x00_set_field32(i32* %7, i32 %126, i32 0)
  %128 = load i32, i32* @GPIO_CTRL_VAL6, align 4
  %129 = call i32 @rt2x00_set_field32(i32* %7, i32 %128, i32 0)
  %130 = load i32, i32* %3, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %118
  %133 = load i32, i32* @GPIO_CTRL_VAL3, align 4
  %134 = call i32 @rt2x00_set_field32(i32* %7, i32 %133, i32 1)
  br label %142

135:                                              ; preds = %118
  %136 = load i32, i32* %3, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* @GPIO_CTRL_VAL6, align 4
  %140 = call i32 @rt2x00_set_field32(i32* %7, i32 %139, i32 1)
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %132
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %144 = load i32, i32* @GPIO_CTRL, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %142, %102
  %148 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %149 = load i32, i32* @RT5390, align 4
  %150 = load i32, i32* @REV_RT5390R, align 4
  %151 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %148, i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %147
  %154 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %155 = load i32, i32* @RT5390, align 4
  %156 = load i32, i32* @REV_RT5370G, align 4
  %157 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %154, i32 %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %153, %147
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %161 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %160, i32 150, i32 0)
  %162 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %163 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %162, i32 151, i32 0)
  %164 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %165 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %164, i32 154, i32 0)
  br label %166

166:                                              ; preds = %159, %153
  %167 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %168 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %167, i32 152)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %3, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* @BBP152_RX_DEFAULT_ANT, align 4
  %173 = call i32 @rt2x00_set_field8(i32* %6, i32 %172, i32 1)
  br label %177

174:                                              ; preds = %166
  %175 = load i32, i32* @BBP152_RX_DEFAULT_ANT, align 4
  %176 = call i32 @rt2x00_set_field8(i32* %6, i32 %175, i32 0)
  br label %177

177:                                              ; preds = %174, %171
  %178 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %178, i32 152, i32 %179)
  %181 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %182 = call i32 @rt2800_init_freq_calibration(%struct.rt2x00_dev* %181)
  ret void
}

declare dso_local i32 @rt2800_bbp4_mac_if_ctrl(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rt2800_disable_unused_dac_adc(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i64 @rt2x00_has_cap_bt_coexist(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_init_freq_calibration(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
