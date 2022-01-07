; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8925.c_data_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8925.c_data_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i8, i32, i32, i32 }

@TIME_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTC_YEAR2 = common dso_local global i64 0, align 8
@RTC_YEAR1 = common dso_local global i64 0, align 8
@RTC_MONTH = common dso_local global i64 0, align 8
@RTC_DATE = common dso_local global i64 0, align 8
@RTC_WEEKDAY = common dso_local global i64 0, align 8
@RTC_HOUR = common dso_local global i64 0, align 8
@RTC_MIN = common dso_local global i64 0, align 8
@RTC_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rtc_time*, i32)* @data_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @data_calc(i8* %0, %struct.rtc_time* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rtc_time*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @TIME_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %218

16:                                               ; preds = %3
  %17 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1900
  %21 = sdiv i32 %20, 1000
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %8, align 1
  %23 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1900
  %27 = sdiv i32 %26, 100
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %9, align 1
  %29 = load i8, i8* %9, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* %8, align 1
  %32 = zext i8 %31 to i32
  %33 = mul nsw i32 %32, 10
  %34 = sub nsw i32 %30, %33
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %9, align 1
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 4
  %39 = load i8, i8* %9, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %38, %40
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* @RTC_YEAR2, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 %42, i8* %45, align 1
  %46 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1900
  %50 = sdiv i32 %49, 10
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %8, align 1
  %52 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1900
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %9, align 1
  %57 = load i8, i8* %9, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* %8, align 1
  %60 = zext i8 %59 to i32
  %61 = mul nsw i32 %60, 10
  %62 = sub nsw i32 %58, %61
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %9, align 1
  %64 = load i8, i8* %8, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %8, align 1
  %67 = zext i8 %66 to i32
  %68 = sdiv i32 %67, 10
  %69 = mul nsw i32 %68, 10
  %70 = sub nsw i32 %65, %69
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %8, align 1
  %72 = load i8, i8* %8, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 4
  %75 = load i8, i8* %9, align 1
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %74, %76
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %5, align 8
  %80 = load i64, i64* @RTC_YEAR1, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8 %78, i8* %81, align 1
  %82 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %83 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 10
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %8, align 1
  %87 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %88 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %9, align 1
  %91 = load i8, i8* %9, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* %8, align 1
  %94 = zext i8 %93 to i32
  %95 = mul nsw i32 %94, 10
  %96 = sub nsw i32 %92, %95
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %9, align 1
  %98 = load i8, i8* %8, align 1
  %99 = zext i8 %98 to i32
  %100 = shl i32 %99, 4
  %101 = load i8, i8* %9, align 1
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %100, %102
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %5, align 8
  %106 = load i64, i64* @RTC_MONTH, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8 %104, i8* %107, align 1
  %108 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = sdiv i32 %110, 10
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %8, align 1
  %113 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %114 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %9, align 1
  %117 = load i8, i8* %9, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* %8, align 1
  %120 = zext i8 %119 to i32
  %121 = mul nsw i32 %120, 10
  %122 = sub nsw i32 %118, %121
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %9, align 1
  %124 = load i8, i8* %8, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 %125, 4
  %127 = load i8, i8* %9, align 1
  %128 = zext i8 %127 to i32
  %129 = add nsw i32 %126, %128
  %130 = trunc i32 %129 to i8
  %131 = load i8*, i8** %5, align 8
  %132 = load i64, i64* @RTC_DATE, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8 %130, i8* %133, align 1
  %134 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %135 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %134, i32 0, i32 3
  %136 = load i8, i8* %135, align 4
  %137 = load i8*, i8** %5, align 8
  %138 = load i64, i64* @RTC_WEEKDAY, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8 %136, i8* %139, align 1
  %140 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %141 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = sdiv i32 %142, 10
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %8, align 1
  %145 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %146 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %9, align 1
  %149 = load i8, i8* %9, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8, i8* %8, align 1
  %152 = zext i8 %151 to i32
  %153 = mul nsw i32 %152, 10
  %154 = sub nsw i32 %150, %153
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %9, align 1
  %156 = load i8, i8* %8, align 1
  %157 = zext i8 %156 to i32
  %158 = shl i32 %157, 4
  %159 = load i8, i8* %9, align 1
  %160 = zext i8 %159 to i32
  %161 = add nsw i32 %158, %160
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %5, align 8
  %164 = load i64, i64* @RTC_HOUR, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8 %162, i8* %165, align 1
  %166 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %167 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = sdiv i32 %168, 10
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %8, align 1
  %171 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %172 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %9, align 1
  %175 = load i8, i8* %9, align 1
  %176 = zext i8 %175 to i32
  %177 = load i8, i8* %8, align 1
  %178 = zext i8 %177 to i32
  %179 = mul nsw i32 %178, 10
  %180 = sub nsw i32 %176, %179
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %9, align 1
  %182 = load i8, i8* %8, align 1
  %183 = zext i8 %182 to i32
  %184 = shl i32 %183, 4
  %185 = load i8, i8* %9, align 1
  %186 = zext i8 %185 to i32
  %187 = add nsw i32 %184, %186
  %188 = trunc i32 %187 to i8
  %189 = load i8*, i8** %5, align 8
  %190 = load i64, i64* @RTC_MIN, align 8
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  store i8 %188, i8* %191, align 1
  %192 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %193 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = sdiv i32 %194, 10
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %8, align 1
  %197 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %198 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %9, align 1
  %201 = load i8, i8* %9, align 1
  %202 = zext i8 %201 to i32
  %203 = load i8, i8* %8, align 1
  %204 = zext i8 %203 to i32
  %205 = mul nsw i32 %204, 10
  %206 = sub nsw i32 %202, %205
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %9, align 1
  %208 = load i8, i8* %8, align 1
  %209 = zext i8 %208 to i32
  %210 = shl i32 %209, 4
  %211 = load i8, i8* %9, align 1
  %212 = zext i8 %211 to i32
  %213 = add nsw i32 %210, %212
  %214 = trunc i32 %213 to i8
  %215 = load i8*, i8** %5, align 8
  %216 = load i64, i64* @RTC_SEC, align 8
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  store i8 %214, i8* %217, align 1
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %16, %13
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
