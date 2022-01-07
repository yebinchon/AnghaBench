; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_get_gain_calibration_delta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_get_gain_calibration_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i64 }

@EEPROM_NIC_CONF1 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_EXTERNAL_TX_ALC = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@EEPROM_TSSI_BOUND_BG1 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG1_MINUS4 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG1_MINUS3 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG2 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG2_MINUS2 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG2_MINUS1 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG3 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG3_REF = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG3_PLUS1 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG4 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG4_PLUS2 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG4_PLUS3 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG5 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG5_PLUS4 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_BG5_AGC_STEP = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A1 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A1_MINUS4 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A1_MINUS3 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A2 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A2_MINUS2 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A2_MINUS1 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A3 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A3_REF = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A3_PLUS1 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A4 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A4_PLUS2 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A4_PLUS3 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A5 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A5_PLUS4 = common dso_local global i32 0, align 4
@EEPROM_TSSI_BOUND_A5_AGC_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800_get_gain_calibration_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_get_gain_calibration_delta(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca [9 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %11 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @EEPROM_NIC_CONF1_EXTERNAL_TX_ALC, align 4
  %14 = call i32 @rt2x00_get_field16(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %184

17:                                               ; preds = %1
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %19 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %17
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = load i32, i32* @EEPROM_TSSI_BOUND_BG1, align 4
  %26 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EEPROM_TSSI_BOUND_BG1_MINUS4, align 4
  %29 = call i32 @rt2x00_get_field16(i32 %27, i32 %28)
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  store i32 %29, i32* %30, align 16
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @EEPROM_TSSI_BOUND_BG1_MINUS3, align 4
  %33 = call i32 @rt2x00_get_field16(i32 %31, i32 %32)
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = load i32, i32* @EEPROM_TSSI_BOUND_BG2, align 4
  %37 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @EEPROM_TSSI_BOUND_BG2_MINUS2, align 4
  %40 = call i32 @rt2x00_get_field16(i32 %38, i32 %39)
  %41 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 2
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @EEPROM_TSSI_BOUND_BG2_MINUS1, align 4
  %44 = call i32 @rt2x00_get_field16(i32 %42, i32 %43)
  %45 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 3
  store i32 %44, i32* %45, align 4
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %47 = load i32, i32* @EEPROM_TSSI_BOUND_BG3, align 4
  %48 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EEPROM_TSSI_BOUND_BG3_REF, align 4
  %51 = call i32 @rt2x00_get_field16(i32 %49, i32 %50)
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 4
  store i32 %51, i32* %52, align 16
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @EEPROM_TSSI_BOUND_BG3_PLUS1, align 4
  %55 = call i32 @rt2x00_get_field16(i32 %53, i32 %54)
  %56 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 5
  store i32 %55, i32* %56, align 4
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %58 = load i32, i32* @EEPROM_TSSI_BOUND_BG4, align 4
  %59 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @EEPROM_TSSI_BOUND_BG4_PLUS2, align 4
  %62 = call i32 @rt2x00_get_field16(i32 %60, i32 %61)
  %63 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 6
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @EEPROM_TSSI_BOUND_BG4_PLUS3, align 4
  %66 = call i32 @rt2x00_get_field16(i32 %64, i32 %65)
  %67 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 7
  store i32 %66, i32* %67, align 4
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %69 = load i32, i32* @EEPROM_TSSI_BOUND_BG5, align 4
  %70 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @EEPROM_TSSI_BOUND_BG5_PLUS4, align 4
  %73 = call i32 @rt2x00_get_field16(i32 %71, i32 %72)
  %74 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 8
  store i32 %73, i32* %74, align 16
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @EEPROM_TSSI_BOUND_BG5_AGC_STEP, align 4
  %77 = call i32 @rt2x00_get_field16(i32 %75, i32 %76)
  store i32 %77, i32* %7, align 4
  br label %133

78:                                               ; preds = %17
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %80 = load i32, i32* @EEPROM_TSSI_BOUND_A1, align 4
  %81 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @EEPROM_TSSI_BOUND_A1_MINUS4, align 4
  %84 = call i32 @rt2x00_get_field16(i32 %82, i32 %83)
  %85 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  store i32 %84, i32* %85, align 16
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @EEPROM_TSSI_BOUND_A1_MINUS3, align 4
  %88 = call i32 @rt2x00_get_field16(i32 %86, i32 %87)
  %89 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 1
  store i32 %88, i32* %89, align 4
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %91 = load i32, i32* @EEPROM_TSSI_BOUND_A2, align 4
  %92 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %90, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @EEPROM_TSSI_BOUND_A2_MINUS2, align 4
  %95 = call i32 @rt2x00_get_field16(i32 %93, i32 %94)
  %96 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 2
  store i32 %95, i32* %96, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @EEPROM_TSSI_BOUND_A2_MINUS1, align 4
  %99 = call i32 @rt2x00_get_field16(i32 %97, i32 %98)
  %100 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 3
  store i32 %99, i32* %100, align 4
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %102 = load i32, i32* @EEPROM_TSSI_BOUND_A3, align 4
  %103 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %101, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @EEPROM_TSSI_BOUND_A3_REF, align 4
  %106 = call i32 @rt2x00_get_field16(i32 %104, i32 %105)
  %107 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 4
  store i32 %106, i32* %107, align 16
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @EEPROM_TSSI_BOUND_A3_PLUS1, align 4
  %110 = call i32 @rt2x00_get_field16(i32 %108, i32 %109)
  %111 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 5
  store i32 %110, i32* %111, align 4
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %113 = load i32, i32* @EEPROM_TSSI_BOUND_A4, align 4
  %114 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %112, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @EEPROM_TSSI_BOUND_A4_PLUS2, align 4
  %117 = call i32 @rt2x00_get_field16(i32 %115, i32 %116)
  %118 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 6
  store i32 %117, i32* %118, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @EEPROM_TSSI_BOUND_A4_PLUS3, align 4
  %121 = call i32 @rt2x00_get_field16(i32 %119, i32 %120)
  %122 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 7
  store i32 %121, i32* %122, align 4
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %124 = load i32, i32* @EEPROM_TSSI_BOUND_A5, align 4
  %125 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %123, i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @EEPROM_TSSI_BOUND_A5_PLUS4, align 4
  %128 = call i32 @rt2x00_get_field16(i32 %126, i32 %127)
  %129 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 8
  store i32 %128, i32* %129, align 16
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @EEPROM_TSSI_BOUND_A5_AGC_STEP, align 4
  %132 = call i32 @rt2x00_get_field16(i32 %130, i32 %131)
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %78, %23
  %134 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 4
  %135 = load i32, i32* %134, align 16
  %136 = icmp eq i32 %135, 255
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, 255
  br i1 %139, label %140, label %141

140:                                              ; preds = %137, %133
  store i32 0, i32* %2, align 4
  br label %184

141:                                              ; preds = %137
  %142 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %143 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %142, i32 49)
  store i32 %143, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %156, %141
  %145 = load i32, i32* %8, align 4
  %146 = icmp sle i32 %145, 3
  br i1 %146, label %147, label %159

147:                                              ; preds = %144
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %148, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %159

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %144

159:                                              ; preds = %154, %144
  %160 = load i32, i32* %8, align 4
  %161 = icmp eq i32 %160, 4
  br i1 %161, label %162, label %179

162:                                              ; preds = %159
  store i32 8, i32* %8, align 4
  br label %163

163:                                              ; preds = %175, %162
  %164 = load i32, i32* %8, align 4
  %165 = icmp sge i32 %164, 5
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %167, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %178

174:                                              ; preds = %166
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %8, align 4
  br label %163

178:                                              ; preds = %173, %163
  br label %179

179:                                              ; preds = %178, %159
  %180 = load i32, i32* %8, align 4
  %181 = sub nsw i32 %180, 4
  %182 = load i32, i32* %7, align 4
  %183 = mul nsw i32 %181, %182
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %179, %140, %16
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @rt2800_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
