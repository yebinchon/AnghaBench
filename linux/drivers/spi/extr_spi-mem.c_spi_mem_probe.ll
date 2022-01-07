; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_5__, %struct.spi_controller* }
%struct.TYPE_5__ = type { i32 }
%struct.spi_controller = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.spi_mem*)* }
%struct.spi_mem = type { i32, %struct.spi_device* }
%struct.spi_mem_driver = type { i32 (%struct.spi_mem.0*)* }
%struct.spi_mem.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spi_mem_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_mem_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_mem_driver*, align 8
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.spi_mem*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.spi_mem_driver* @to_spi_mem_drv(i32 %10)
  store %struct.spi_mem_driver* %11, %struct.spi_mem_driver** %4, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 1
  %14 = load %struct.spi_controller*, %struct.spi_controller** %13, align 8
  store %struct.spi_controller* %14, %struct.spi_controller** %5, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.spi_mem* @devm_kzalloc(%struct.TYPE_5__* %16, i32 16, i32 %17)
  store %struct.spi_mem* %18, %struct.spi_mem** %6, align 8
  %19 = load %struct.spi_mem*, %struct.spi_mem** %6, align 8
  %20 = icmp ne %struct.spi_mem* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %76

24:                                               ; preds = %1
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = load %struct.spi_mem*, %struct.spi_mem** %6, align 8
  %27 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %26, i32 0, i32 1
  store %struct.spi_device* %25, %struct.spi_device** %27, align 8
  %28 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %29 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %24
  %33 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %34 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.spi_mem*)*, i32 (%struct.spi_mem*)** %36, align 8
  %38 = icmp ne i32 (%struct.spi_mem*)* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %41 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.spi_mem*)*, i32 (%struct.spi_mem*)** %43, align 8
  %45 = load %struct.spi_mem*, %struct.spi_mem** %6, align 8
  %46 = call i32 %44(%struct.spi_mem* %45)
  %47 = load %struct.spi_mem*, %struct.spi_mem** %6, align 8
  %48 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %55

49:                                               ; preds = %32, %24
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 0
  %52 = call i32 @dev_name(%struct.TYPE_5__* %51)
  %53 = load %struct.spi_mem*, %struct.spi_mem** %6, align 8
  %54 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %49, %39
  %56 = load %struct.spi_mem*, %struct.spi_mem** %6, align 8
  %57 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @IS_ERR_OR_NULL(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.spi_mem*, %struct.spi_mem** %6, align 8
  %63 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %2, align 4
  br label %76

66:                                               ; preds = %55
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = load %struct.spi_mem*, %struct.spi_mem** %6, align 8
  %69 = call i32 @spi_set_drvdata(%struct.spi_device* %67, %struct.spi_mem* %68)
  %70 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %4, align 8
  %71 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %70, i32 0, i32 0
  %72 = load i32 (%struct.spi_mem.0*)*, i32 (%struct.spi_mem.0*)** %71, align 8
  %73 = load %struct.spi_mem*, %struct.spi_mem** %6, align 8
  %74 = bitcast %struct.spi_mem* %73 to %struct.spi_mem.0*
  %75 = call i32 %72(%struct.spi_mem.0* %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %66, %61, %21
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.spi_mem_driver* @to_spi_mem_drv(i32) #1

declare dso_local %struct.spi_mem* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.spi_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
