; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_writer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_spi = type { i32, i64, i64, i64 }

@DW_SPI_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_spi*)* @dw_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_writer(%struct.dw_spi* %0) #0 {
  %2 = alloca %struct.dw_spi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dw_spi* %0, %struct.dw_spi** %2, align 8
  %5 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %6 = call i32 @tx_max(%struct.dw_spi* %5)
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %3, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %7
  %12 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %13 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %16 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %11
  %21 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %22 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %27 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %20
  %32 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %33 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %37, %11
  %39 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %40 = load i32, i32* @DW_SPI_DR, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dw_write_io_reg(%struct.dw_spi* %39, i32 %40, i32 %41)
  %43 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %44 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %48 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %7

51:                                               ; preds = %7
  ret void
}

declare dso_local i32 @tx_max(%struct.dw_spi*) #1

declare dso_local i32 @dw_write_io_reg(%struct.dw_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
