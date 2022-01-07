; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_omap1_spi100k_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_omap1_spi100k_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.omap1_spi100k_cs*, i32 }
%struct.omap1_spi100k_cs = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.omap1_spi100k = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SPI_SETUP1 = common dso_local global i64 0, align 8
@SPI_STATUS = common dso_local global i64 0, align 8
@SPI_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @omap1_spi100k_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap1_spi100k_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.omap1_spi100k*, align 8
  %7 = alloca %struct.omap1_spi100k_cs*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.omap1_spi100k* @spi_master_get_devdata(i32 %11)
  store %struct.omap1_spi100k* %12, %struct.omap1_spi100k** %6, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 1
  %15 = load %struct.omap1_spi100k_cs*, %struct.omap1_spi100k_cs** %14, align 8
  store %struct.omap1_spi100k_cs* %15, %struct.omap1_spi100k_cs** %7, align 8
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %17 = icmp ne %struct.spi_transfer* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %56

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.omap1_spi100k_cs*, %struct.omap1_spi100k_cs** %7, align 8
  %37 = getelementptr inbounds %struct.omap1_spi100k_cs, %struct.omap1_spi100k_cs* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %6, align 8
  %39 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SPI_SETUP1, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writew(i32 62, i64 %42)
  %44 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %6, align 8
  %45 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SPI_STATUS, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writew(i32 0, i64 %48)
  %50 = load %struct.omap1_spi100k*, %struct.omap1_spi100k** %6, align 8
  %51 = getelementptr inbounds %struct.omap1_spi100k, %struct.omap1_spi100k* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SPI_CTRL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writew(i32 62, i64 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %34, %31
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.omap1_spi100k* @spi_master_get_devdata(i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
