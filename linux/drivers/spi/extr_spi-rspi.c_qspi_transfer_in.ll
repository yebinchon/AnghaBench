; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_transfer_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_transfer_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.spi_transfer = type { i32, i32, i32* }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"receive timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rspi_data*, %struct.spi_transfer*)* @qspi_transfer_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qspi_transfer_in(%struct.rspi_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rspi_data*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rspi_data* %0, %struct.rspi_data** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %19 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %27 = call i64 @__rspi_can_dma(%struct.rspi_data* %25, %struct.spi_transfer* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 1
  %33 = call i32 @rspi_dma_transfer(%struct.rspi_data* %30, i32* null, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %3, align 4
  br label %78

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %24, %2
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i32, i32* %7, align 4
  %44 = icmp ugt i32 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %42
  %46 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @qspi_set_receive_trigger(%struct.rspi_data* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %50 = call i32 @rspi_wait_for_rx_full(%struct.rspi_data* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %55 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %3, align 4
  br label %78

60:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %70, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %67 = call i32 @rspi_read_data(%struct.rspi_data* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %61

73:                                               ; preds = %61
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sub i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %42

77:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %53, %38
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @__rspi_can_dma(%struct.rspi_data*, %struct.spi_transfer*) #1

declare dso_local i32 @rspi_dma_transfer(%struct.rspi_data*, i32*, i32*) #1

declare dso_local i32 @qspi_set_receive_trigger(%struct.rspi_data*, i32) #1

declare dso_local i32 @rspi_wait_for_rx_full(%struct.rspi_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rspi_read_data(%struct.rspi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
