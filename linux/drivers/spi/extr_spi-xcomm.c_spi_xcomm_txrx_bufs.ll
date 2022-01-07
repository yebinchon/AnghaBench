; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xcomm.c_spi_xcomm_txrx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xcomm.c_spi_xcomm_txrx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_xcomm = type { i32, i32* }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i64, i64 }

@SPI_XCOMM_CMD_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_xcomm*, %struct.spi_device*, %struct.spi_transfer*)* @spi_xcomm_txrx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_xcomm_txrx_bufs(%struct.spi_xcomm* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_xcomm*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_xcomm* %0, %struct.spi_xcomm** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %9 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %10 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %3
  %14 = load i32, i32* @SPI_XCOMM_CMD_WRITE, align 4
  %15 = load %struct.spi_xcomm*, %struct.spi_xcomm** %5, align 8
  %16 = getelementptr inbounds %struct.spi_xcomm, %struct.spi_xcomm* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.spi_xcomm*, %struct.spi_xcomm** %5, align 8
  %20 = getelementptr inbounds %struct.spi_xcomm, %struct.spi_xcomm* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @memcpy(i32* %22, i64 %25, i32 %28)
  %30 = load %struct.spi_xcomm*, %struct.spi_xcomm** %5, align 8
  %31 = getelementptr inbounds %struct.spi_xcomm, %struct.spi_xcomm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.spi_xcomm*, %struct.spi_xcomm** %5, align 8
  %34 = getelementptr inbounds %struct.spi_xcomm, %struct.spi_xcomm* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  %40 = call i32 @i2c_master_send(i32 %32, i32* %35, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %13
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %93

45:                                               ; preds = %13
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = icmp ne i32 %46, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %93

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  br label %89

57:                                               ; preds = %3
  %58 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %59 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %57
  %63 = load %struct.spi_xcomm*, %struct.spi_xcomm** %5, align 8
  %64 = getelementptr inbounds %struct.spi_xcomm, %struct.spi_xcomm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %67 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %70 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @i2c_master_recv(i32 %65, i64 %68, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %93

77:                                               ; preds = %62
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %80 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %93

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %57
  br label %89

89:                                               ; preds = %88, %56
  %90 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %91 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %89, %83, %75, %52, %43
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
