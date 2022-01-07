; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_gpd-pocket-fan.c_gpd_pocket_fan_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_gpd-pocket-fan.c_gpd_pocket_fan_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpd_pocket_fan_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpd_pocket_fan_data*, i32)* @gpd_pocket_fan_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpd_pocket_fan_set_speed(%struct.gpd_pocket_fan_data* %0, i32 %1) #0 {
  %3 = alloca %struct.gpd_pocket_fan_data*, align 8
  %4 = alloca i32, align 4
  store %struct.gpd_pocket_fan_data* %0, %struct.gpd_pocket_fan_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %3, align 8
  %7 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %35

11:                                               ; preds = %2
  %12 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %3, align 8
  %13 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @gpiod_direction_output(i32 %14, i32 %20)
  %22 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %3, align 8
  %23 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @gpiod_direction_output(i32 %24, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %3, align 8
  %34 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
