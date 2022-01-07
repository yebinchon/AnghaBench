; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_cs_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_cs_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.fsl_spi_platform_data = type { i32 }
%struct.mpc8xxx_spi_probe_info = type { i32 }

@SPI_BOOT_SEL_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @fsl_spi_cs_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_spi_cs_control(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.fsl_spi_platform_data*, align 8
  %7 = alloca %struct.mpc8xxx_spi_probe_info*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @gpiod_set_value(i64 %15, i32 %16)
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %5, align 8
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call %struct.fsl_spi_platform_data* @dev_get_platdata(%struct.device* %25)
  store %struct.fsl_spi_platform_data* %26, %struct.fsl_spi_platform_data** %6, align 8
  %27 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %6, align 8
  %28 = call %struct.mpc8xxx_spi_probe_info* @to_of_pinfo(%struct.fsl_spi_platform_data* %27)
  store %struct.mpc8xxx_spi_probe_info* %28, %struct.mpc8xxx_spi_probe_info** %7, align 8
  %29 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %7, align 8
  %30 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  br label %50

38:                                               ; preds = %18
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @SPI_BOOT_SEL_BIT, align 4
  br label %44

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %7, align 8
  %47 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @iowrite32be(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %37, %44, %12
  ret void
}

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local %struct.fsl_spi_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.mpc8xxx_spi_probe_info* @to_of_pinfo(%struct.fsl_spi_platform_data*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iowrite32be(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
