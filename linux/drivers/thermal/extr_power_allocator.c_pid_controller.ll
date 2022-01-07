; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_power_allocator.c_pid_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_power_allocator.c_pid_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i64, i32, %struct.TYPE_2__*, %struct.power_allocator_params* }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32 }
%struct.power_allocator_params = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.thermal_zone_device*, i32, i64)* @pid_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pid_controller(%struct.thermal_zone_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.power_allocator_params*, align 8
  %15 = alloca i64, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %16 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %17 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %16, i32 0, i32 3
  %18 = load %struct.power_allocator_params*, %struct.power_allocator_params** %17, align 8
  store %struct.power_allocator_params* %18, %struct.power_allocator_params** %14, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @int_to_frac(i64 %19)
  store i64 %20, i64* %12, align 8
  %21 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %22 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %29 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  br label %43

33:                                               ; preds = %3
  %34 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %35 = call i64 @estimate_sustainable_power(%struct.thermal_zone_device* %34)
  store i64 %35, i64* %13, align 8
  %36 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.power_allocator_params*, %struct.power_allocator_params** %14, align 8
  %39 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @estimate_pid_constants(%struct.thermal_zone_device* %36, i64 %37, i32 %40, i32 %41, i32 1)
  br label %43

43:                                               ; preds = %33, %27
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %47 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i64 @int_to_frac(i64 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %56 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  br label %66

60:                                               ; preds = %43
  %61 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %62 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  br label %66

66:                                               ; preds = %60, %54
  %67 = phi i32 [ %59, %54 ], [ %65, %60 ]
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @mul_frac(i32 %67, i64 %68)
  store i64 %69, i64* %7, align 8
  %70 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %71 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.power_allocator_params*, %struct.power_allocator_params** %14, align 8
  %76 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @mul_frac(i32 %74, i64 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %81 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @int_to_frac(i64 %84)
  %86 = icmp slt i64 %79, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %66
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %90 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %11, align 8
  %95 = call i64 @mul_frac(i32 %93, i64 %94)
  %96 = add nsw i64 %88, %95
  store i64 %96, i64* %15, align 8
  %97 = load i64, i64* %15, align 8
  %98 = call i64 @abs(i64 %97)
  %99 = load i64, i64* %12, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %87
  %102 = load i64, i64* %15, align 8
  store i64 %102, i64* %8, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load %struct.power_allocator_params*, %struct.power_allocator_params** %14, align 8
  %105 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, %103
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %101, %87
  br label %109

109:                                              ; preds = %108, %66
  %110 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %111 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load %struct.power_allocator_params*, %struct.power_allocator_params** %14, align 8
  %117 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  %120 = call i64 @mul_frac(i32 %114, i64 %119)
  store i64 %120, i64* %9, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %123 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @div_frac(i64 %121, i32 %124)
  store i64 %125, i64* %9, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load %struct.power_allocator_params*, %struct.power_allocator_params** %14, align 8
  %128 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %8, align 8
  %131 = add nsw i64 %129, %130
  %132 = load i64, i64* %9, align 8
  %133 = add nsw i64 %131, %132
  store i64 %133, i64* %10, align 8
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* %10, align 8
  %136 = call i64 @frac_to_int(i64 %135)
  %137 = add nsw i64 %134, %136
  store i64 %137, i64* %10, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* %6, align 8
  %140 = call i64 @clamp(i64 %138, i64 0, i64 %139)
  store i64 %140, i64* %10, align 8
  %141 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %142 = load i64, i64* %11, align 8
  %143 = call i64 @frac_to_int(i64 %142)
  %144 = load %struct.power_allocator_params*, %struct.power_allocator_params** %14, align 8
  %145 = getelementptr inbounds %struct.power_allocator_params, %struct.power_allocator_params* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @frac_to_int(i64 %146)
  %148 = load i64, i64* %7, align 8
  %149 = call i64 @frac_to_int(i64 %148)
  %150 = load i64, i64* %8, align 8
  %151 = call i64 @frac_to_int(i64 %150)
  %152 = load i64, i64* %9, align 8
  %153 = call i64 @frac_to_int(i64 %152)
  %154 = load i64, i64* %10, align 8
  %155 = call i32 @trace_thermal_power_allocator_pid(%struct.thermal_zone_device* %141, i64 %143, i64 %147, i64 %149, i64 %151, i64 %153, i64 %154)
  %156 = load i64, i64* %10, align 8
  ret i64 %156
}

declare dso_local i64 @int_to_frac(i64) #1

declare dso_local i64 @estimate_sustainable_power(%struct.thermal_zone_device*) #1

declare dso_local i32 @estimate_pid_constants(%struct.thermal_zone_device*, i64, i32, i32, i32) #1

declare dso_local i64 @mul_frac(i32, i64) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @div_frac(i64, i32) #1

declare dso_local i64 @frac_to_int(i64) #1

declare dso_local i64 @clamp(i64, i64, i64) #1

declare dso_local i32 @trace_thermal_power_allocator_pid(%struct.thermal_zone_device*, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
