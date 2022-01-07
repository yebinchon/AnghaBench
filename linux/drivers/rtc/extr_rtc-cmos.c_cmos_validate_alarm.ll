; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_validate_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_validate_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32 }
%struct.cmos_rtc = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Alarms can be up to one day in the future\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Alarms can be up to one month in the future\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Alarms can be up to one year in the future\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @cmos_validate_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmos_validate_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.cmos_rtc*, align 8
  %7 = alloca %struct.rtc_time, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rtc_time, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtc_time, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.cmos_rtc* @dev_get_drvdata(%struct.device* %18)
  store %struct.cmos_rtc* %19, %struct.cmos_rtc** %6, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @cmos_read_time(%struct.device* %20, %struct.rtc_time* %7)
  %22 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %23 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %2
  %27 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %7)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %28, 86399
  store i64 %29, i64* %8, align 8
  %30 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %30, i32 0, i32 0
  %32 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %127

41:                                               ; preds = %26
  br label %126

42:                                               ; preds = %2
  %43 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %44 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %91, label %47

47:                                               ; preds = %42
  %48 = bitcast %struct.rtc_time* %10 to i8*
  %49 = bitcast %struct.rtc_time* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 12, i1 false)
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 11
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %62

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rtc_month_days(i32 %64, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* %13, align 4
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %62
  %76 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %10)
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %11, align 8
  %78 = sub nsw i64 %77, 1
  store i64 %78, i64* %11, align 8
  %79 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %79, i32 0, i32 0
  %81 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %80)
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %127

90:                                               ; preds = %75
  br label %125

91:                                               ; preds = %42
  %92 = bitcast %struct.rtc_time* %14 to i8*
  %93 = bitcast %struct.rtc_time* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 12, i1 false)
  %94 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @rtc_month_days(i32 %98, i32 %100)
  store i32 %101, i32* %17, align 4
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %91
  %107 = load i32, i32* %17, align 4
  %108 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 2
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %91
  %110 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %14)
  store i64 %110, i64* %15, align 8
  %111 = load i64, i64* %15, align 8
  %112 = sub nsw i64 %111, 1
  store i64 %112, i64* %15, align 8
  %113 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %114 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %113, i32 0, i32 0
  %115 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %114)
  store i64 %115, i64* %16, align 8
  %116 = load i64, i64* %16, align 8
  %117 = load i64, i64* %15, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %127

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %124, %90
  br label %126

126:                                              ; preds = %125, %41
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %119, %85, %36
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.cmos_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cmos_read_time(%struct.device*, %struct.rtc_time*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rtc_month_days(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
