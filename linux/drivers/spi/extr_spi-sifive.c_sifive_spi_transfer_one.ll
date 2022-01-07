; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sifive.c_sifive_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sifive.c_sifive_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }
%struct.sifive_spi = type { i32 }

@SIFIVE_SPI_REG_RXMARK = common dso_local global i32 0, align 4
@SIFIVE_SPI_IP_RXWM = common dso_local global i32 0, align 4
@SIFIVE_SPI_IP_TXWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @sifive_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sifive_spi_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.sifive_spi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %14 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %15 = call %struct.sifive_spi* @spi_master_get_devdata(%struct.spi_master* %14)
  store %struct.sifive_spi* %15, %struct.sifive_spi** %7, align 8
  %16 = load %struct.sifive_spi*, %struct.sifive_spi** %7, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %19 = call i32 @sifive_spi_prep_transfer(%struct.sifive_spi* %16, %struct.spi_device* %17, %struct.spi_transfer* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %83, %3
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %87

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.sifive_spi*, %struct.sifive_spi** %7, align 8
  %35 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @min(i32 %33, i32 %36)
  store i32 %37, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %48, %32
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.sifive_spi*, %struct.sifive_spi** %7, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %9, align 8
  %46 = ptrtoint i32* %44 to i32
  %47 = call i32 @sifive_spi_tx(%struct.sifive_spi* %43, i32 %46)
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %38

51:                                               ; preds = %38
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %78

54:                                               ; preds = %51
  %55 = load %struct.sifive_spi*, %struct.sifive_spi** %7, align 8
  %56 = load i32, i32* @SIFIVE_SPI_REG_RXMARK, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub i32 %57, 1
  %59 = call i32 @sifive_spi_write(%struct.sifive_spi* %55, i32 %56, i32 %58)
  %60 = load %struct.sifive_spi*, %struct.sifive_spi** %7, align 8
  %61 = load i32, i32* @SIFIVE_SPI_IP_RXWM, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @sifive_spi_wait(%struct.sifive_spi* %60, i32 %61, i32 %62)
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %74, %54
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load %struct.sifive_spi*, %struct.sifive_spi** %7, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %10, align 8
  %72 = ptrtoint i32* %70 to i32
  %73 = call i32 @sifive_spi_rx(%struct.sifive_spi* %69, i32 %72)
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %13, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %64

77:                                               ; preds = %64
  br label %83

78:                                               ; preds = %51
  %79 = load %struct.sifive_spi*, %struct.sifive_spi** %7, align 8
  %80 = load i32, i32* @SIFIVE_SPI_IP_TXWM, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @sifive_spi_wait(%struct.sifive_spi* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %77
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %11, align 4
  %86 = sub i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %29

87:                                               ; preds = %29
  ret i32 0
}

declare dso_local %struct.sifive_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @sifive_spi_prep_transfer(%struct.sifive_spi*, %struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sifive_spi_tx(%struct.sifive_spi*, i32) #1

declare dso_local i32 @sifive_spi_write(%struct.sifive_spi*, i32, i32) #1

declare dso_local i32 @sifive_spi_wait(%struct.sifive_spi*, i32, i32) #1

declare dso_local i32 @sifive_spi_rx(%struct.sifive_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
