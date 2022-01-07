; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_power_allocator.c_estimate_pid_constants.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_power_allocator.c_estimate_pid_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.thermal_zone_device*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thermal_zone_device*, i32, i32, i32, i32)* @estimate_pid_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @estimate_pid_constants(%struct.thermal_zone_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.thermal_zone_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %15 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %17, align 8
  %19 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 %18(%struct.thermal_zone_device* %19, i32 %20, i32* %12)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %24, %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %88

32:                                               ; preds = %25
  %33 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %34 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39, %32
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @int_to_frac(i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = sdiv i32 %44, %45
  %47 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %48 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %42, %39
  %52 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %53 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58, %51
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 2, %62
  %64 = call i32 @int_to_frac(i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = sdiv i32 %64, %65
  %67 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %68 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %61, %58
  %72 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %73 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78, %71
  %82 = call i32 @int_to_frac(i32 10)
  %83 = sdiv i32 %82, 1000
  %84 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %85 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %31, %81, %78
  ret void
}

declare dso_local i32 @int_to_frac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
