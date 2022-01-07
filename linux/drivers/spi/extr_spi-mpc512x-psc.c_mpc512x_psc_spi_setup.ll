; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc512x-psc.c_mpc512x_psc_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc512x-psc.c_mpc512x_psc_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, %struct.mpc512x_psc_spi_cs*, i32, i32 }
%struct.mpc512x_psc_spi_cs = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"can't get CS gpio: %d\0A\00", align 1
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mpc512x_psc_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc512x_psc_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.mpc512x_psc_spi_cs*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 3
  %8 = load %struct.mpc512x_psc_spi_cs*, %struct.mpc512x_psc_spi_cs** %7, align 8
  store %struct.mpc512x_psc_spi_cs* %8, %struct.mpc512x_psc_spi_cs** %4, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = srem i32 %11, 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  %18 = load %struct.mpc512x_psc_spi_cs*, %struct.mpc512x_psc_spi_cs** %4, align 8
  %19 = icmp ne %struct.mpc512x_psc_spi_cs* %18, null
  br i1 %19, label %69, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mpc512x_psc_spi_cs* @kzalloc(i32 8, i32 %21)
  store %struct.mpc512x_psc_spi_cs* %22, %struct.mpc512x_psc_spi_cs** %4, align 8
  %23 = load %struct.mpc512x_psc_spi_cs*, %struct.mpc512x_psc_spi_cs** %4, align 8
  %24 = icmp ne %struct.mpc512x_psc_spi_cs* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %80

28:                                               ; preds = %20
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @gpio_is_valid(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %28
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 5
  %40 = call i32 @dev_name(i32* %39)
  %41 = call i32 @gpio_request(i32 %37, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 5
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.mpc512x_psc_spi_cs*, %struct.mpc512x_psc_spi_cs** %4, align 8
  %50 = call i32 @kfree(%struct.mpc512x_psc_spi_cs* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %80

52:                                               ; preds = %34
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SPI_CS_HIGH, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 0, i32 1
  %64 = call i32 @gpio_direction_output(i32 %55, i32 %63)
  br label %65

65:                                               ; preds = %52, %28
  %66 = load %struct.mpc512x_psc_spi_cs*, %struct.mpc512x_psc_spi_cs** %4, align 8
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 3
  store %struct.mpc512x_psc_spi_cs* %66, %struct.mpc512x_psc_spi_cs** %68, align 8
  br label %69

69:                                               ; preds = %65, %17
  %70 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %71 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mpc512x_psc_spi_cs*, %struct.mpc512x_psc_spi_cs** %4, align 8
  %74 = getelementptr inbounds %struct.mpc512x_psc_spi_cs, %struct.mpc512x_psc_spi_cs* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mpc512x_psc_spi_cs*, %struct.mpc512x_psc_spi_cs** %4, align 8
  %79 = getelementptr inbounds %struct.mpc512x_psc_spi_cs, %struct.mpc512x_psc_spi_cs* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %69, %44, %25, %14
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.mpc512x_psc_spi_cs* @kzalloc(i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mpc512x_psc_spi_cs*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
