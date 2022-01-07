; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_dma_check_then_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_dma_check_then_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32, i64, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rspi_data*, %struct.spi_transfer*)* @rspi_dma_check_then_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rspi_dma_check_then_transfer(%struct.rspi_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rspi_data*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  store %struct.rspi_data* %0, %struct.rspi_data** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %6 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %7 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %15 = call i32 @__rspi_can_dma(%struct.rspi_data* %13, %struct.spi_transfer* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %12
  %21 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 2
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 0
  br label %32

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32* [ %30, %28 ], [ null, %31 ]
  %34 = call i32 @rspi_dma_transfer(%struct.rspi_data* %21, i32* %23, i32* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @__rspi_can_dma(%struct.rspi_data*, %struct.spi_transfer*) #1

declare dso_local i32 @rspi_dma_transfer(%struct.rspi_data*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
