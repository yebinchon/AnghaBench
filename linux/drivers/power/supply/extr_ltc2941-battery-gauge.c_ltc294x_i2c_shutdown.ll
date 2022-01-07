; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_i2c_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_i2c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ltc294x_info = type { i64, i32 }

@LTC2941_ID = common dso_local global i64 0, align 8
@LTC294X_REG_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @ltc294x_i2c_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltc294x_i2c_shutdown(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.ltc294x_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call %struct.ltc294x_info* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.ltc294x_info* %8, %struct.ltc294x_info** %3, align 8
  %9 = load %struct.ltc294x_info*, %struct.ltc294x_info** %3, align 8
  %10 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LTC2941_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.ltc294x_info*, %struct.ltc294x_info** %3, align 8
  %17 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @LTC294X_REG_CONTROL, align 4
  %20 = call i32 @ltc294x_read_regs(i32 %18, i32 %19, i64* %5, i32 1)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %36

24:                                               ; preds = %15
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @LTC294X_REG_CONTROL_ADC_DISABLE(i64 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.ltc294x_info*, %struct.ltc294x_info** %3, align 8
  %32 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @LTC294X_REG_CONTROL, align 4
  %35 = call i32 @ltc294x_write_regs(i32 %33, i32 %34, i64* %6, i32 1)
  br label %36

36:                                               ; preds = %14, %23, %30, %24
  ret void
}

declare dso_local %struct.ltc294x_info* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ltc294x_read_regs(i32, i32, i64*, i32) #1

declare dso_local i64 @LTC294X_REG_CONTROL_ADC_DISABLE(i64) #1

declare dso_local i32 @ltc294x_write_regs(i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
