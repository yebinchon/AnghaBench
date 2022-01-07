; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_gen3_thermal_priv = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@REG_GEN3_IRQSTR = common dso_local global i32 0, align 4
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rcar_gen3_thermal_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gen3_thermal_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rcar_gen3_thermal_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rcar_gen3_thermal_priv*
  store %struct.rcar_gen3_thermal_priv* %9, %struct.rcar_gen3_thermal_priv** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %50, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %5, align 8
  %13 = getelementptr inbounds %struct.rcar_gen3_thermal_priv, %struct.rcar_gen3_thermal_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %10
  %17 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %5, align 8
  %18 = getelementptr inbounds %struct.rcar_gen3_thermal_priv, %struct.rcar_gen3_thermal_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* @REG_GEN3_IRQSTR, align 4
  %25 = call i64 @rcar_gen3_thermal_read(%struct.TYPE_3__* %23, i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %5, align 8
  %27 = getelementptr inbounds %struct.rcar_gen3_thermal_priv, %struct.rcar_gen3_thermal_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %28, i64 %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* @REG_GEN3_IRQSTR, align 4
  %34 = call i32 @rcar_gen3_thermal_write(%struct.TYPE_3__* %32, i32 %33, i32 0)
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %16
  %38 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %5, align 8
  %39 = getelementptr inbounds %struct.rcar_gen3_thermal_priv, %struct.rcar_gen3_thermal_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %40, i64 %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %48 = call i32 @thermal_zone_device_update(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %37, %16
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %10

53:                                               ; preds = %10
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %54
}

declare dso_local i64 @rcar_gen3_thermal_read(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @rcar_gen3_thermal_write(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @thermal_zone_device_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
