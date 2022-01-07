; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_grlib_cs_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_grlib_cs_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i64, i32 }
%struct.mpc8xxx_spi = type { i32, %struct.fsl_spi_reg* }
%struct.fsl_spi_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @fsl_spi_grlib_cs_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_spi_grlib_cs_control(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpc8xxx_spi*, align 8
  %6 = alloca %struct.fsl_spi_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.mpc8xxx_spi* @spi_master_get_devdata(i32 %11)
  store %struct.mpc8xxx_spi* %12, %struct.mpc8xxx_spi** %5, align 8
  %13 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %14 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %13, i32 0, i32 1
  %15 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %14, align 8
  store %struct.fsl_spi_reg* %15, %struct.fsl_spi_reg** %6, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @gpiod_set_value(i64 %26, i32 %27)
  br label %59

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %32 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  %36 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %6, align 8
  %37 = getelementptr inbounds %struct.fsl_spi_reg, %struct.fsl_spi_reg* %36, i32 0, i32 0
  %38 = call i32 @mpc8xxx_spi_read_reg(i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  br label %52

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %47, %50
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi i32 [ %45, %41 ], [ %51, %46 ]
  store i32 %53, i32* %7, align 4
  %54 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %6, align 8
  %55 = getelementptr inbounds %struct.fsl_spi_reg, %struct.fsl_spi_reg* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @mpc8xxx_spi_write_reg(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %29
  br label %59

59:                                               ; preds = %58, %23
  ret void
}

declare dso_local %struct.mpc8xxx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @mpc8xxx_spi_read_reg(i32*) #1

declare dso_local i32 @mpc8xxx_spi_write_reg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
