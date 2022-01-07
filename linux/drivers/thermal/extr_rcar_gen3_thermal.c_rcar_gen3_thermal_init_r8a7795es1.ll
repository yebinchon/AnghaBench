; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_init_r8a7795es1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_init_r8a7795es1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_gen3_thermal_tsc = type { i32 }

@REG_GEN3_CTSR = common dso_local global i32 0, align 4
@CTSR_THBGR = common dso_local global i32 0, align 4
@CTSR_PONM = common dso_local global i32 0, align 4
@REG_GEN3_IRQCTL = common dso_local global i32 0, align 4
@REG_GEN3_IRQMSK = common dso_local global i32 0, align 4
@REG_GEN3_IRQEN = common dso_local global i32 0, align 4
@IRQ_TEMPD1 = common dso_local global i32 0, align 4
@IRQ_TEMP2 = common dso_local global i32 0, align 4
@CTSR_AOUT = common dso_local global i32 0, align 4
@CTSR_VMEN = common dso_local global i32 0, align 4
@CTSR_VMST = common dso_local global i32 0, align 4
@CTSR_THSST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_gen3_thermal_tsc*)* @rcar_gen3_thermal_init_r8a7795es1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_gen3_thermal_init_r8a7795es1(%struct.rcar_gen3_thermal_tsc* %0) #0 {
  %2 = alloca %struct.rcar_gen3_thermal_tsc*, align 8
  store %struct.rcar_gen3_thermal_tsc* %0, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %3 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %4 = load i32, i32* @REG_GEN3_CTSR, align 4
  %5 = load i32, i32* @CTSR_THBGR, align 4
  %6 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %3, i32 %4, i32 %5)
  %7 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %8 = load i32, i32* @REG_GEN3_CTSR, align 4
  %9 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %7, i32 %8, i32 0)
  %10 = call i32 @usleep_range(i32 1000, i32 2000)
  %11 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %12 = load i32, i32* @REG_GEN3_CTSR, align 4
  %13 = load i32, i32* @CTSR_PONM, align 4
  %14 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %11, i32 %12, i32 %13)
  %15 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %16 = load i32, i32* @REG_GEN3_IRQCTL, align 4
  %17 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %15, i32 %16, i32 63)
  %18 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %19 = load i32, i32* @REG_GEN3_IRQMSK, align 4
  %20 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %18, i32 %19, i32 0)
  %21 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %22 = load i32, i32* @REG_GEN3_IRQEN, align 4
  %23 = load i32, i32* @IRQ_TEMPD1, align 4
  %24 = load i32, i32* @IRQ_TEMP2, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %21, i32 %22, i32 %25)
  %27 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %28 = load i32, i32* @REG_GEN3_CTSR, align 4
  %29 = load i32, i32* @CTSR_PONM, align 4
  %30 = load i32, i32* @CTSR_AOUT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CTSR_THBGR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CTSR_VMEN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %27, i32 %28, i32 %35)
  %37 = call i32 @usleep_range(i32 100, i32 200)
  %38 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %2, align 8
  %39 = load i32, i32* @REG_GEN3_CTSR, align 4
  %40 = load i32, i32* @CTSR_PONM, align 4
  %41 = load i32, i32* @CTSR_AOUT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CTSR_THBGR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CTSR_VMEN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CTSR_VMST, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CTSR_THSST, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc* %38, i32 %39, i32 %50)
  %52 = call i32 @usleep_range(i32 1000, i32 2000)
  ret void
}

declare dso_local i32 @rcar_gen3_thermal_write(%struct.rcar_gen3_thermal_tsc*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
