; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-v3020.c_v3020_gpio_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-v3020.c_v3020_gpio_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.v3020 = type { %struct.TYPE_4__* }
%struct.platform_device = type { i32 }
%struct.v3020_platform_data = type { i32, i32, i32, i32 }

@v3020_gpio = common dso_local global %struct.TYPE_4__* null, align 8
@V3020_CS = common dso_local global i64 0, align 8
@V3020_WR = common dso_local global i64 0, align 8
@V3020_RD = common dso_local global i64 0, align 8
@V3020_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v3020*, %struct.platform_device*, %struct.v3020_platform_data*)* @v3020_gpio_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3020_gpio_map(%struct.v3020* %0, %struct.platform_device* %1, %struct.v3020_platform_data* %2) #0 {
  %4 = alloca %struct.v3020*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.v3020_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.v3020* %0, %struct.v3020** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  store %struct.v3020_platform_data* %2, %struct.v3020_platform_data** %6, align 8
  %8 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %6, align 8
  %9 = getelementptr inbounds %struct.v3020_platform_data, %struct.v3020_platform_data* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v3020_gpio, align 8
  %12 = load i64, i64* @V3020_CS, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 4
  %15 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %6, align 8
  %16 = getelementptr inbounds %struct.v3020_platform_data, %struct.v3020_platform_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v3020_gpio, align 8
  %19 = load i64, i64* @V3020_WR, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %6, align 8
  %23 = getelementptr inbounds %struct.v3020_platform_data, %struct.v3020_platform_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v3020_gpio, align 8
  %26 = load i64, i64* @V3020_RD, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %6, align 8
  %30 = getelementptr inbounds %struct.v3020_platform_data, %struct.v3020_platform_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v3020_gpio, align 8
  %33 = load i64, i64* @V3020_IO, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v3020_gpio, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v3020_gpio, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %37)
  %39 = call i32 @gpio_request_array(%struct.TYPE_4__* %36, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v3020_gpio, align 8
  %44 = load %struct.v3020*, %struct.v3020** %4, align 8
  %45 = getelementptr inbounds %struct.v3020, %struct.v3020* %44, i32 0, i32 0
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %45, align 8
  br label %46

46:                                               ; preds = %42, %3
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @gpio_request_array(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
