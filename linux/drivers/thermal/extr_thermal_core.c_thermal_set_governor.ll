; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_thermal_set_governor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_core.c_thermal_set_governor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.thermal_governor* }
%struct.thermal_governor = type { i32 (%struct.thermal_zone_device*)*, i32, i32 (%struct.thermal_zone_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, %struct.thermal_governor*)* @thermal_set_governor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thermal_set_governor(%struct.thermal_zone_device* %0, %struct.thermal_governor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.thermal_governor*, align 8
  %6 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store %struct.thermal_governor* %1, %struct.thermal_governor** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %8 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %7, i32 0, i32 0
  %9 = load %struct.thermal_governor*, %struct.thermal_governor** %8, align 8
  %10 = icmp ne %struct.thermal_governor* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %13 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %12, i32 0, i32 0
  %14 = load %struct.thermal_governor*, %struct.thermal_governor** %13, align 8
  %15 = getelementptr inbounds %struct.thermal_governor, %struct.thermal_governor* %14, i32 0, i32 2
  %16 = load i32 (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*)** %15, align 8
  %17 = icmp ne i32 (%struct.thermal_zone_device*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %20 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %19, i32 0, i32 0
  %21 = load %struct.thermal_governor*, %struct.thermal_governor** %20, align 8
  %22 = getelementptr inbounds %struct.thermal_governor, %struct.thermal_governor* %21, i32 0, i32 2
  %23 = load i32 (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*)** %22, align 8
  %24 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %25 = call i32 %23(%struct.thermal_zone_device* %24)
  br label %26

26:                                               ; preds = %18, %11, %2
  %27 = load %struct.thermal_governor*, %struct.thermal_governor** %5, align 8
  %28 = icmp ne %struct.thermal_governor* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load %struct.thermal_governor*, %struct.thermal_governor** %5, align 8
  %31 = getelementptr inbounds %struct.thermal_governor, %struct.thermal_governor* %30, i32 0, i32 0
  %32 = load i32 (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*)** %31, align 8
  %33 = icmp ne i32 (%struct.thermal_zone_device*)* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.thermal_governor*, %struct.thermal_governor** %5, align 8
  %36 = getelementptr inbounds %struct.thermal_governor, %struct.thermal_governor* %35, i32 0, i32 0
  %37 = load i32 (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*)** %36, align 8
  %38 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %39 = call i32 %37(%struct.thermal_zone_device* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %44 = load %struct.thermal_governor*, %struct.thermal_governor** %5, align 8
  %45 = getelementptr inbounds %struct.thermal_governor, %struct.thermal_governor* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bind_previous_governor(%struct.thermal_zone_device* %43, i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %55

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %29, %26
  %51 = load %struct.thermal_governor*, %struct.thermal_governor** %5, align 8
  %52 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %53 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %52, i32 0, i32 0
  store %struct.thermal_governor* %51, %struct.thermal_governor** %53, align 8
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %42
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @bind_previous_governor(%struct.thermal_zone_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
