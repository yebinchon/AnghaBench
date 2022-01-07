; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_query_mport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_query_mport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.tsi721_device* }
%struct.tsi721_device = type { i64 }
%struct.rio_mport_attr = type { i32, i32, i32, i64, i32, i64 }

@RIO_PORT_N_ERR_STS_PORT_OK = common dso_local global i32 0, align 4
@RIO_PORT_N_CTL2_SEL_BAUD = common dso_local global i32 0, align 4
@RIO_PORT_N_CTL_IPW = common dso_local global i32 0, align 4
@RIO_LINK_DOWN = common dso_local global i32 0, align 4
@RIO_MPORT_DMA = common dso_local global i32 0, align 4
@RIO_MPORT_DMA_SG = common dso_local global i32 0, align 4
@TSI721_BDMA_MAX_BCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, %struct.rio_mport_attr*)* @tsi721_query_mport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_query_mport(%struct.rio_mport* %0, %struct.rio_mport_attr* %1) #0 {
  %3 = alloca %struct.rio_mport*, align 8
  %4 = alloca %struct.rio_mport_attr*, align 8
  %5 = alloca %struct.tsi721_device*, align 8
  %6 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %3, align 8
  store %struct.rio_mport_attr* %1, %struct.rio_mport_attr** %4, align 8
  %7 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %8 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %7, i32 0, i32 0
  %9 = load %struct.tsi721_device*, %struct.tsi721_device** %8, align 8
  store %struct.tsi721_device* %9, %struct.tsi721_device** %5, align 8
  %10 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %11 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 256
  %14 = call i64 @RIO_PORT_N_ERR_STS_CSR(i32 0, i32 0)
  %15 = add nsw i64 %13, %14
  %16 = call i32 @ioread32(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @RIO_PORT_N_ERR_STS_PORT_OK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %2
  %22 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %23 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 256
  %26 = call i64 @RIO_PORT_N_CTL2_CSR(i32 0, i32 0)
  %27 = add nsw i64 %25, %26
  %28 = call i32 @ioread32(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @RIO_PORT_N_CTL2_SEL_BAUD, align 4
  %31 = and i32 %29, %30
  %32 = ashr i32 %31, 28
  %33 = load %struct.rio_mport_attr*, %struct.rio_mport_attr** %4, align 8
  %34 = getelementptr inbounds %struct.rio_mport_attr, %struct.rio_mport_attr* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %36 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 256
  %39 = call i64 @RIO_PORT_N_CTL_CSR(i32 0, i32 0)
  %40 = add nsw i64 %38, %39
  %41 = call i32 @ioread32(i64 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @RIO_PORT_N_CTL_IPW, align 4
  %44 = and i32 %42, %43
  %45 = ashr i32 %44, 27
  %46 = load %struct.rio_mport_attr*, %struct.rio_mport_attr** %4, align 8
  %47 = getelementptr inbounds %struct.rio_mport_attr, %struct.rio_mport_attr* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %2
  %49 = load i32, i32* @RIO_LINK_DOWN, align 4
  %50 = load %struct.rio_mport_attr*, %struct.rio_mport_attr** %4, align 8
  %51 = getelementptr inbounds %struct.rio_mport_attr, %struct.rio_mport_attr* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %21
  %53 = load %struct.rio_mport_attr*, %struct.rio_mport_attr** %4, align 8
  %54 = getelementptr inbounds %struct.rio_mport_attr, %struct.rio_mport_attr* %53, i32 0, i32 2
  store i32 0, i32* %54, align 8
  ret i32 0
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @RIO_PORT_N_ERR_STS_CSR(i32, i32) #1

declare dso_local i64 @RIO_PORT_N_CTL2_CSR(i32, i32) #1

declare dso_local i64 @RIO_PORT_N_CTL_CSR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
