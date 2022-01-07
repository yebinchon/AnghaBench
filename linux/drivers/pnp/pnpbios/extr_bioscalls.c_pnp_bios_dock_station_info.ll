; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_bioscalls.c_pnp_bios_dock_station_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_bioscalls.c_pnp_bios_dock_station_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_docking_station_info = type { i32 }

@PNP_FUNCTION_NOT_SUPPORTED = common dso_local global i32 0, align 4
@PNP_GET_DOCKING_STATION_INFORMATION = common dso_local global i32 0, align 4
@PNP_TS1 = common dso_local global i32 0, align 4
@PNP_DS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnp_bios_dock_station_info(%struct.pnp_docking_station_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_docking_station_info*, align 8
  %4 = alloca i32, align 4
  store %struct.pnp_docking_station_info* %0, %struct.pnp_docking_station_info** %3, align 8
  %5 = call i32 (...) @pnp_bios_present()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @PNP_FUNCTION_NOT_SUPPORTED, align 4
  store i32 %8, i32* %2, align 4
  br label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @PNP_GET_DOCKING_STATION_INFORMATION, align 4
  %11 = load i32, i32* @PNP_TS1, align 4
  %12 = load i32, i32* @PNP_DS, align 4
  %13 = load %struct.pnp_docking_station_info*, %struct.pnp_docking_station_info** %3, align 8
  %14 = call i32 @call_pnp_bios(i32 %10, i32 0, i32 %11, i32 %12, i32 0, i32 0, i32 0, i32 0, %struct.pnp_docking_station_info* %13, i32 4, i32* null, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %9, %7
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @pnp_bios_present(...) #1

declare dso_local i32 @call_pnp_bios(i32, i32, i32, i32, i32, i32, i32, i32, %struct.pnp_docking_station_info*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
