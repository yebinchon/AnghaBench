; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_mc_to_reg_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_mc_to_reg_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_thermal_data = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.armada_thermal_data*, i32)* @armada_mc_to_reg_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_mc_to_reg_temp(%struct.armada_thermal_data* %0, i32 %1) #0 {
  %3 = alloca %struct.armada_thermal_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.armada_thermal_data* %0, %struct.armada_thermal_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %10 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %13 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %16 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %19 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @div_s64(i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = mul i32 %32, %33
  %35 = sub i32 %31, %34
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @div_s64(i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %30, %22
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %41 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %39, %42
  ret i32 %43
}

declare dso_local i32 @div_s64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
