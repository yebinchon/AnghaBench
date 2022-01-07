; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_flowctrl.c_flowctrl_cpu_suspend_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_flowctrl.c_flowctrl_cpu_suspend_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEGRA20_FLOW_CTRL_CSR_WFE_BITMAP = common dso_local global i32 0, align 4
@TEGRA20_FLOW_CTRL_CSR_WFI_BITMAP = common dso_local global i32 0, align 4
@TEGRA30_FLOW_CTRL_CSR_WFE_BITMAP = common dso_local global i32 0, align 4
@TEGRA30_FLOW_CTRL_CSR_WFI_BITMAP = common dso_local global i32 0, align 4
@FLOW_CTRL_CSR_ENABLE = common dso_local global i32 0, align 4
@FLOW_CTRL_CSR_INTR_FLAG = common dso_local global i32 0, align 4
@FLOW_CTRL_CSR_EVENT_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flowctrl_cpu_suspend_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @flowctrl_read_cpu_csr(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @tegra_get_chip_id()
  switch i32 %6, label %25 [
    i32 129, label %7
    i32 128, label %16
    i32 131, label %16
    i32 130, label %16
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @TEGRA20_FLOW_CTRL_CSR_WFE_BITMAP, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @TEGRA20_FLOW_CTRL_CSR_WFI_BITMAP, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %1, %1, %1
  %17 = load i32, i32* @TEGRA30_FLOW_CTRL_CSR_WFE_BITMAP, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @TEGRA30_FLOW_CTRL_CSR_WFI_BITMAP, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %1, %16, %7
  %26 = load i32, i32* @FLOW_CTRL_CSR_ENABLE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @FLOW_CTRL_CSR_INTR_FLAG, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @FLOW_CTRL_CSR_EVENT_FLAG, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @flowctrl_write_cpu_csr(i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @flowctrl_read_cpu_csr(i32) #1

declare dso_local i32 @tegra_get_chip_id(...) #1

declare dso_local i32 @flowctrl_write_cpu_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
