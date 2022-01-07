; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_qspi_transfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_qspi_transfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_qspi = type { i32 }
%struct.spi_transfer = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"Error while writing\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Error while reading\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_qspi*, %struct.spi_transfer*, i32)* @qspi_transfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qspi_transfer_msg(%struct.ti_qspi* %0, %struct.spi_transfer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_qspi*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ti_qspi* %0, %struct.ti_qspi** %5, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %10 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @qspi_write_msg(%struct.ti_qspi* %14, %struct.spi_transfer* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %22 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @qspi_read_msg(%struct.ti_qspi* %33, %struct.spi_transfer* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %41 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %27
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %39, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @qspi_write_msg(%struct.ti_qspi*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @qspi_read_msg(%struct.ti_qspi*, %struct.spi_transfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
