; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_gpio_update_dual_edge_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_gpio_update_dual_edge_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_pinctrl = type { i32 }
%struct.msm_pingroup = type { i32, i32 }
%struct.irq_data = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"dual-edge irq failed to stabilize, %#08x != %#08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_pinctrl*, %struct.msm_pingroup*, %struct.irq_data*)* @msm_gpio_update_dual_edge_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_gpio_update_dual_edge_pos(%struct.msm_pinctrl* %0, %struct.msm_pingroup* %1, %struct.irq_data* %2) #0 {
  %4 = alloca %struct.msm_pinctrl*, align 8
  %5 = alloca %struct.msm_pingroup*, align 8
  %6 = alloca %struct.irq_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.msm_pinctrl* %0, %struct.msm_pinctrl** %4, align 8
  store %struct.msm_pingroup* %1, %struct.msm_pingroup** %5, align 8
  store %struct.irq_data* %2, %struct.irq_data** %6, align 8
  store i32 100, i32* %7, align 4
  br label %12

12:                                               ; preds = %53, %3
  %13 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %4, align 8
  %14 = load %struct.msm_pingroup*, %struct.msm_pingroup** %5, align 8
  %15 = call i32 @msm_readl_io(%struct.msm_pinctrl* %13, %struct.msm_pingroup* %14)
  %16 = load %struct.msm_pingroup*, %struct.msm_pingroup** %5, align 8
  %17 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = and i32 %15, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %4, align 8
  %22 = load %struct.msm_pingroup*, %struct.msm_pingroup** %5, align 8
  %23 = call i32 @msm_readl_intr_cfg(%struct.msm_pinctrl* %21, %struct.msm_pingroup* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.msm_pingroup*, %struct.msm_pingroup** %5, align 8
  %25 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = xor i32 %28, %27
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %4, align 8
  %32 = load %struct.msm_pingroup*, %struct.msm_pingroup** %5, align 8
  %33 = call i32 @msm_writel_intr_cfg(i32 %30, %struct.msm_pinctrl* %31, %struct.msm_pingroup* %32)
  %34 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %4, align 8
  %35 = load %struct.msm_pingroup*, %struct.msm_pingroup** %5, align 8
  %36 = call i32 @msm_readl_io(%struct.msm_pinctrl* %34, %struct.msm_pingroup* %35)
  %37 = load %struct.msm_pingroup*, %struct.msm_pingroup** %5, align 8
  %38 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = and i32 %36, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %4, align 8
  %43 = load %struct.msm_pingroup*, %struct.msm_pingroup** %5, align 8
  %44 = call i32 @msm_readl_intr_status(%struct.msm_pinctrl* %42, %struct.msm_pingroup* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %12
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %12
  br label %64

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  %56 = icmp sgt i32 %54, 0
  br i1 %56, label %12, label %57

57:                                               ; preds = %53
  %58 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %4, align 8
  %59 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %51
  ret void
}

declare dso_local i32 @msm_readl_io(%struct.msm_pinctrl*, %struct.msm_pingroup*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @msm_readl_intr_cfg(%struct.msm_pinctrl*, %struct.msm_pingroup*) #1

declare dso_local i32 @msm_writel_intr_cfg(i32, %struct.msm_pinctrl*, %struct.msm_pingroup*) #1

declare dso_local i32 @msm_readl_intr_status(%struct.msm_pinctrl*, %struct.msm_pingroup*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
