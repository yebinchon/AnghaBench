; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_thermal_sensor = type { i32, %struct.armada_thermal_priv* }
%struct.armada_thermal_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @armada_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_get_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.armada_thermal_sensor*, align 8
  %6 = alloca %struct.armada_thermal_priv*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.armada_thermal_sensor*
  store %struct.armada_thermal_sensor* %9, %struct.armada_thermal_sensor** %5, align 8
  %10 = load %struct.armada_thermal_sensor*, %struct.armada_thermal_sensor** %5, align 8
  %11 = getelementptr inbounds %struct.armada_thermal_sensor, %struct.armada_thermal_sensor* %10, i32 0, i32 1
  %12 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %11, align 8
  store %struct.armada_thermal_priv* %12, %struct.armada_thermal_priv** %6, align 8
  %13 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %6, align 8
  %14 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %6, align 8
  %17 = load %struct.armada_thermal_sensor*, %struct.armada_thermal_sensor** %5, align 8
  %18 = getelementptr inbounds %struct.armada_thermal_sensor, %struct.armada_thermal_sensor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @armada_select_channel(%struct.armada_thermal_priv* %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %6, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @armada_read_sensor(%struct.armada_thermal_priv* %25, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %37

31:                                               ; preds = %24
  %32 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %6, align 8
  %33 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %6, align 8
  %34 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @armada_select_channel(%struct.armada_thermal_priv* %32, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %31, %30, %23
  %38 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %6, align 8
  %39 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @armada_select_channel(%struct.armada_thermal_priv*, i32) #1

declare dso_local i32 @armada_read_sensor(%struct.armada_thermal_priv*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
