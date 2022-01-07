; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-battery.c_sbs_supply_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-battery.c_sbs_supply_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbs_info = type { i32, i32, %struct.power_supply* }
%struct.power_supply = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbs_info*)* @sbs_supply_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbs_supply_changed(%struct.sbs_info* %0) #0 {
  %2 = alloca %struct.sbs_info*, align 8
  %3 = alloca %struct.power_supply*, align 8
  %4 = alloca i32, align 4
  store %struct.sbs_info* %0, %struct.sbs_info** %2, align 8
  %5 = load %struct.sbs_info*, %struct.sbs_info** %2, align 8
  %6 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %5, i32 0, i32 2
  %7 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  store %struct.power_supply* %7, %struct.power_supply** %3, align 8
  %8 = load %struct.sbs_info*, %struct.sbs_info** %2, align 8
  %9 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gpiod_get_value_cansleep(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.sbs_info*, %struct.sbs_info** %2, align 8
  %18 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %20 = call i32 @power_supply_changed(%struct.power_supply* %19)
  br label %21

21:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @power_supply_changed(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
