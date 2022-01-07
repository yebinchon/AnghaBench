; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_calc_cap_discharge_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_calc_cap_discharge_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_fg*, i32)* @ab8500_fg_calc_cap_discharge_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_fg_calc_cap_discharge_voltage(%struct.ab8500_fg* %0, i32 %1) #0 {
  %3 = alloca %struct.ab8500_fg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %11 = call i32 @ab8500_fg_load_comp_volt_to_capacity(%struct.ab8500_fg* %10)
  store i32 %11, i32* %5, align 4
  br label %15

12:                                               ; preds = %2
  %13 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %14 = call i32 @ab8500_fg_uncomp_volt_to_capacity(%struct.ab8500_fg* %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ab8500_fg_convert_permille_to_mah(%struct.ab8500_fg* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ab8500_fg_add_cap_sample(%struct.ab8500_fg* %19, i32 %20)
  %22 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %23 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %26 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %27 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ab8500_fg_convert_mah_to_permille(%struct.ab8500_fg* %25, i32 %29)
  %31 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %32 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %35 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  ret i32 %37
}

declare dso_local i32 @ab8500_fg_load_comp_volt_to_capacity(%struct.ab8500_fg*) #1

declare dso_local i32 @ab8500_fg_uncomp_volt_to_capacity(%struct.ab8500_fg*) #1

declare dso_local i32 @ab8500_fg_convert_permille_to_mah(%struct.ab8500_fg*, i32) #1

declare dso_local i32 @ab8500_fg_add_cap_sample(%struct.ab8500_fg*, i32) #1

declare dso_local i32 @ab8500_fg_convert_mah_to_permille(%struct.ab8500_fg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
