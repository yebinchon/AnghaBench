; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { %struct.spi_device* }
%struct.spi_device = type { i64, i64, i32 }
%struct.pic32_spi = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SPI_CPOL = common dso_local global i32 0, align 4
@CTRL_CKP = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@CTRL_CKE = common dso_local global i32 0, align 4
@CTRL_SMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_message*)* @pic32_spi_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_spi_prepare_message(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.pic32_spi*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %8 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %9 = call %struct.pic32_spi* @spi_master_get_devdata(%struct.spi_master* %8)
  store %struct.pic32_spi* %9, %struct.pic32_spi** %5, align 8
  %10 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %11 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %10, i32 0, i32 0
  %12 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  store %struct.spi_device* %12, %struct.spi_device** %6, align 8
  %13 = load %struct.pic32_spi*, %struct.pic32_spi** %5, align 8
  %14 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.pic32_spi*, %struct.pic32_spi** %5, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @pic32_spi_set_word_size(%struct.pic32_spi* %21, i64 %24)
  %26 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pic32_spi*, %struct.pic32_spi** %5, align 8
  %30 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %20, %2
  %32 = load %struct.pic32_spi*, %struct.pic32_spi** %5, align 8
  %33 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %31
  %40 = load %struct.pic32_spi*, %struct.pic32_spi** %5, align 8
  %41 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @pic32_spi_set_clk_rate(%struct.pic32_spi* %40, i64 %43)
  %45 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.pic32_spi*, %struct.pic32_spi** %5, align 8
  %49 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %39, %31
  %51 = load %struct.pic32_spi*, %struct.pic32_spi** %5, align 8
  %52 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %110

58:                                               ; preds = %50
  %59 = load %struct.pic32_spi*, %struct.pic32_spi** %5, align 8
  %60 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @readl(i32* %62)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SPI_CPOL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load i32, i32* @CTRL_CKP, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %79

74:                                               ; preds = %58
  %75 = load i32, i32* @CTRL_CKP, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SPI_CPHA, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load i32, i32* @CTRL_CKE, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %95

91:                                               ; preds = %79
  %92 = load i32, i32* @CTRL_CKE, align 4
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i32, i32* @CTRL_SMP, align 4
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.pic32_spi*, %struct.pic32_spi** %5, align 8
  %101 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %100, i32 0, i32 3
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @writel(i32 %99, i32* %103)
  %105 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %106 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.pic32_spi*, %struct.pic32_spi** %5, align 8
  %109 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %95, %50
  ret i32 0
}

declare dso_local %struct.pic32_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @pic32_spi_set_word_size(%struct.pic32_spi*, i64) #1

declare dso_local i32 @pic32_spi_set_clk_rate(%struct.pic32_spi*, i64) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
