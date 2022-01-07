; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_find_by_route.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_find_by_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32 }
%struct.tb = type { i32 }
%struct.tb_sw_lookup = type { i64, %struct.tb* }
%struct.device = type { i32 }

@tb_bus_type = common dso_local global i32 0, align 4
@tb_switch_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_switch* @tb_switch_find_by_route(%struct.tb* %0, i64 %1) #0 {
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca %struct.tb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tb_sw_lookup, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.tb* %0, %struct.tb** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.tb*, %struct.tb** %4, align 8
  %12 = getelementptr inbounds %struct.tb, %struct.tb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.tb_switch* @tb_switch_get(i32 %13)
  store %struct.tb_switch* %14, %struct.tb_switch** %3, align 8
  br label %29

15:                                               ; preds = %2
  %16 = call i32 @memset(%struct.tb_sw_lookup* %6, i32 0, i32 16)
  %17 = load %struct.tb*, %struct.tb** %4, align 8
  %18 = getelementptr inbounds %struct.tb_sw_lookup, %struct.tb_sw_lookup* %6, i32 0, i32 1
  store %struct.tb* %17, %struct.tb** %18, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.tb_sw_lookup, %struct.tb_sw_lookup* %6, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* @tb_switch_match, align 4
  %22 = call %struct.device* @bus_find_device(i32* @tb_bus_type, i32* null, %struct.tb_sw_lookup* %6, i32 %21)
  store %struct.device* %22, %struct.device** %7, align 8
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = icmp ne %struct.device* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = call %struct.tb_switch* @tb_to_switch(%struct.device* %26)
  store %struct.tb_switch* %27, %struct.tb_switch** %3, align 8
  br label %29

28:                                               ; preds = %15
  store %struct.tb_switch* null, %struct.tb_switch** %3, align 8
  br label %29

29:                                               ; preds = %28, %25, %10
  %30 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  ret %struct.tb_switch* %30
}

declare dso_local %struct.tb_switch* @tb_switch_get(i32) #1

declare dso_local i32 @memset(%struct.tb_sw_lookup*, i32, i32) #1

declare dso_local %struct.device* @bus_find_device(i32*, i32*, %struct.tb_sw_lookup*, i32) #1

declare dso_local %struct.tb_switch* @tb_to_switch(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
