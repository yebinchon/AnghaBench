; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c24xx.c_s3c24xx_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c24xx.c_s3c24xx_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.s3c24xx_spi_devstate*, i32 }
%struct.s3c24xx_spi_devstate = type { i32, i32 }
%struct.s3c24xx_spi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.spi_device*, i32)*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPCON_DEFAULT = common dso_local global i32 0, align 4
@BITBANG_CS_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @s3c24xx_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.s3c24xx_spi_devstate*, align 8
  %5 = alloca %struct.s3c24xx_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %8, align 8
  store %struct.s3c24xx_spi_devstate* %9, %struct.s3c24xx_spi_devstate** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = call %struct.s3c24xx_spi* @to_hw(%struct.spi_device* %10)
  store %struct.s3c24xx_spi* %11, %struct.s3c24xx_spi** %5, align 8
  %12 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %4, align 8
  %13 = icmp ne %struct.s3c24xx_spi_devstate* %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.s3c24xx_spi_devstate* @devm_kzalloc(i32* %16, i32 8, i32 %17)
  store %struct.s3c24xx_spi_devstate* %18, %struct.s3c24xx_spi_devstate** %4, align 8
  %19 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %4, align 8
  %20 = icmp ne %struct.s3c24xx_spi_devstate* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %63

24:                                               ; preds = %14
  %25 = load i32, i32* @SPCON_DEFAULT, align 4
  %26 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %4, align 8
  %27 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %4, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 4
  %30 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %4, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  store %struct.s3c24xx_spi_devstate* %30, %struct.s3c24xx_spi_devstate** %32, align 8
  br label %33

33:                                               ; preds = %24, %1
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = call i32 @s3c24xx_spi_update_state(%struct.spi_device* %34, i32* null)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %63

40:                                               ; preds = %33
  %41 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %42 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %40
  %51 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %52 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %53, align 8
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = load i32, i32* @BITBANG_CS_INACTIVE, align 4
  %57 = call i32 %54(%struct.spi_device* %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %40
  %59 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %60 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %38, %21
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.s3c24xx_spi* @to_hw(%struct.spi_device*) #1

declare dso_local %struct.s3c24xx_spi_devstate* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @s3c24xx_spi_update_state(%struct.spi_device*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
