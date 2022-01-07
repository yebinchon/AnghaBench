; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ipaq_micro_battery.c_get_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ipaq_micro_battery.c_get_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.micro_battery = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*)* @get_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_capacity(%struct.power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.power_supply*, align 8
  %4 = alloca %struct.micro_battery*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %3, align 8
  %5 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %6 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.micro_battery* @dev_get_drvdata(i32 %8)
  store %struct.micro_battery* %9, %struct.micro_battery** %4, align 8
  %10 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %11 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 7
  switch i32 %13, label %17 [
    i32 129, label %14
    i32 128, label %15
    i32 130, label %16
  ]

14:                                               ; preds = %1
  store i32 100, i32* %2, align 4
  br label %19

15:                                               ; preds = %1
  store i32 50, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  store i32 5, i32* %2, align 4
  br label %19

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %16, %15, %14
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.micro_battery* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
