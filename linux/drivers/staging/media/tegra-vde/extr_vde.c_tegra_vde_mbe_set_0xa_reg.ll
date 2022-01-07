; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_mbe_set_0xa_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_mbe_set_0xa_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_vde = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_vde*, i32, i32)* @tegra_vde_mbe_set_0xa_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_vde_mbe_set_0xa_reg(%struct.tegra_vde* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tegra_vde*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_vde* %0, %struct.tegra_vde** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = shl i32 %8, 24
  %10 = or i32 -1610612736, %9
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 65535
  %13 = or i32 %10, %12
  %14 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @tegra_vde_writel(%struct.tegra_vde* %7, i32 %13, i32 %16, i32 128)
  %18 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  %21 = shl i32 %20, 24
  %22 = or i32 -1610612736, %21
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 16
  %25 = or i32 %22, %24
  %26 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @tegra_vde_writel(%struct.tegra_vde* %18, i32 %25, i32 %28, i32 128)
  ret void
}

declare dso_local i32 @tegra_vde_writel(%struct.tegra_vde*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
