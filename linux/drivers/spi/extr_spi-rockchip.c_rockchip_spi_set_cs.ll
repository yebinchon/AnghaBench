; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_set_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_set_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, %struct.spi_master* }
%struct.spi_master = type { i32 }
%struct.rockchip_spi = type { i32*, i32, i64 }

@ROCKCHIP_SPI_SER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @rockchip_spi_set_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_spi_set_cs(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.rockchip_spi*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  %10 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  store %struct.spi_master* %10, %struct.spi_master** %5, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %12 = call %struct.rockchip_spi* @spi_master_get_devdata(%struct.spi_master* %11)
  store %struct.rockchip_spi* %12, %struct.rockchip_spi** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.rockchip_spi*, %struct.rockchip_spi** %6, align 8
  %19 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %17, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %70

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load %struct.rockchip_spi*, %struct.rockchip_spi** %6, align 8
  %33 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pm_runtime_get_sync(i32 %34)
  %36 = load %struct.rockchip_spi*, %struct.rockchip_spi** %6, align 8
  %37 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ROCKCHIP_SPI_SER, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @BIT(i64 %43)
  %45 = call i32 @ROCKCHIP_SPI_SET_BITS(i64 %40, i32 %44)
  br label %61

46:                                               ; preds = %28
  %47 = load %struct.rockchip_spi*, %struct.rockchip_spi** %6, align 8
  %48 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ROCKCHIP_SPI_SER, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %53 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @BIT(i64 %54)
  %56 = call i32 @ROCKCHIP_SPI_CLR_BITS(i64 %51, i32 %55)
  %57 = load %struct.rockchip_spi*, %struct.rockchip_spi** %6, align 8
  %58 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @pm_runtime_put(i32 %59)
  br label %61

61:                                               ; preds = %46, %31
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.rockchip_spi*, %struct.rockchip_spi** %6, align 8
  %64 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %62, i32* %69, align 4
  br label %70

70:                                               ; preds = %61, %27
  ret void
}

declare dso_local %struct.rockchip_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @ROCKCHIP_SPI_SET_BITS(i64, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @ROCKCHIP_SPI_CLR_BITS(i64, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
