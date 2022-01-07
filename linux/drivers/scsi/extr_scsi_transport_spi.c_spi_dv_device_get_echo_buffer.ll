; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_dv_device_get_echo_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_dv_device_get_echo_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@spi_dv_device_get_echo_buffer.spi_test_unit_ready = internal constant [6 x i8] c"\80\00\00\00\00\00", align 1
@spi_dv_device_get_echo_buffer.spi_read_buffer_descriptor = internal constant [10 x i8] c"\81\0B\00\00\00\00\00\00\04\00", align 1
@DMA_NONE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32*)* @spi_dv_device_get_echo_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_dv_device_get_echo_buffer(%struct.scsi_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %21, %2
  %9 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %10 = load i32, i32* @DMA_NONE, align 4
  %11 = call i32 @spi_execute(%struct.scsi_device* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @spi_dv_device_get_echo_buffer.spi_test_unit_ready, i64 0, i64 0), i32 %10, i32* null, i32 0, i32* null)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %42

18:                                               ; preds = %14
  br label %20

19:                                               ; preds = %8
  br label %24

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %8

24:                                               ; preds = %19
  %25 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @spi_execute(%struct.scsi_device* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @spi_dv_device_get_echo_buffer.spi_read_buffer_descriptor, i64 0, i64 0), i32 %26, i32* %27, i32 4, i32* null)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %42

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 31
  %40 = shl i32 %39, 8
  %41 = add nsw i32 %35, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %32, %31, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @spi_execute(%struct.scsi_device*, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
