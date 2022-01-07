; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_leds.c_power_supply_create_gen_triggers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_leds.c_power_supply_create_gen_triggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s-online\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*)* @power_supply_create_gen_triggers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_supply_create_gen_triggers(%struct.power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %6 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kasprintf(i32 %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %12 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %14 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %22 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %25 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %24, i32 0, i32 0
  %26 = call i32 @led_trigger_register_simple(i32 %23, i32* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @led_trigger_register_simple(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
