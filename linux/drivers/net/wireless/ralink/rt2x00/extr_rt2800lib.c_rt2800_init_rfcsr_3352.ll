; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_3352.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_3352.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@CAPABILITY_EXTERNAL_PA_TX0 = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_PA_TX1 = common dso_local global i32 0, align 4
@RFCSR34_TX0_EXT_PA = common dso_local global i32 0, align 4
@RFCSR34_TX1_EXT_PA = common dso_local global i32 0, align 4
@RFCSR41_BIT1 = common dso_local global i32 0, align 4
@RFCSR41_BIT4 = common dso_local global i32 0, align 4
@RFCSR42_BIT1 = common dso_local global i32 0, align 4
@RFCSR42_BIT4 = common dso_local global i32 0, align 4
@RFCSR50_TX0_EXT_PA = common dso_local global i32 0, align 4
@RFCSR50_TX1_EXT_PA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_rfcsr_3352 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_rfcsr_3352(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %6 = load i32, i32* @CAPABILITY_EXTERNAL_PA_TX0, align 4
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %7, i32 0, i32 0
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @CAPABILITY_EXTERNAL_PA_TX1, align 4
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %11, i32 0, i32 0
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %15 = call i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev* %14, i32 30)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %17 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %16, i32 0, i32 240)
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %19 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %18, i32 1, i32 35)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %20, i32 2, i32 80)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %22, i32 3, i32 24)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %25 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %24, i32 4, i32 0)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %26, i32 5, i32 0)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %28, i32 6, i32 51)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %31 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %30, i32 7, i32 0)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %32, i32 8, i32 241)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %35 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %34, i32 9, i32 2)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %36, i32 10, i32 210)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %39 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %38, i32 11, i32 66)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %40, i32 12, i32 28)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %43 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %42, i32 13, i32 0)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %45 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %44, i32 14, i32 90)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %46, i32 15, i32 0)
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %49 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %48, i32 16, i32 1)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %50, i32 18, i32 69)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %53 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %52, i32 19, i32 2)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %55 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %54, i32 20, i32 0)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %57 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %56, i32 21, i32 0)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %59 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %58, i32 22, i32 0)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %61 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %60, i32 23, i32 0)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %63 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %62, i32 24, i32 0)
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %65 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %64, i32 25, i32 128)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %67 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %66, i32 26, i32 0)
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %69 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %68, i32 27, i32 3)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %71 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %70, i32 28, i32 3)
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %73 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %72, i32 29, i32 0)
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %75 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %74, i32 30, i32 16)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %77 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %76, i32 31, i32 128)
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %79 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %78, i32 32, i32 128)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %81 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %80, i32 33, i32 0)
  store i32 1, i32* %5, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %1
  %85 = load i32, i32* @RFCSR34_TX0_EXT_PA, align 4
  %86 = call i32 @rt2x00_set_field8(i32* %5, i32 %85, i32 1)
  br label %87

87:                                               ; preds = %84, %1
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* @RFCSR34_TX1_EXT_PA, align 4
  %92 = call i32 @rt2x00_set_field8(i32* %5, i32 %91, i32 1)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %94, i32 34, i32 %95)
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %98 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %97, i32 35, i32 3)
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %100 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %99, i32 36, i32 189)
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %102 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %101, i32 37, i32 60)
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %104 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %103, i32 38, i32 95)
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %106 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %105, i32 39, i32 197)
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %108 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %107, i32 40, i32 51)
  store i32 82, i32* %5, align 4
  %109 = load i32, i32* %3, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %93
  %112 = load i32, i32* @RFCSR41_BIT1, align 4
  %113 = call i32 @rt2x00_set_field8(i32* %5, i32 %112, i32 1)
  %114 = load i32, i32* @RFCSR41_BIT4, align 4
  %115 = call i32 @rt2x00_set_field8(i32* %5, i32 %114, i32 1)
  br label %116

116:                                              ; preds = %111, %93
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %117, i32 41, i32 %118)
  store i32 82, i32* %5, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* @RFCSR42_BIT1, align 4
  %124 = call i32 @rt2x00_set_field8(i32* %5, i32 %123, i32 1)
  %125 = load i32, i32* @RFCSR42_BIT4, align 4
  %126 = call i32 @rt2x00_set_field8(i32* %5, i32 %125, i32 1)
  br label %127

127:                                              ; preds = %122, %116
  %128 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %128, i32 42, i32 %129)
  %131 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %132 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %131, i32 43, i32 219)
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %134 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %133, i32 44, i32 219)
  %135 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %136 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %135, i32 45, i32 219)
  %137 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %138 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %137, i32 46, i32 221)
  %139 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %140 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %139, i32 47, i32 13)
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %142 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %141, i32 48, i32 20)
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %144 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %143, i32 49, i32 0)
  store i32 45, i32* %5, align 4
  %145 = load i32, i32* %3, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %127
  %148 = load i32, i32* @RFCSR50_TX0_EXT_PA, align 4
  %149 = call i32 @rt2x00_set_field8(i32* %5, i32 %148, i32 1)
  br label %150

150:                                              ; preds = %147, %127
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* @RFCSR50_TX1_EXT_PA, align 4
  %155 = call i32 @rt2x00_set_field8(i32* %5, i32 %154, i32 1)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %157, i32 50, i32 %158)
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %161 = load i32, i32* %3, align 4
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 82, i32 127
  %165 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %160, i32 51, i32 %164)
  %166 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %167 = load i32, i32* %3, align 4
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 192, i32 0
  %171 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %166, i32 52, i32 %170)
  %172 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %173 = load i32, i32* %3, align 4
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i32 210, i32 82
  %177 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %172, i32 53, i32 %176)
  %178 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %179 = load i32, i32* %3, align 4
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 192, i32 27
  %183 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %178, i32 54, i32 %182)
  %184 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %185 = load i32, i32* %4, align 4
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 82, i32 127
  %189 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %184, i32 55, i32 %188)
  %190 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %191 = load i32, i32* %4, align 4
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 192, i32 0
  %195 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %190, i32 56, i32 %194)
  %196 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %197 = load i32, i32* %3, align 4
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 73, i32 82
  %201 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %196, i32 57, i32 %200)
  %202 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %203 = load i32, i32* %4, align 4
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i32 192, i32 27
  %207 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %202, i32 58, i32 %206)
  %208 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %209 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %208, i32 59, i32 0)
  %210 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %211 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %210, i32 60, i32 0)
  %212 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %213 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %212, i32 61, i32 0)
  %214 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %215 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %214, i32 62, i32 0)
  %216 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %217 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %216, i32 63, i32 0)
  %218 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %219 = call i32 @rt2800_rx_filter_calibration(%struct.rt2x00_dev* %218)
  %220 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %221 = call i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev* %220)
  %222 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %223 = call i32 @rt2800_normal_mode_setup_3xxx(%struct.rt2x00_dev* %222)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_rx_filter_calibration(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_normal_mode_setup_3xxx(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
