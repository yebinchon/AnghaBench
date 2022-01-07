; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_reader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_spi = type { i32, i64, i64, i64 }

@DW_SPI_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_spi*)* @dw_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_reader(%struct.dw_spi* %0) #0 {
  %2 = alloca %struct.dw_spi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dw_spi* %0, %struct.dw_spi** %2, align 8
  %5 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %6 = call i32 @rx_max(%struct.dw_spi* %5)
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %3, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  %12 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %13 = load i32, i32* @DW_SPI_DR, align 4
  %14 = call i32 @dw_read_io_reg(%struct.dw_spi* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %16 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %19 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %11
  %24 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %25 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %31 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32 %29, i32* %33, align 4
  br label %40

34:                                               ; preds = %23
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %37 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40, %11
  %42 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %43 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %47 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %7

50:                                               ; preds = %7
  ret void
}

declare dso_local i32 @rx_max(%struct.dw_spi*) #1

declare dso_local i32 @dw_read_io_reg(%struct.dw_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
