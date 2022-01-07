; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_omap1_spi100k_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_omap1_spi100k_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.omap1_spi100k_cs*, i32 }
%struct.omap1_spi100k_cs = type { i64 }
%struct.omap1_spi100k = type { i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @omap1_spi100k_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap1_spi100k_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap1_spi100k*, align 8
  %6 = alloca %struct.omap1_spi100k_cs*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 2
  %9 = load %struct.omap1_spi100k_cs*, %struct.omap1_spi100k_cs** %8, align 8
  store %struct.omap1_spi100k_cs* %9, %struct.omap1_spi100k_cs** %6, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.omap1_spi100k* @spi_master_get_devdata(i32 %12)
  store %struct.omap1_spi100k* %13, %struct.omap1_spi100k** %5, align 8
  %14 = load %struct.omap1_spi100k_cs*, %struct.omap1_spi100k_cs** %6, align 8
  %15 = icmp ne %struct.omap1_spi100k_cs* %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.omap1_spi100k_cs* @devm_kzalloc(i32* %18, i32 8, i32 %19)
  store %struct.omap1_spi100k_cs* %20, %struct.omap1_spi100k_cs** %6, align 8
  %21 = load %struct.omap1_spi100k_cs*, %struct.omap1_spi100k_cs** %6, align 8
  %22 = icmp ne %struct.omap1_spi100k_cs* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %65

26:                                               ; preds = %16
  %27 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %5, align 8
  %28 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 20
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %29, %34
  %36 = load %struct.omap1_spi100k_cs*, %struct.omap1_spi100k_cs** %6, align 8
  %37 = getelementptr inbounds %struct.omap1_spi100k_cs, %struct.omap1_spi100k_cs* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.omap1_spi100k_cs*, %struct.omap1_spi100k_cs** %6, align 8
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 2
  store %struct.omap1_spi100k_cs* %38, %struct.omap1_spi100k_cs** %40, align 8
  br label %41

41:                                               ; preds = %26, %1
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @spi100k_open(i32 %44)
  %46 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %5, align 8
  %47 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_prepare_enable(i32 %48)
  %50 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %5, align 8
  %51 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @clk_prepare_enable(i32 %52)
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = call i32 @omap1_spi100k_setup_transfer(%struct.spi_device* %54, i32* null)
  store i32 %55, i32* %4, align 4
  %56 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %5, align 8
  %57 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clk_disable_unprepare(i32 %58)
  %60 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %5, align 8
  %61 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @clk_disable_unprepare(i32 %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %41, %23
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.omap1_spi100k* @spi_master_get_devdata(i32) #1

declare dso_local %struct.omap1_spi100k_cs* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi100k_open(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @omap1_spi100k_setup_transfer(%struct.spi_device*, i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
