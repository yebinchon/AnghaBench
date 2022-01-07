; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_mcelsius_to_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_mcelsius_to_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_gen3_thermal_tsc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_gen3_thermal_tsc*, i32)* @rcar_gen3_thermal_mcelsius_to_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gen3_thermal_mcelsius_to_temp(%struct.rcar_gen3_thermal_tsc* %0, i32 %1) #0 {
  %3 = alloca %struct.rcar_gen3_thermal_tsc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rcar_gen3_thermal_tsc* %0, %struct.rcar_gen3_thermal_tsc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @DIV_ROUND_CLOSEST(i32 %7, i32 1000)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %3, align 8
  %11 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @INT_FIXPT(i32 %12)
  %14 = icmp sle i32 %9, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %3, align 8
  %18 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %16, %20
  %22 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %3, align 8
  %23 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %6, align 4
  br label %39

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %3, align 8
  %30 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %28, %32
  %34 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %3, align 8
  %35 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %33, %37
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %27, %15
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @INT_FIXPT(i32 %40)
  ret i32 %41
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @INT_FIXPT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
