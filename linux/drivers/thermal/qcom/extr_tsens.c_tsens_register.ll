; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens.c_tsens_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens.c_tsens_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.tsens_priv*, i32)* }
%struct.TYPE_4__ = type { i32, %struct.thermal_zone_device*, %struct.tsens_priv* }
%struct.thermal_zone_device = type { i32 }

@tsens_of_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsens_priv*)* @tsens_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsens_register(%struct.tsens_priv* %0) #0 {
  %2 = alloca %struct.tsens_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  store %struct.tsens_priv* %0, %struct.tsens_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %68, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %8 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %71

11:                                               ; preds = %5
  %12 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %13 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %14 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store %struct.tsens_priv* %12, %struct.tsens_priv** %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %22 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %20, i32* %27, align 8
  %28 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %29 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %33 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = call %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(i32 %30, i32 %31, %struct.TYPE_4__* %37, i32* @tsens_of_ops)
  store %struct.thermal_zone_device* %38, %struct.thermal_zone_device** %4, align 8
  %39 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %40 = call i64 @IS_ERR(%struct.thermal_zone_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %11
  br label %68

43:                                               ; preds = %11
  %44 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %45 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %46 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store %struct.thermal_zone_device* %44, %struct.thermal_zone_device** %51, align 8
  %52 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %53 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.tsens_priv*, i32)*, i32 (%struct.tsens_priv*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.tsens_priv*, i32)* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %43
  %59 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %60 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.tsens_priv*, i32)*, i32 (%struct.tsens_priv*, i32)** %62, align 8
  %64 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 %63(%struct.tsens_priv* %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %43
  br label %68

68:                                               ; preds = %67, %42
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %5

71:                                               ; preds = %5
  ret i32 0
}

declare dso_local %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(i32, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
