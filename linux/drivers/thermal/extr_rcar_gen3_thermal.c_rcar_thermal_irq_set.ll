; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_thermal_irq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_thermal_irq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_gen3_thermal_priv = type { i32, i32* }

@IRQ_TEMPD1 = common dso_local global i32 0, align 4
@IRQ_TEMP2 = common dso_local global i32 0, align 4
@REG_GEN3_IRQMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_gen3_thermal_priv*, i32)* @rcar_thermal_irq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_thermal_irq_set(%struct.rcar_gen3_thermal_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rcar_gen3_thermal_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rcar_gen3_thermal_priv* %0, %struct.rcar_gen3_thermal_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @IRQ_TEMPD1, align 4
  %11 = load i32, i32* @IRQ_TEMP2, align 4
  %12 = or i32 %10, %11
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ %12, %9 ], [ 0, %13 ]
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %33, %14
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %3, align 8
  %19 = getelementptr inbounds %struct.rcar_gen3_thermal_priv, %struct.rcar_gen3_thermal_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rcar_gen3_thermal_priv, %struct.rcar_gen3_thermal_priv* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @REG_GEN3_IRQMSK, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @rcar_gen3_thermal_write(i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %16

36:                                               ; preds = %16
  ret void
}

declare dso_local i32 @rcar_gen3_thermal_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
