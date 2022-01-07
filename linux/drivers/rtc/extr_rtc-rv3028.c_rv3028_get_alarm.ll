; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_get_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_get_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i64 }
%struct.rv3028_data = type { i32 }

@RV3028_ALARM_MIN = common dso_local global i32 0, align 4
@RV3028_STATUS = common dso_local global i32 0, align 4
@RV3028_CTRL2 = common dso_local global i32 0, align 4
@RV3028_CTRL2_AIE = common dso_local global i32 0, align 4
@RV3028_STATUS_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @rv3028_get_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3028_get_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.rv3028_data*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.rv3028_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.rv3028_data* %12, %struct.rv3028_data** %6, align 8
  %13 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %14 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RV3028_ALARM_MIN, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %18 = call i32 @regmap_bulk_read(i32 %15, i32 %16, i32* %17, i32 12)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %3, align 4
  br label %91

23:                                               ; preds = %2
  %24 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %25 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RV3028_STATUS, align 4
  %28 = call i32 @regmap_read(i32 %26, i32 %27, i32* %8)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %91

33:                                               ; preds = %23
  %34 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %35 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RV3028_CTRL2, align 4
  %38 = call i32 @regmap_read(i32 %36, i32 %37, i32* %9)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %91

43:                                               ; preds = %33
  %44 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 127
  %50 = call i8* @bcd2bin(i32 %49)
  %51 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 63
  %57 = call i8* @bcd2bin(i32 %56)
  %58 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 63
  %64 = call i8* @bcd2bin(i32 %63)
  %65 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %66 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @RV3028_CTRL2_AIE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %76 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @RV3028_STATUS_AF, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %43
  %82 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %83 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %81, %43
  %87 = phi i1 [ false, %43 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  %89 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %90 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %41, %31, %21
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.rv3028_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
