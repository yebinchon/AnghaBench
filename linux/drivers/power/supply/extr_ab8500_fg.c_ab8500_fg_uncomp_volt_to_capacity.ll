; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_uncomp_volt_to_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_uncomp_volt_to_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_fg*)* @ab8500_fg_uncomp_volt_to_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_fg_uncomp_volt_to_capacity(%struct.ab8500_fg* %0) #0 {
  %2 = alloca %struct.ab8500_fg*, align 8
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %2, align 8
  %3 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %4 = call i32 @ab8500_fg_bat_voltage(%struct.ab8500_fg* %3)
  %5 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %6 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  %7 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %8 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %9 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ab8500_fg_volt_to_capacity(%struct.ab8500_fg* %7, i32 %10)
  ret i32 %11
}

declare dso_local i32 @ab8500_fg_bat_voltage(%struct.ab8500_fg*) #1

declare dso_local i32 @ab8500_fg_volt_to_capacity(%struct.ab8500_fg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
