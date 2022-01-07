; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_property_is_writeable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_property_is_writeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%struct.gb_power_supply = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32)* @property_is_writeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_is_writeable(%struct.power_supply* %0, i32 %1) #0 {
  %3 = alloca %struct.power_supply*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_power_supply*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %7 = call %struct.gb_power_supply* @to_gb_power_supply(%struct.power_supply* %6)
  store %struct.gb_power_supply* %7, %struct.gb_power_supply** %5, align 8
  %8 = load %struct.gb_power_supply*, %struct.gb_power_supply** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @is_psy_prop_writeable(%struct.gb_power_supply* %8, i32 %9)
  ret i32 %10
}

declare dso_local %struct.gb_power_supply* @to_gb_power_supply(%struct.power_supply*) #1

declare dso_local i32 @is_psy_prop_writeable(%struct.gb_power_supply*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
