; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_set_trips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_set_trips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_gen3_thermal_tsc = type { i32, i32 }

@REG_GEN3_IRQTEMP1 = common dso_local global i32 0, align 4
@REG_GEN3_IRQTEMP2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @rcar_gen3_thermal_set_trips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gen3_thermal_set_trips(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rcar_gen3_thermal_tsc*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rcar_gen3_thermal_tsc*
  store %struct.rcar_gen3_thermal_tsc* %9, %struct.rcar_gen3_thermal_tsc** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @clamp_val(i32 %10, i32 -40000, i32 120000)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @clamp_val(i32 %12, i32 -40000, i32 120000)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %7, align 8
  %15 = load i32, i32* @REG_GEN3_IRQTEMP1, align 4
  %16 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @rcar_gen3_thermal_mcelsius_to_temp(%struct.rcar_gen3_thermal_tsc* %16, i32 %17)
  %19 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %14, i32 %15, i32 %18)
  %20 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %7, align 8
  %21 = load i32, i32* @REG_GEN3_IRQTEMP2, align 4
  %22 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @rcar_gen3_thermal_mcelsius_to_temp(%struct.rcar_gen3_thermal_tsc* %22, i32 %23)
  %25 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %20, i32 %21, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %7, align 8
  %28 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %7, align 8
  %31 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  ret i32 0
}

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc*, i32, i32) #1

declare dso_local i32 @rcar_gen3_thermal_mcelsius_to_temp(%struct.rcar_gen3_thermal_tsc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
