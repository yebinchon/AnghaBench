; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_thermal.c_rcar_thermal_get_current_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_thermal.c_rcar_thermal_get_current_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_thermal_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"it couldn't measure temperature correctly\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_thermal_priv*, i32*)* @rcar_thermal_get_current_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_thermal_get_current_temp(%struct.rcar_thermal_priv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcar_thermal_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.rcar_thermal_priv* %0, %struct.rcar_thermal_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %4, align 8
  %10 = call i32 @rcar_thermal_update_temp(%struct.rcar_thermal_priv* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %74

15:                                               ; preds = %2
  %16 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %4, align 8
  %17 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %4, align 8
  %20 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %4, align 8
  %27 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %28, 5
  %30 = sub nsw i32 %29, 65
  %31 = call i32 @MCELSIUS(i32 %30)
  store i32 %31, i32* %6, align 4
  br label %53

32:                                               ; preds = %15
  %33 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %4, align 8
  %34 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 24
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %4, align 8
  %39 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 55
  %42 = sub nsw i32 %41, 720
  %43 = sdiv i32 %42, 10
  %44 = call i32 @MCELSIUS(i32 %43)
  store i32 %44, i32* %6, align 4
  br label %52

45:                                               ; preds = %32
  %46 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %4, align 8
  %47 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %48, 5
  %50 = sub nsw i32 %49, 60
  %51 = call i32 @MCELSIUS(i32 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %45, %37
  br label %53

53:                                               ; preds = %52, %25
  %54 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %4, align 8
  %55 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @MCELSIUS(i32 -45)
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @MCELSIUS(i32 125)
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60, %53
  %65 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %4, align 8
  %66 = call %struct.device* @rcar_priv_to_dev(%struct.rcar_thermal_priv* %65)
  store %struct.device* %66, %struct.device** %8, align 8
  %67 = load %struct.device*, %struct.device** %8, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %74

71:                                               ; preds = %60
  %72 = load i32, i32* %6, align 4
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %64, %13
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @rcar_thermal_update_temp(%struct.rcar_thermal_priv*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @MCELSIUS(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.device* @rcar_priv_to_dev(%struct.rcar_thermal_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
