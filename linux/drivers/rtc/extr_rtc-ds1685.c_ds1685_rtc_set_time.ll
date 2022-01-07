; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ds1685_priv = type { i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32, i32)*, i64 }

@RTC_SECS_BIN_MASK = common dso_local global i32 0, align 4
@RTC_SECS_BCD_MASK = common dso_local global i32 0, align 4
@RTC_MINS_BIN_MASK = common dso_local global i32 0, align 4
@RTC_MINS_BCD_MASK = common dso_local global i32 0, align 4
@RTC_HRS_24_BIN_MASK = common dso_local global i32 0, align 4
@RTC_HRS_24_BCD_MASK = common dso_local global i32 0, align 4
@RTC_WDAY_MASK = common dso_local global i32 0, align 4
@RTC_MDAY_BIN_MASK = common dso_local global i32 0, align 4
@RTC_MDAY_BCD_MASK = common dso_local global i32 0, align 4
@RTC_MONTH_BIN_MASK = common dso_local global i32 0, align 4
@RTC_MONTH_BCD_MASK = common dso_local global i32 0, align 4
@RTC_YEAR_BIN_MASK = common dso_local global i32 0, align 4
@RTC_YEAR_BCD_MASK = common dso_local global i32 0, align 4
@RTC_CENTURY_MASK = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@RTC_CTRL_B = common dso_local global i32 0, align 4
@RTC_CTRL_B_DM = common dso_local global i32 0, align 4
@RTC_SECS = common dso_local global i32 0, align 4
@RTC_MINS = common dso_local global i32 0, align 4
@RTC_HRS = common dso_local global i32 0, align 4
@RTC_WDAY = common dso_local global i32 0, align 4
@RTC_MDAY = common dso_local global i32 0, align 4
@RTC_MONTH = common dso_local global i32 0, align 4
@RTC_YEAR = common dso_local global i32 0, align 4
@RTC_CENTURY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1685_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1685_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.ds1685_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.ds1685_priv* @dev_get_drvdata(%struct.device* %16)
  store %struct.ds1685_priv* %17, %struct.ds1685_priv** %6, align 8
  %18 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %19 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RTC_SECS_BIN_MASK, align 4
  %23 = load i32, i32* @RTC_SECS_BCD_MASK, align 4
  %24 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %18, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %26 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RTC_MINS_BIN_MASK, align 4
  %30 = load i32, i32* @RTC_MINS_BCD_MASK, align 4
  %31 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %25, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %33 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RTC_HRS_24_BIN_MASK, align 4
  %37 = load i32, i32* @RTC_HRS_24_BCD_MASK, align 4
  %38 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %32, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* @RTC_WDAY_MASK, align 4
  %45 = load i32, i32* @RTC_WDAY_MASK, align 4
  %46 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %39, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %48 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RTC_MDAY_BIN_MASK, align 4
  %52 = load i32, i32* @RTC_MDAY_BCD_MASK, align 4
  %53 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %47, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %55 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* @RTC_MONTH_BIN_MASK, align 4
  %60 = load i32, i32* @RTC_MONTH_BCD_MASK, align 4
  %61 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %54, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %63 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %65, 100
  %67 = load i32, i32* @RTC_YEAR_BIN_MASK, align 4
  %68 = load i32, i32* @RTC_YEAR_BCD_MASK, align 4
  %69 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %62, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %71 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1900
  %75 = sdiv i32 %74, 100
  %76 = load i32, i32* @RTC_CENTURY_MASK, align 4
  %77 = load i32, i32* @RTC_CENTURY_MASK, align 4
  %78 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %70, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %15, align 4
  %79 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 11
  br i1 %82, label %86, label %83

83:                                               ; preds = %2
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83, %2
  %87 = load i32, i32* @EDOM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %214

89:                                               ; preds = %83
  %90 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %91 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %98 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @rtc_month_days(i32 %96, i32 %99)
  %101 = icmp sgt i64 %93, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = load i32, i32* @EDOM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %214

105:                                              ; preds = %89
  %106 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %107 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp sge i32 %108, 24
  br i1 %109, label %123, label %110

110:                                              ; preds = %105
  %111 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %112 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %113, 60
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  %116 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %117 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 60
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %11, align 4
  %122 = icmp sgt i32 %121, 7
  br i1 %122, label %123, label %126

123:                                              ; preds = %120, %115, %110, %105
  %124 = load i32, i32* @EDOM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %214

126:                                              ; preds = %120
  %127 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %128 = call i32 @ds1685_rtc_begin_data_access(%struct.ds1685_priv* %127)
  %129 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %130 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %129, i32 0, i32 0
  %131 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %130, align 8
  %132 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %133 = load i32, i32* @RTC_CTRL_B, align 4
  %134 = call i32 %131(%struct.ds1685_priv* %132, i32 %133)
  store i32 %134, i32* %7, align 4
  %135 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %136 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %126
  %140 = load i32, i32* @RTC_CTRL_B_DM, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %7, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %148

144:                                              ; preds = %126
  %145 = load i32, i32* @RTC_CTRL_B_DM, align 4
  %146 = load i32, i32* %7, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %144, %139
  %149 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %150 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %149, i32 0, i32 1
  %151 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %150, align 8
  %152 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %153 = load i32, i32* @RTC_CTRL_B, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i32 %151(%struct.ds1685_priv* %152, i32 %153, i32 %154)
  %156 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %157 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %156, i32 0, i32 1
  %158 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %157, align 8
  %159 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %160 = load i32, i32* @RTC_SECS, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i32 %158(%struct.ds1685_priv* %159, i32 %160, i32 %161)
  %163 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %164 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %163, i32 0, i32 1
  %165 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %164, align 8
  %166 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %167 = load i32, i32* @RTC_MINS, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i32 %165(%struct.ds1685_priv* %166, i32 %167, i32 %168)
  %170 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %171 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %170, i32 0, i32 1
  %172 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %171, align 8
  %173 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %174 = load i32, i32* @RTC_HRS, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i32 %172(%struct.ds1685_priv* %173, i32 %174, i32 %175)
  %177 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %178 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %177, i32 0, i32 1
  %179 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %178, align 8
  %180 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %181 = load i32, i32* @RTC_WDAY, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i32 %179(%struct.ds1685_priv* %180, i32 %181, i32 %182)
  %184 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %185 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %184, i32 0, i32 1
  %186 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %185, align 8
  %187 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %188 = load i32, i32* @RTC_MDAY, align 4
  %189 = load i32, i32* %12, align 4
  %190 = call i32 %186(%struct.ds1685_priv* %187, i32 %188, i32 %189)
  %191 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %192 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %191, i32 0, i32 1
  %193 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %192, align 8
  %194 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %195 = load i32, i32* @RTC_MONTH, align 4
  %196 = load i32, i32* %13, align 4
  %197 = call i32 %193(%struct.ds1685_priv* %194, i32 %195, i32 %196)
  %198 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %199 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %198, i32 0, i32 1
  %200 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %199, align 8
  %201 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %202 = load i32, i32* @RTC_YEAR, align 4
  %203 = load i32, i32* %14, align 4
  %204 = call i32 %200(%struct.ds1685_priv* %201, i32 %202, i32 %203)
  %205 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %206 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %205, i32 0, i32 1
  %207 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %206, align 8
  %208 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %209 = load i32, i32* @RTC_CENTURY, align 4
  %210 = load i32, i32* %15, align 4
  %211 = call i32 %207(%struct.ds1685_priv* %208, i32 %209, i32 %210)
  %212 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %213 = call i32 @ds1685_rtc_end_data_access(%struct.ds1685_priv* %212)
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %148, %123, %102, %86
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local %struct.ds1685_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv*, i32, i32, i32) #1

declare dso_local i64 @rtc_month_days(i32, i32) #1

declare dso_local i32 @ds1685_rtc_begin_data_access(%struct.ds1685_priv*) #1

declare dso_local i32 @ds1685_rtc_end_data_access(%struct.ds1685_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
