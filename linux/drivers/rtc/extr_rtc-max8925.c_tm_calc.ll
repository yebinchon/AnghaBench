; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8925.c_tm_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8925.c_tm_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i8, i8, i8, i8, i8, i8, i8 }

@TIME_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTC_YEAR2 = common dso_local global i64 0, align 8
@RTC_YEAR1 = common dso_local global i64 0, align 8
@RTC_MONTH = common dso_local global i64 0, align 8
@RTC_DATE = common dso_local global i64 0, align 8
@RTC_WEEKDAY = common dso_local global i64 0, align 8
@RTC_HOUR = common dso_local global i64 0, align 8
@HOUR_12 = common dso_local global i8 0, align 1
@HOUR_AM_PM = common dso_local global i8 0, align 1
@RTC_MIN = common dso_local global i64 0, align 8
@RTC_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*, i8*, i32)* @tm_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm_calc(%struct.rtc_time* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.rtc_time* %0, %struct.rtc_time** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TIME_NUM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %200

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* @RTC_YEAR2, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = ashr i32 %19, 4
  %21 = mul nsw i32 %20, 1000
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* @RTC_YEAR2, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 15
  %28 = mul nsw i32 %27, 100
  %29 = add nsw i32 %21, %28
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* @RTC_YEAR1, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = ashr i32 %34, 4
  %36 = mul nsw i32 %35, 10
  %37 = add nsw i32 %29, %36
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* @RTC_YEAR1, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 15
  %44 = add nsw i32 %37, %43
  %45 = trunc i32 %44 to i8
  %46 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 0
  store i8 %45, i8* %47, align 1
  %48 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = sub nsw i32 %51, 1900
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* @RTC_MONTH, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = ashr i32 %58, 4
  %60 = and i32 %59, 1
  %61 = mul nsw i32 %60, 10
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* @RTC_MONTH, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 15
  %68 = add nsw i32 %61, %67
  %69 = trunc i32 %68 to i8
  %70 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 1
  store i8 %69, i8* %71, align 1
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* @RTC_DATE, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = ashr i32 %76, 4
  %78 = and i32 %77, 3
  %79 = mul nsw i32 %78, 10
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* @RTC_DATE, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 15
  %86 = add nsw i32 %79, %85
  %87 = trunc i32 %86 to i8
  %88 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 2
  store i8 %87, i8* %89, align 1
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* @RTC_WEEKDAY, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 7
  %96 = trunc i32 %95 to i8
  %97 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %98 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %97, i32 0, i32 3
  store i8 %96, i8* %98, align 1
  %99 = load i8*, i8** %6, align 8
  %100 = load i64, i64* @RTC_HOUR, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* @HOUR_12, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %144

108:                                              ; preds = %14
  %109 = load i8*, i8** %6, align 8
  %110 = load i64, i64* @RTC_HOUR, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = ashr i32 %113, 4
  %115 = and i32 %114, 1
  %116 = mul nsw i32 %115, 10
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* @RTC_HOUR, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = and i32 %121, 15
  %123 = add nsw i32 %116, %122
  %124 = trunc i32 %123 to i8
  %125 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %126 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %125, i32 0, i32 4
  store i8 %124, i8* %126, align 1
  %127 = load i8*, i8** %6, align 8
  %128 = load i64, i64* @RTC_HOUR, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8, i8* @HOUR_AM_PM, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %108
  %137 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %138 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %137, i32 0, i32 4
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = add nsw i32 %140, 12
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %138, align 1
  br label %143

143:                                              ; preds = %136, %108
  br label %163

144:                                              ; preds = %14
  %145 = load i8*, i8** %6, align 8
  %146 = load i64, i64* @RTC_HOUR, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = ashr i32 %149, 4
  %151 = and i32 %150, 3
  %152 = mul nsw i32 %151, 10
  %153 = load i8*, i8** %6, align 8
  %154 = load i64, i64* @RTC_HOUR, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = and i32 %157, 15
  %159 = add nsw i32 %152, %158
  %160 = trunc i32 %159 to i8
  %161 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %162 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %161, i32 0, i32 4
  store i8 %160, i8* %162, align 1
  br label %163

163:                                              ; preds = %144, %143
  %164 = load i8*, i8** %6, align 8
  %165 = load i64, i64* @RTC_MIN, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = ashr i32 %168, 4
  %170 = and i32 %169, 7
  %171 = mul nsw i32 %170, 10
  %172 = load i8*, i8** %6, align 8
  %173 = load i64, i64* @RTC_MIN, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %176, 15
  %178 = add nsw i32 %171, %177
  %179 = trunc i32 %178 to i8
  %180 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %181 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %180, i32 0, i32 5
  store i8 %179, i8* %181, align 1
  %182 = load i8*, i8** %6, align 8
  %183 = load i64, i64* @RTC_SEC, align 8
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = ashr i32 %186, 4
  %188 = and i32 %187, 7
  %189 = mul nsw i32 %188, 10
  %190 = load i8*, i8** %6, align 8
  %191 = load i64, i64* @RTC_SEC, align 8
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = and i32 %194, 15
  %196 = add nsw i32 %189, %195
  %197 = trunc i32 %196 to i8
  %198 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %199 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %198, i32 0, i32 6
  store i8 %197, i8* %199, align 1
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %163, %11
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
