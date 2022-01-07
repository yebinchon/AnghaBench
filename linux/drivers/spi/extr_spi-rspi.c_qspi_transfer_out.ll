; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_transfer_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_transfer_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.spi_transfer = type { i32, i32, i32* }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"transmit timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rspi_data*, %struct.spi_transfer*)* @qspi_transfer_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qspi_transfer_out(%struct.rspi_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rspi_data*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rspi_data* %0, %struct.rspi_data** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %11 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %18 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %2
  %24 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %26 = call i64 @__rspi_can_dma(%struct.rspi_data* %24, %struct.spi_transfer* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 1
  %32 = call i32 @rspi_dma_transfer(%struct.rspi_data* %29, i32* %31, i32* null)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  br label %80

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %23, %2
  br label %41

41:                                               ; preds = %73, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp ugt i32 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %41
  %45 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @qspi_set_send_trigger(%struct.rspi_data* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %49 = call i32 @rspi_wait_for_tx_empty(%struct.rspi_data* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %54 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %80

59:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %70, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %6, align 8
  %68 = load i32, i32* %66, align 4
  %69 = call i32 @rspi_write_data(%struct.rspi_data* %65, i32 %68)
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %60

73:                                               ; preds = %60
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sub i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %41

77:                                               ; preds = %41
  %78 = load %struct.rspi_data*, %struct.rspi_data** %4, align 8
  %79 = call i32 @rspi_wait_for_tx_empty(%struct.rspi_data* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %52, %37
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @__rspi_can_dma(%struct.rspi_data*, %struct.spi_transfer*) #1

declare dso_local i32 @rspi_dma_transfer(%struct.rspi_data*, i32*, i32*) #1

declare dso_local i32 @qspi_set_send_trigger(%struct.rspi_data*, i32) #1

declare dso_local i32 @rspi_wait_for_tx_empty(%struct.rspi_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rspi_write_data(%struct.rspi_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
