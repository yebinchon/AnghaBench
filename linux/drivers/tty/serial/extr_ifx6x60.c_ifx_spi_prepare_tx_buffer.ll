; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_prepare_tx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_prepare_tx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifx_spi_device = type { i8*, i32, i32 (i8*, i32, i8*)*, i32, i32, i32, i32 }

@IFX_SPI_HEADER_OVERHEAD = common dso_local global i32 0, align 4
@IFX_SPI_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@IFX_SPI_TRANSFER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifx_spi_device*)* @ifx_spi_prepare_tx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifx_spi_prepare_tx_buffer(%struct.ifx_spi_device* %0) #0 {
  %2 = alloca %struct.ifx_spi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.ifx_spi_device* %0, %struct.ifx_spi_device** %2, align 8
  %7 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %8 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i32, i32* @IFX_SPI_HEADER_OVERHEAD, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %6, align 8
  %14 = load i32, i32* @IFX_SPI_HEADER_OVERHEAD, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %16 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %15, i32 0, i32 1
  store i32 0, i32* %16, align 8
  %17 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %18 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %1
  %22 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %23 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %22, i32 0, i32 5
  %24 = call i32 @kfifo_len(i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IFX_SPI_PAYLOAD_SIZE, align 4
  %30 = call i32 @min(i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %32 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %31, i32 0, i32 5
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %36 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %35, i32 0, i32 4
  %37 = call i32 @kfifo_out_locked(i32* %32, i8* %33, i32 %34, i32* %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %6, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %27
  %49 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %50 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %49, i32 0, i32 3
  %51 = call i32 @tty_port_tty_wakeup(i32* %50)
  br label %55

52:                                               ; preds = %27
  %53 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %54 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %21
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %59 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @IFX_SPI_HEADER_OVERHEAD, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %65 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ifx_spi_setup_spi_header(i8* %60, i32 %63, i32 %66)
  %68 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %69 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %68, i32 0, i32 2
  %70 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %69, align 8
  %71 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %72 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %76 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i64, i64* @IFX_SPI_TRANSFER_SIZE, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = call i32 %70(i8* %73, i32 %74, i8* %79)
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @kfifo_len(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kfifo_out_locked(i32*, i8*, i32, i32*) #1

declare dso_local i32 @tty_port_tty_wakeup(i32*) #1

declare dso_local i32 @ifx_spi_setup_spi_header(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
