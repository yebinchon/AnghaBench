; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i64 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @sprd_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_transfer_one(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %9 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %10 = call i32 @sprd_spi_setup_transfer(%struct.spi_device* %8, %struct.spi_transfer* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %46

14:                                               ; preds = %3
  %15 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %16 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %15, i32 0, i32 0
  %17 = load i64 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)*, i64 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)** %16, align 8
  %18 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %21 = call i64 %17(%struct.spi_controller* %18, %struct.spi_device* %19, %struct.spi_transfer* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %26 = call i32 @sprd_spi_dma_txrx_bufs(%struct.spi_device* %24, %struct.spi_transfer* %25)
  store i32 %26, i32* %7, align 4
  br label %31

27:                                               ; preds = %14
  %28 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %30 = call i32 @sprd_spi_txrx_bufs(%struct.spi_device* %28, %struct.spi_transfer* %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %45

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EREMOTEIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45, %13
  %47 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %48 = call i32 @spi_finalize_current_transfer(%struct.spi_controller* %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @sprd_spi_setup_transfer(%struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @sprd_spi_dma_txrx_bufs(%struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @sprd_spi_txrx_bufs(%struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
