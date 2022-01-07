; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_is_psy_prop_writeable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_is_psy_prop_writeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32 }
%struct.gb_power_supply_prop = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_power_supply*, i32)* @is_psy_prop_writeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_psy_prop_writeable(%struct.gb_power_supply* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_power_supply_prop*, align 8
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gb_power_supply*, %struct.gb_power_supply** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.gb_power_supply_prop* @get_psy_prop(%struct.gb_power_supply* %7, i32 %8)
  store %struct.gb_power_supply_prop* %9, %struct.gb_power_supply_prop** %6, align 8
  %10 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %6, align 8
  %11 = icmp ne %struct.gb_power_supply_prop* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %6, align 8
  %17 = getelementptr inbounds %struct.gb_power_supply_prop, %struct.gb_power_supply_prop* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %15, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.gb_power_supply_prop* @get_psy_prop(%struct.gb_power_supply*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
