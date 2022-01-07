; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }
%struct.i2c_client = type { i32 }

@M41T80_REG_ALARM_MON = common dso_local global i32 0, align 4
@M41T80_ALMON_AFE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to clear AFE bit\0A\00", align 1
@M41T80_ALMON_SQWE = common dso_local global i32 0, align 4
@M41T80_REG_FLAGS = common dso_local global i32 0, align 4
@M41T80_FLAGS_AF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to clear AF bit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @m41t80_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t80_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.i2c_client* @to_i2c_client(%struct.device* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @bin2bcd(i64 %16)
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @bin2bcd(i64 %22)
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @bin2bcd(i64 %28)
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 %29, i32* %30, align 8
  %31 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @bin2bcd(i64 %34)
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 %35, i32* %36, align 4
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @bin2bcd(i64 %40)
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 %41, i32* %42, align 16
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = load i32, i32* @M41T80_REG_ALARM_MON, align 4
  %45 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %122

50:                                               ; preds = %2
  %51 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %52 = load i32, i32* @M41T80_REG_ALARM_MON, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @M41T80_ALMON_AFE, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %51, i32 %52, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %122

64:                                               ; preds = %50
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @M41T80_ALMON_SQWE, align 4
  %67 = and i32 %65, %66
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %69 = load i32, i32* %68, align 16
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 16
  %71 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %72 = load i32, i32* @M41T80_REG_FLAGS, align 4
  %73 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %122

78:                                               ; preds = %64
  %79 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %80 = load i32, i32* @M41T80_REG_FLAGS, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @M41T80_FLAGS_AF, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %79, i32 %80, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %122

92:                                               ; preds = %78
  %93 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %94 = load i32, i32* @M41T80_REG_ALARM_MON, align 4
  %95 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %96 = call i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client* %93, i32 %94, i32 5, i32* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %122

101:                                              ; preds = %92
  %102 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %103 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = load i32, i32* @M41T80_ALMON_AFE, align 4
  %108 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 16
  %111 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %112 = load i32, i32* @M41T80_REG_ALARM_MON, align 4
  %113 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %114 = load i32, i32* %113, align 16
  %115 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %111, i32 %112, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %106
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %122

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %101
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %118, %99, %88, %76, %60, %48
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @bin2bcd(i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
