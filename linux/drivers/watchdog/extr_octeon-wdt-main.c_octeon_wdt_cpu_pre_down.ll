; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_octeon-wdt-main.c_octeon_wdt_cpu_pre_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_octeon-wdt-main.c_octeon_wdt_cpu_pre_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_ciu_wdogx = type { i32 }

@octeon_wdt_poke_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @octeon_wdt_cpu_pre_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_wdt_cpu_pre_down(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_ciu_wdogx, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @cpu2core(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @cpu_to_node(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @CVMX_CIU_PP_POKEX(i32 %11)
  %13 = call i32 @cvmx_write_csr_node(i32 %10, i32 %12, i32 1)
  %14 = bitcast %union.cvmx_ciu_wdogx* %5 to i32*
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @CVMX_CIU_WDOGX(i32 %16)
  %18 = bitcast %union.cvmx_ciu_wdogx* %5 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cvmx_write_csr_node(i32 %15, i32 %17, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @octeon_wdt_cpu_to_irq(i32 %21)
  %23 = load i32, i32* @octeon_wdt_poke_irq, align 4
  %24 = call i32 @free_irq(i32 %22, i32 %23)
  ret i32 0
}

declare dso_local i32 @cpu2core(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @cvmx_write_csr_node(i32, i32, i32) #1

declare dso_local i32 @CVMX_CIU_PP_POKEX(i32) #1

declare dso_local i32 @CVMX_CIU_WDOGX(i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @octeon_wdt_cpu_to_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
