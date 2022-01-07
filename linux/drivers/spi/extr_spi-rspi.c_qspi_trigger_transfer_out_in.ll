; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_trigger_transfer_out_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_trigger_transfer_out_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"transmit timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"receive timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rspi_data*, i32*, i32*, i32)* @qspi_trigger_transfer_out_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qspi_trigger_transfer_out_in(%struct.rspi_data* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rspi_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rspi_data* %0, %struct.rspi_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %13

13:                                               ; preds = %73, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ugt i32 %14, 0
  br i1 %15, label %16, label %77

16:                                               ; preds = %13
  %17 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @qspi_set_send_trigger(%struct.rspi_data* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @qspi_set_receive_trigger(%struct.rspi_data* %20, i32 %21)
  %23 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %24 = call i32 @rspi_wait_for_tx_empty(%struct.rspi_data* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %29 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %78

34:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %45, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  %43 = load i32, i32* %41, align 4
  %44 = call i32 @rspi_write_data(%struct.rspi_data* %40, i32 %43)
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %35

48:                                               ; preds = %35
  %49 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %50 = call i32 @rspi_wait_for_rx_full(%struct.rspi_data* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %55 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %78

60:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %70, %60
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %67 = call i32 @rspi_read_data(%struct.rspi_data* %66)
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %61

73:                                               ; preds = %61
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sub i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %13

77:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %53, %27
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @qspi_set_send_trigger(%struct.rspi_data*, i32) #1

declare dso_local i32 @qspi_set_receive_trigger(%struct.rspi_data*, i32) #1

declare dso_local i32 @rspi_wait_for_tx_empty(%struct.rspi_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rspi_write_data(%struct.rspi_data*, i32) #1

declare dso_local i32 @rspi_wait_for_rx_full(%struct.rspi_data*) #1

declare dso_local i32 @rspi_read_data(%struct.rspi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
