; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_throttlectl_gpu_level_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_throttlectl_gpu_level_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_soctherm = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@THROTTLE_DEV_GPU = common dso_local global i32 0, align 4
@THROT_PSKIP_CTRL_ENABLE_MASK = common dso_local global i32 0, align 4
@THROT_PSKIP_CTRL_VECT_GPU_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_soctherm*, i32)* @throttlectl_gpu_level_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throttlectl_gpu_level_select(%struct.tegra_soctherm* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_soctherm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_soctherm* %0, %struct.tegra_soctherm** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @THROT_LEVEL_TO_DEPTH(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @THROTTLE_DEV_GPU, align 4
  %23 = call i64 @THROT_PSKIP_CTRL(i32 %21, i32 %22)
  %24 = add nsw i64 %20, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @THROT_PSKIP_CTRL_ENABLE_MASK, align 4
  %28 = call i32 @REG_SET_MASK(i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @THROT_PSKIP_CTRL_VECT_GPU_MASK, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @REG_SET_MASK(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %35 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @THROTTLE_DEV_GPU, align 4
  %39 = call i64 @THROT_PSKIP_CTRL(i32 %37, i32 %38)
  %40 = add nsw i64 %36, %39
  %41 = call i32 @writel(i32 %33, i64 %40)
  ret void
}

declare dso_local i32 @THROT_LEVEL_TO_DEPTH(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @THROT_PSKIP_CTRL(i32, i32) #1

declare dso_local i32 @REG_SET_MASK(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
