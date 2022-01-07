; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_oc_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_oc_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_soctherm = type { i64 }

@OC_INTR_ENABLE = common dso_local global i64 0, align 8
@OC_INTR_OC1_MASK = common dso_local global i32 0, align 4
@OC_INTR_OC2_MASK = common dso_local global i32 0, align 4
@OC_INTR_OC3_MASK = common dso_local global i32 0, align 4
@OC_INTR_OC4_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_soctherm*, i32, i32)* @soctherm_oc_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soctherm_oc_intr_enable(%struct.tegra_soctherm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tegra_soctherm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_soctherm* %0, %struct.tegra_soctherm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %44

11:                                               ; preds = %3
  %12 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OC_INTR_ENABLE, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %35 [
    i32 131, label %19
    i32 130, label %23
    i32 129, label %27
    i32 128, label %31
  ]

19:                                               ; preds = %11
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @OC_INTR_OC1_MASK, align 4
  %22 = call i32 @REG_SET_MASK(i32 %20, i32 %21, i32 1)
  store i32 %22, i32* %7, align 4
  br label %36

23:                                               ; preds = %11
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @OC_INTR_OC2_MASK, align 4
  %26 = call i32 @REG_SET_MASK(i32 %24, i32 %25, i32 1)
  store i32 %26, i32* %7, align 4
  br label %36

27:                                               ; preds = %11
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @OC_INTR_OC3_MASK, align 4
  %30 = call i32 @REG_SET_MASK(i32 %28, i32 %29, i32 1)
  store i32 %30, i32* %7, align 4
  br label %36

31:                                               ; preds = %11
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @OC_INTR_OC4_MASK, align 4
  %34 = call i32 @REG_SET_MASK(i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %7, align 4
  br label %36

35:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %31, %27, %23, %19
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OC_INTR_ENABLE, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  br label %44

44:                                               ; preds = %36, %10
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @REG_SET_MASK(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
