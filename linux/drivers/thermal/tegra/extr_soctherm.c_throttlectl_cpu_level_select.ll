; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_throttlectl_cpu_level_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_throttlectl_cpu_level_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_soctherm = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@THROT_VECT_LOW = common dso_local global i32 0, align 4
@THROT_VECT_MED = common dso_local global i32 0, align 4
@THROT_VECT_HIGH = common dso_local global i32 0, align 4
@THROT_VECT_NONE = common dso_local global i32 0, align 4
@THROTTLE_DEV_CPU = common dso_local global i32 0, align 4
@THROT_PSKIP_CTRL_ENABLE_MASK = common dso_local global i32 0, align 4
@THROT_PSKIP_CTRL_VECT_CPU_MASK = common dso_local global i32 0, align 4
@THROT_PSKIP_CTRL_VECT2_CPU_MASK = common dso_local global i32 0, align 4
@THROT_PSKIP_RAMP_SEQ_BYPASS_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_soctherm*, i32)* @throttlectl_cpu_level_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throttlectl_cpu_level_select(%struct.tegra_soctherm* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_soctherm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_soctherm* %0, %struct.tegra_soctherm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %21 [
    i32 129, label %15
    i32 128, label %17
    i32 130, label %19
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @THROT_VECT_LOW, align 4
  store i32 %16, i32* %6, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @THROT_VECT_MED, align 4
  store i32 %18, i32* %6, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @THROT_VECT_HIGH, align 4
  store i32 %20, i32* %6, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @THROT_VECT_NONE, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %21, %19, %17, %15
  %24 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %25 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @THROTTLE_DEV_CPU, align 4
  %29 = call i64 @THROT_PSKIP_CTRL(i32 %27, i32 %28)
  %30 = add nsw i64 %26, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @THROT_PSKIP_CTRL_ENABLE_MASK, align 4
  %34 = call i32 @REG_SET_MASK(i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @THROT_PSKIP_CTRL_VECT_CPU_MASK, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @REG_SET_MASK(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @THROT_PSKIP_CTRL_VECT2_CPU_MASK, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @REG_SET_MASK(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @THROTTLE_DEV_CPU, align 4
  %49 = call i64 @THROT_PSKIP_CTRL(i32 %47, i32 %48)
  %50 = add nsw i64 %46, %49
  %51 = call i32 @writel(i32 %43, i64 %50)
  %52 = load i32, i32* @THROT_PSKIP_RAMP_SEQ_BYPASS_MODE_MASK, align 4
  %53 = call i32 @REG_SET_MASK(i32 0, i32 %52, i32 1)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %56 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @THROTTLE_DEV_CPU, align 4
  %60 = call i64 @THROT_PSKIP_RAMP(i32 %58, i32 %59)
  %61 = add nsw i64 %57, %60
  %62 = call i32 @writel(i32 %54, i64 %61)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @THROT_PSKIP_CTRL(i32, i32) #1

declare dso_local i32 @REG_SET_MASK(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @THROT_PSKIP_RAMP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
