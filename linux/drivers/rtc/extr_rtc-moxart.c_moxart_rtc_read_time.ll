; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-moxart.c_moxart_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-moxart.c_moxart_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8, i8, i8, i8, i8, i8, i8, i32, i64 }
%struct.moxart_rtc = type { i32 }

@GPIO_RTC_SECONDS_R = common dso_local global i32 0, align 4
@GPIO_RTC_MINUTES_R = common dso_local global i32 0, align 4
@GPIO_RTC_HOURS_R = common dso_local global i32 0, align 4
@GPIO_RTC_DATE_R = common dso_local global i32 0, align 4
@GPIO_RTC_MONTH_R = common dso_local global i32 0, align 4
@GPIO_RTC_YEAR_R = common dso_local global i32 0, align 4
@GPIO_RTC_DAY_R = common dso_local global i32 0, align 4
@day_of_year = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @moxart_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxart_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.moxart_rtc*, align 8
  %6 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.moxart_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.moxart_rtc* %8, %struct.moxart_rtc** %5, align 8
  %9 = load %struct.moxart_rtc*, %struct.moxart_rtc** %5, align 8
  %10 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load i32, i32* @GPIO_RTC_SECONDS_R, align 4
  %14 = call zeroext i8 @moxart_rtc_read_register(%struct.device* %12, i32 %13)
  store i8 %14, i8* %6, align 1
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 112
  %18 = ashr i32 %17, 4
  %19 = mul nsw i32 %18, 10
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 15
  %23 = add nsw i32 %19, %22
  %24 = trunc i32 %23 to i8
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 0
  store i8 %24, i8* %26, align 8
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load i32, i32* @GPIO_RTC_MINUTES_R, align 4
  %29 = call zeroext i8 @moxart_rtc_read_register(%struct.device* %27, i32 %28)
  store i8 %29, i8* %6, align 1
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 112
  %33 = ashr i32 %32, 4
  %34 = mul nsw i32 %33, 10
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 15
  %38 = add nsw i32 %34, %37
  %39 = trunc i32 %38 to i8
  %40 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 1
  store i8 %39, i8* %41, align 1
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = load i32, i32* @GPIO_RTC_HOURS_R, align 4
  %44 = call zeroext i8 @moxart_rtc_read_register(%struct.device* %42, i32 %43)
  store i8 %44, i8* %6, align 1
  %45 = load i8, i8* %6, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 128
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %2
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 16
  %53 = ashr i32 %52, 4
  %54 = mul nsw i32 %53, 10
  %55 = load i8, i8* %6, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 15
  %58 = add nsw i32 %54, %57
  %59 = trunc i32 %58 to i8
  %60 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 2
  store i8 %59, i8* %61, align 2
  %62 = load i8, i8* %6, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %49
  %67 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 2
  %69 = load i8, i8* %68, align 2
  %70 = zext i8 %69 to i32
  %71 = add nsw i32 %70, 12
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %68, align 2
  %73 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 2
  %75 = load i8, i8* %74, align 2
  %76 = zext i8 %75 to i32
  %77 = icmp sge i32 %76, 24
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 2
  store i8 0, i8* %80, align 2
  br label %81

81:                                               ; preds = %78, %66
  br label %82

82:                                               ; preds = %81, %49
  br label %96

83:                                               ; preds = %2
  %84 = load i8, i8* %6, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 48
  %87 = ashr i32 %86, 4
  %88 = mul nsw i32 %87, 10
  %89 = load i8, i8* %6, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 15
  %92 = add nsw i32 %88, %91
  %93 = trunc i32 %92 to i8
  %94 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 2
  store i8 %93, i8* %95, align 2
  br label %96

96:                                               ; preds = %83, %82
  %97 = load %struct.device*, %struct.device** %3, align 8
  %98 = load i32, i32* @GPIO_RTC_DATE_R, align 4
  %99 = call zeroext i8 @moxart_rtc_read_register(%struct.device* %97, i32 %98)
  store i8 %99, i8* %6, align 1
  %100 = load i8, i8* %6, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, 48
  %103 = ashr i32 %102, 4
  %104 = mul nsw i32 %103, 10
  %105 = load i8, i8* %6, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 15
  %108 = add nsw i32 %104, %107
  %109 = trunc i32 %108 to i8
  %110 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 3
  store i8 %109, i8* %111, align 1
  %112 = load %struct.device*, %struct.device** %3, align 8
  %113 = load i32, i32* @GPIO_RTC_MONTH_R, align 4
  %114 = call zeroext i8 @moxart_rtc_read_register(%struct.device* %112, i32 %113)
  store i8 %114, i8* %6, align 1
  %115 = load i8, i8* %6, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 16
  %118 = ashr i32 %117, 4
  %119 = mul nsw i32 %118, 10
  %120 = load i8, i8* %6, align 1
  %121 = zext i8 %120 to i32
  %122 = and i32 %121, 15
  %123 = add nsw i32 %119, %122
  %124 = trunc i32 %123 to i8
  %125 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %126 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %125, i32 0, i32 4
  store i8 %124, i8* %126, align 4
  %127 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %128 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %127, i32 0, i32 4
  %129 = load i8, i8* %128, align 4
  %130 = add i8 %129, -1
  store i8 %130, i8* %128, align 4
  %131 = load %struct.device*, %struct.device** %3, align 8
  %132 = load i32, i32* @GPIO_RTC_YEAR_R, align 4
  %133 = call zeroext i8 @moxart_rtc_read_register(%struct.device* %131, i32 %132)
  store i8 %133, i8* %6, align 1
  %134 = load i8, i8* %6, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, 240
  %137 = ashr i32 %136, 4
  %138 = mul nsw i32 %137, 10
  %139 = load i8, i8* %6, align 1
  %140 = zext i8 %139 to i32
  %141 = and i32 %140, 15
  %142 = add nsw i32 %138, %141
  %143 = trunc i32 %142 to i8
  %144 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %145 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %144, i32 0, i32 5
  store i8 %143, i8* %145, align 1
  %146 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %147 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %146, i32 0, i32 5
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = add nsw i32 %149, 100
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %147, align 1
  %152 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %153 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %152, i32 0, i32 5
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp sle i32 %155, 69
  br i1 %156, label %157, label %164

157:                                              ; preds = %96
  %158 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %159 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %158, i32 0, i32 5
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = add nsw i32 %161, 100
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %159, align 1
  br label %164

164:                                              ; preds = %157, %96
  %165 = load %struct.device*, %struct.device** %3, align 8
  %166 = load i32, i32* @GPIO_RTC_DAY_R, align 4
  %167 = call zeroext i8 @moxart_rtc_read_register(%struct.device* %165, i32 %166)
  store i8 %167, i8* %6, align 1
  %168 = load i8, i8* %6, align 1
  %169 = zext i8 %168 to i32
  %170 = and i32 %169, 15
  %171 = sub nsw i32 %170, 1
  %172 = trunc i32 %171 to i8
  %173 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %174 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %173, i32 0, i32 6
  store i8 %172, i8* %174, align 2
  %175 = load i32*, i32** @day_of_year, align 8
  %176 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %177 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %176, i32 0, i32 4
  %178 = load i8, i8* %177, align 4
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %183 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %182, i32 0, i32 7
  store i32 %181, i32* %183, align 8
  %184 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %185 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %184, i32 0, i32 3
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = sub nsw i32 %187, 1
  %189 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %190 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %194 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %193, i32 0, i32 4
  %195 = load i8, i8* %194, align 4
  %196 = zext i8 %195 to i32
  %197 = icmp sge i32 %196, 2
  br i1 %197, label %198, label %218

198:                                              ; preds = %164
  %199 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %200 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %199, i32 0, i32 5
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = srem i32 %202, 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %217, label %205

205:                                              ; preds = %198
  %206 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %207 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %206, i32 0, i32 5
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = srem i32 %209, 100
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %214 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %212, %205, %198
  br label %218

218:                                              ; preds = %217, %164
  %219 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %220 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %219, i32 0, i32 8
  store i64 0, i64* %220, align 8
  %221 = load %struct.moxart_rtc*, %struct.moxart_rtc** %5, align 8
  %222 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %221, i32 0, i32 0
  %223 = call i32 @spin_unlock_irq(i32* %222)
  ret i32 0
}

declare dso_local %struct.moxart_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local zeroext i8 @moxart_rtc_read_register(%struct.device*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
