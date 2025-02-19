; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_tsensor_group_thermtrip_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_tsensor_group_thermtrip_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_soctherm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.tsensor_group_thermtrips* }
%struct.tsensor_group_thermtrips = type { i32, i32 }

@min_low_temp = common dso_local global i32 0, align 4
@TEGRA124_SOCTHERM_SENSOR_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_soctherm*, i32)* @tsensor_group_thermtrip_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsensor_group_thermtrip_get(%struct.tegra_soctherm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_soctherm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tsensor_group_thermtrips*, align 8
  store %struct.tegra_soctherm* %0, %struct.tegra_soctherm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @min_low_temp, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.tsensor_group_thermtrips*, %struct.tsensor_group_thermtrips** %13, align 8
  store %struct.tsensor_group_thermtrips* %14, %struct.tsensor_group_thermtrips** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @TEGRA124_SOCTHERM_SENSOR_NUM, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.tsensor_group_thermtrips*, %struct.tsensor_group_thermtrips** %8, align 8
  %22 = icmp ne %struct.tsensor_group_thermtrips* %21, null
  br i1 %22, label %23, label %53

23:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %49, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %24
  %33 = load %struct.tsensor_group_thermtrips*, %struct.tsensor_group_thermtrips** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tsensor_group_thermtrips, %struct.tsensor_group_thermtrips* %33, i64 %35
  %37 = getelementptr inbounds %struct.tsensor_group_thermtrips, %struct.tsensor_group_thermtrips* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.tsensor_group_thermtrips*, %struct.tsensor_group_thermtrips** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.tsensor_group_thermtrips, %struct.tsensor_group_thermtrips* %42, i64 %44
  %46 = getelementptr inbounds %struct.tsensor_group_thermtrips, %struct.tsensor_group_thermtrips* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %3, align 4
  br label %55

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %24

52:                                               ; preds = %24
  br label %53

53:                                               ; preds = %52, %20
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %41, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
