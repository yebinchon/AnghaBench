; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* }
%struct.spi_device = type opaque
%struct.spi_device.0 = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i32 }
%struct.rockchip_spi = type { i32, i32, i64 }

@ROCKCHIP_SPI_SSIENR = common dso_local global i64 0, align 8
@ROCKCHIP_SPI_SR = common dso_local global i64 0, align 8
@SR_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No buffer for transfer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ROCKCHIP_SPI_MAX_TRANLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Transfer is too long (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device.0*, %struct.spi_transfer*)* @rockchip_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_spi_transfer_one(%struct.spi_master* %0, %struct.spi_device.0* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device.0*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.rockchip_spi*, align 8
  %9 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device.0* %1, %struct.spi_device.0** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %11 = call %struct.rockchip_spi* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.rockchip_spi* %11, %struct.rockchip_spi** %8, align 8
  %12 = load %struct.rockchip_spi*, %struct.rockchip_spi** %8, align 8
  %13 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ROCKCHIP_SPI_SSIENR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.rockchip_spi*, %struct.rockchip_spi** %8, align 8
  %21 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ROCKCHIP_SPI_SR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  %26 = load i32, i32* @SR_BUSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %19, %3
  %30 = phi i1 [ false, %3 ], [ %28, %19 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %29
  %38 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.rockchip_spi*, %struct.rockchip_spi** %8, align 8
  %44 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %106

49:                                               ; preds = %37, %29
  %50 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %51 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ROCKCHIP_SPI_MAX_TRANLEN, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.rockchip_spi*, %struct.rockchip_spi** %8, align 8
  %57 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %106

65:                                               ; preds = %49
  %66 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %67 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sle i32 %68, 8
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 2
  %72 = load %struct.rockchip_spi*, %struct.rockchip_spi** %8, align 8
  %73 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %75 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %74, i32 0, i32 0
  %76 = load i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)*, i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)** %75, align 8
  %77 = icmp ne i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %65
  %79 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %80 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %79, i32 0, i32 0
  %81 = load i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)*, i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)** %80, align 8
  %82 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %83 = load %struct.spi_device.0*, %struct.spi_device.0** %6, align 8
  %84 = bitcast %struct.spi_device.0* %83 to %struct.spi_device*
  %85 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %86 = call i32 %81(%struct.spi_master* %82, %struct.spi_device* %84, %struct.spi_transfer* %85)
  br label %88

87:                                               ; preds = %65
  br label %88

88:                                               ; preds = %87, %78
  %89 = phi i32 [ %86, %78 ], [ 0, %87 ]
  store i32 %89, i32* %9, align 4
  %90 = load %struct.rockchip_spi*, %struct.rockchip_spi** %8, align 8
  %91 = load %struct.spi_device.0*, %struct.spi_device.0** %6, align 8
  %92 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @rockchip_spi_config(%struct.rockchip_spi* %90, %struct.spi_device.0* %91, %struct.spi_transfer* %92, i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.rockchip_spi*, %struct.rockchip_spi** %8, align 8
  %99 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %100 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %101 = call i32 @rockchip_spi_prepare_dma(%struct.rockchip_spi* %98, %struct.spi_master* %99, %struct.spi_transfer* %100)
  store i32 %101, i32* %4, align 4
  br label %106

102:                                              ; preds = %88
  %103 = load %struct.rockchip_spi*, %struct.rockchip_spi** %8, align 8
  %104 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %105 = call i32 @rockchip_spi_prepare_irq(%struct.rockchip_spi* %103, %struct.spi_transfer* %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %97, %55, %42
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.rockchip_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @rockchip_spi_config(%struct.rockchip_spi*, %struct.spi_device.0*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @rockchip_spi_prepare_dma(%struct.rockchip_spi*, %struct.spi_master*, %struct.spi_transfer*) #1

declare dso_local i32 @rockchip_spi_prepare_irq(%struct.rockchip_spi*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
