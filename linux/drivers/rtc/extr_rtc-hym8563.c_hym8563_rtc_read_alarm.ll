; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hym8563.c_hym8563_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hym8563.c_hym8563_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i64 }
%struct.i2c_client = type { i32 }

@HYM8563_ALM_MIN = common dso_local global i32 0, align 4
@HYM8563_ALM_BIT_DISABLE = common dso_local global i32 0, align 4
@HYM8563_MIN_MASK = common dso_local global i32 0, align 4
@HYM8563_HOUR_MASK = common dso_local global i32 0, align 4
@HYM8563_DAY_MASK = common dso_local global i32 0, align 4
@HYM8563_WEEKDAY_MASK = common dso_local global i32 0, align 4
@HYM8563_CTL2 = common dso_local global i32 0, align 4
@HYM8563_CTL2_AIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @hym8563_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hym8563_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.i2c_client* @to_i2c_client(%struct.device* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %12, i32 0, i32 1
  store %struct.rtc_time* %13, %struct.rtc_time** %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = load i32, i32* @HYM8563_ALM_MIN, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %17 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %14, i32 %15, i32 4, i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %105

22:                                               ; preds = %2
  %23 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %26 = load i32, i32* %25, align 16
  %27 = load i32, i32* @HYM8563_ALM_BIT_DISABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %37

31:                                               ; preds = %22
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = load i32, i32* @HYM8563_MIN_MASK, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @bcd2bin(i32 %35)
  br label %37

37:                                               ; preds = %31, %30
  %38 = phi i32 [ -1, %30 ], [ %36, %31 ]
  %39 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HYM8563_ALM_BIT_DISABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %53

47:                                               ; preds = %37
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HYM8563_HOUR_MASK, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @bcd2bin(i32 %51)
  br label %53

53:                                               ; preds = %47, %46
  %54 = phi i32 [ -1, %46 ], [ %52, %47 ]
  %55 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HYM8563_ALM_BIT_DISABLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %69

63:                                               ; preds = %53
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @HYM8563_DAY_MASK, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @bcd2bin(i32 %67)
  br label %69

69:                                               ; preds = %63, %62
  %70 = phi i32 [ -1, %62 ], [ %68, %63 ]
  %71 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @HYM8563_ALM_BIT_DISABLE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %85

79:                                               ; preds = %69
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @HYM8563_WEEKDAY_MASK, align 4
  %83 = and i32 %81, %82
  %84 = call i32 @bcd2bin(i32 %83)
  br label %85

85:                                               ; preds = %79, %78
  %86 = phi i32 [ -1, %78 ], [ %84, %79 ]
  %87 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %88 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %90 = load i32, i32* @HYM8563_CTL2, align 4
  %91 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %105

96:                                               ; preds = %85
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @HYM8563_CTL2_AIE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %103 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %96
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %94, %20
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
