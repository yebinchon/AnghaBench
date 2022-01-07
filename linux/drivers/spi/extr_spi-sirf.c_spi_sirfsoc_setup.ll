; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.sirfsoc_spi = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no valid gpio\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to request gpio\0A\00", align 1
@BITBANG_CS_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spi_sirfsoc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_sirfsoc_setup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.sirfsoc_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sirfsoc_spi* @spi_master_get_devdata(i32 %8)
  store %struct.sirfsoc_spi* %9, %struct.sirfsoc_spi** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %18 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  br label %63

19:                                               ; preds = %1
  %20 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %21 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %23 = call i32 @spi_get_ctldata(%struct.spi_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i32 4, i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %69

33:                                               ; preds = %25
  %34 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gpio_is_valid(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 1
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %69

46:                                               ; preds = %33
  %47 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DRIVER_NAME, align 4
  %51 = call i32 @gpio_request(i32 %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 1
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %69

58:                                               ; preds = %46
  %59 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @spi_set_ctldata(%struct.spi_device* %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %19
  br label %63

63:                                               ; preds = %62, %16
  %64 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %65 = call i32 @spi_sirfsoc_config_mode(%struct.spi_device* %64)
  %66 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %67 = load i32, i32* @BITBANG_CS_INACTIVE, align 4
  %68 = call i32 @spi_sirfsoc_chipselect(%struct.spi_device* %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %54, %40, %30
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.sirfsoc_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @spi_set_ctldata(%struct.spi_device*, i8*) #1

declare dso_local i32 @spi_sirfsoc_config_mode(%struct.spi_device*) #1

declare dso_local i32 @spi_sirfsoc_chipselect(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
