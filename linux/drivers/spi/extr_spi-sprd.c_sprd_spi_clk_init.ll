; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sprd_spi = type { i32, %struct.clk* }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't get the spi clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"can't get the source clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"can't get the enable clock\0A\00", align 1
@SPRD_SPI_DEFAULT_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.sprd_spi*)* @sprd_spi_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_clk_init(%struct.platform_device* %0, %struct.sprd_spi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.sprd_spi*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.sprd_spi* %1, %struct.sprd_spi** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call i8* @devm_clk_get(i32* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = bitcast i8* %10 to %struct.clk*
  store %struct.clk* %11, %struct.clk** %6, align 8
  %12 = load %struct.clk*, %struct.clk** %6, align 8
  %13 = call i64 @IS_ERR(%struct.clk* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_warn(i32* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* null, %struct.clk** %6, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i8* @devm_clk_get(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %23 = bitcast i8* %22 to %struct.clk*
  store %struct.clk* %23, %struct.clk** %7, align 8
  %24 = load %struct.clk*, %struct.clk** %7, align 8
  %25 = call i64 @IS_ERR(%struct.clk* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_warn(i32* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store %struct.clk* null, %struct.clk** %7, align 8
  br label %31

31:                                               ; preds = %27, %19
  %32 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i8* @devm_clk_get(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %35 = bitcast i8* %34 to %struct.clk*
  %36 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %37 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %36, i32 0, i32 1
  store %struct.clk* %35, %struct.clk** %37, align 8
  %38 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %39 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %38, i32 0, i32 1
  %40 = load %struct.clk*, %struct.clk** %39, align 8
  %41 = call i64 @IS_ERR(%struct.clk* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %31
  %44 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %47 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %48 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %47, i32 0, i32 1
  %49 = load %struct.clk*, %struct.clk** %48, align 8
  %50 = call i32 @PTR_ERR(%struct.clk* %49)
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %31
  %52 = load %struct.clk*, %struct.clk** %6, align 8
  %53 = load %struct.clk*, %struct.clk** %7, align 8
  %54 = call i32 @clk_set_parent(%struct.clk* %52, %struct.clk* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.clk*, %struct.clk** %6, align 8
  %58 = call i32 @clk_get_rate(%struct.clk* %57)
  %59 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %60 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %65

61:                                               ; preds = %51
  %62 = load i32, i32* @SPRD_SPI_DEFAULT_SOURCE, align 4
  %63 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %64 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %56
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %43
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_set_parent(%struct.clk*, %struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
