; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_gen3_thermal_tsc = type { i32 }

@REG_GEN3_THCTR = common dso_local global i32 0, align 4
@THCTR_PONM = common dso_local global i32 0, align 4
@REG_GEN3_IRQCTL = common dso_local global i32 0, align 4
@REG_GEN3_IRQMSK = common dso_local global i32 0, align 4
@REG_GEN3_IRQEN = common dso_local global i32 0, align 4
@IRQ_TEMPD1 = common dso_local global i32 0, align 4
@IRQ_TEMP2 = common dso_local global i32 0, align 4
@THCTR_THSST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_gen3_thermal_tsc*)* @rcar_gen3_thermal_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_gen3_thermal_init(%struct.rcar_gen3_thermal_tsc* %0) #0 {
  %2 = alloca %struct.rcar_gen3_thermal_tsc*, align 8
  %3 = alloca i32, align 4
  store %struct.rcar_gen3_thermal_tsc* %0, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %4 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %5 = load i32, i32* @REG_GEN3_THCTR, align 4
  %6 = call i32 @rcar_gen3_thermal_read(%struct.rcar_gen3_thermal_tsc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @THCTR_PONM, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %12 = load i32, i32* @REG_GEN3_THCTR, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %11, i32 %12, i32 %13)
  %15 = call i32 @usleep_range(i32 1000, i32 2000)
  %16 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %17 = load i32, i32* @REG_GEN3_IRQCTL, align 4
  %18 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %16, i32 %17, i32 0)
  %19 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %20 = load i32, i32* @REG_GEN3_IRQMSK, align 4
  %21 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %19, i32 %20, i32 0)
  %22 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %23 = load i32, i32* @REG_GEN3_IRQEN, align 4
  %24 = load i32, i32* @IRQ_TEMPD1, align 4
  %25 = load i32, i32* @IRQ_TEMP2, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %22, i32 %23, i32 %26)
  %28 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %29 = load i32, i32* @REG_GEN3_THCTR, align 4
  %30 = call i32 @rcar_gen3_thermal_read(%struct.rcar_gen3_thermal_tsc* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @THCTR_THSST, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %35 = load i32, i32* @REG_GEN3_THCTR, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %34, i32 %35, i32 %36)
  %38 = call i32 @usleep_range(i32 1000, i32 2000)
  ret void
}

declare dso_local i32 @rcar_gen3_thermal_read(%struct.rcar_gen3_thermal_tsc*, i32) #1

declare dso_local i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
