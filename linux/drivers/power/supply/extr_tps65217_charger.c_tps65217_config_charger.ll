; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_tps65217_charger.c_tps65217_config_charger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_tps65217_charger.c_tps65217_config_charger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65217_charger = type { i32, i32 }

@TPS65217_REG_CHGCONFIG1 = common dso_local global i32 0, align 4
@TPS65217_CHGCONFIG1_NTC_TYPE = common dso_local global i32 0, align 4
@TPS65217_PROTECT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to set 100k NTC setting: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65217_charger*)* @tps65217_config_charger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65217_config_charger(%struct.tps65217_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tps65217_charger*, align 8
  %4 = alloca i32, align 4
  store %struct.tps65217_charger* %0, %struct.tps65217_charger** %3, align 8
  %5 = load %struct.tps65217_charger*, %struct.tps65217_charger** %3, align 8
  %6 = getelementptr inbounds %struct.tps65217_charger, %struct.tps65217_charger* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TPS65217_REG_CHGCONFIG1, align 4
  %9 = load i32, i32* @TPS65217_CHGCONFIG1_NTC_TYPE, align 4
  %10 = load i32, i32* @TPS65217_PROTECT_NONE, align 4
  %11 = call i32 @tps65217_clear_bits(i32 %7, i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.tps65217_charger*, %struct.tps65217_charger** %3, align 8
  %16 = getelementptr inbounds %struct.tps65217_charger, %struct.tps65217_charger* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %14
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @tps65217_clear_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
