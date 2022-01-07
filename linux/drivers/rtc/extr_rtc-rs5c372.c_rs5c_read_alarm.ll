; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c372.c_rs5c_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c372.c_rs5c_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.i2c_client = type { i32 }
%struct.rs5c372 = type { i32* }

@RS5C_REG_ALARM_A_MIN = common dso_local global i64 0, align 8
@RS5C_REG_ALARM_A_HOURS = common dso_local global i64 0, align 8
@RS5C_REG_CTRL1 = common dso_local global i64 0, align 8
@RS5C_CTRL1_AALE = common dso_local global i32 0, align 4
@RS5C_REG_CTRL2 = common dso_local global i64 0, align 8
@RS5C_CTRL2_AAFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @rs5c_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs5c_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rs5c372*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.i2c_client* @to_i2c_client(%struct.device* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = call %struct.rs5c372* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.rs5c372* %12, %struct.rs5c372** %7, align 8
  %13 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %14 = call i32 @rs5c_get_regs(%struct.rs5c372* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %24 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @RS5C_REG_ALARM_A_MIN, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 127
  %30 = call i32 @bcd2bin(i32 %29)
  %31 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %35 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %36 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @RS5C_REG_ALARM_A_HOURS, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rs5c_reg2hr(%struct.rs5c372* %34, i32 %40)
  %42 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %46 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RS5C_CTRL1_AALE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %60 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @RS5C_REG_CTRL2, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RS5C_CTRL2_AAFG, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %19, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.rs5c372* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @rs5c_get_regs(%struct.rs5c372*) #1

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local i32 @rs5c_reg2hr(%struct.rs5c372*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
