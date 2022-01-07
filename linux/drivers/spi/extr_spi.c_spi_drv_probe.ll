; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64, i32 }
%struct.spi_driver = type { i32 (%struct.spi_device*)* }
%struct.spi_device = type opaque
%struct.spi_device.0 = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @spi_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_drv_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.spi_driver*, align 8
  %5 = alloca %struct.spi_device.0*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.spi_driver* @to_spi_driver(i32 %9)
  store %struct.spi_driver* %10, %struct.spi_driver** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.spi_device.0* @to_spi_device(%struct.device* %11)
  store %struct.spi_device.0* %12, %struct.spi_device.0** %5, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @of_clk_set_defaults(i64 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %72

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @of_irq_get(i64 %29, i32 0)
  %31 = load %struct.spi_device.0*, %struct.spi_device.0** %5, align 8
  %32 = getelementptr inbounds %struct.spi_device.0, %struct.spi_device.0* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.spi_device.0*, %struct.spi_device.0** %5, align 8
  %34 = getelementptr inbounds %struct.spi_device.0, %struct.spi_device.0* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @EPROBE_DEFER, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %72

42:                                               ; preds = %26
  %43 = load %struct.spi_device.0*, %struct.spi_device.0** %5, align 8
  %44 = getelementptr inbounds %struct.spi_device.0, %struct.spi_device.0* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.spi_device.0*, %struct.spi_device.0** %5, align 8
  %49 = getelementptr inbounds %struct.spi_device.0, %struct.spi_device.0* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = call i32 @dev_pm_domain_attach(%struct.device* %52, i32 1)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %72

58:                                               ; preds = %51
  %59 = load %struct.spi_driver*, %struct.spi_driver** %4, align 8
  %60 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %59, i32 0, i32 0
  %61 = load i32 (%struct.spi_device*)*, i32 (%struct.spi_device*)** %60, align 8
  %62 = load %struct.spi_device.0*, %struct.spi_device.0** %5, align 8
  %63 = bitcast %struct.spi_device.0* %62 to %struct.spi_device*
  %64 = call i32 %61(%struct.spi_device* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = call i32 @dev_pm_domain_detach(%struct.device* %68, i32 1)
  br label %70

70:                                               ; preds = %67, %58
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %56, %39, %19
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.spi_driver* @to_spi_driver(i32) #1

declare dso_local %struct.spi_device.0* @to_spi_device(%struct.device*) #1

declare dso_local i32 @of_clk_set_defaults(i64, i32) #1

declare dso_local i32 @of_irq_get(i64, i32) #1

declare dso_local i32 @dev_pm_domain_attach(%struct.device*, i32) #1

declare dso_local i32 @dev_pm_domain_detach(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
