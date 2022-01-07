; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc512x-psc.c_mpc512x_psc_spi_activate_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc512x-psc.c_mpc512x_psc_spi_activate_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, %struct.mpc512x_psc_spi_cs* }
%struct.mpc512x_psc_spi_cs = type { i32, i32 }
%struct.mpc512x_psc_spi = type { i32, i32 (%struct.spi_device*, i32)*, i32 }

@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @mpc512x_psc_spi_activate_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc512x_psc_spi_activate_cs(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.mpc512x_psc_spi_cs*, align 8
  %4 = alloca %struct.mpc512x_psc_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 3
  %11 = load %struct.mpc512x_psc_spi_cs*, %struct.mpc512x_psc_spi_cs** %10, align 8
  store %struct.mpc512x_psc_spi_cs* %11, %struct.mpc512x_psc_spi_cs** %3, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.mpc512x_psc_spi* @spi_master_get_devdata(i32 %14)
  store %struct.mpc512x_psc_spi* %15, %struct.mpc512x_psc_spi** %4, align 8
  %16 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @psc_addr(%struct.mpc512x_psc_spi* %16, i32 %17)
  %19 = call i32 @in_be32(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SPI_CPHA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, 4096
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, -4097
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SPI_CPOL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, 8192
  store i32 %41, i32* %5, align 4
  br label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, -8193
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SPI_LSB_FIRST, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, 268435456
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, -268435457
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @psc_addr(%struct.mpc512x_psc_spi* %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @out_be32(i32 %61, i32 %62)
  %64 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @psc_addr(%struct.mpc512x_psc_spi* %64, i32 %65)
  %67 = call i32 @in_be32(i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, -16777216
  store i32 %69, i32* %6, align 4
  %70 = load %struct.mpc512x_psc_spi_cs*, %struct.mpc512x_psc_spi_cs** %3, align 8
  %71 = getelementptr inbounds %struct.mpc512x_psc_spi_cs, %struct.mpc512x_psc_spi_cs* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %58
  store i32 1000000, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %58
  %77 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %4, align 8
  %78 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sdiv i32 %79, %80
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 255
  %85 = shl i32 %84, 16
  %86 = load i32, i32* %8, align 4
  %87 = ashr i32 %86, 8
  %88 = and i32 %87, 255
  %89 = shl i32 %88, 8
  %90 = or i32 %85, %89
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @psc_addr(%struct.mpc512x_psc_spi* %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @out_be32(i32 %95, i32 %96)
  %98 = load %struct.mpc512x_psc_spi_cs*, %struct.mpc512x_psc_spi_cs** %3, align 8
  %99 = getelementptr inbounds %struct.mpc512x_psc_spi_cs, %struct.mpc512x_psc_spi_cs* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %4, align 8
  %102 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %4, align 8
  %104 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %103, i32 0, i32 1
  %105 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %104, align 8
  %106 = icmp ne i32 (%struct.spi_device*, i32)* %105, null
  br i1 %106, label %107, label %127

107:                                              ; preds = %76
  %108 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %109 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @gpio_is_valid(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %4, align 8
  %115 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %114, i32 0, i32 1
  %116 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %115, align 8
  %117 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %118 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %119 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SPI_CS_HIGH, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 1, i32 0
  %126 = call i32 %116(%struct.spi_device* %117, i32 %125)
  br label %127

127:                                              ; preds = %113, %107, %76
  ret void
}

declare dso_local %struct.mpc512x_psc_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @in_be32(i32) #1

declare dso_local i32 @psc_addr(%struct.mpc512x_psc_spi*, i32) #1

declare dso_local i32 @out_be32(i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
