; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_null_reader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_null_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i64, i64 }

@SSSR = common dso_local global i32 0, align 4
@SSSR_RNE = common dso_local global i32 0, align 4
@SSDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @null_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_reader(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca i64, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %4 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %5 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %24, %1
  %8 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %9 = load i32, i32* @SSSR, align 4
  %10 = call i32 @pxa2xx_spi_read(%struct.driver_data* %8, i32 %9)
  %11 = load i32, i32* @SSSR_RNE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %19 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br label %22

22:                                               ; preds = %14, %7
  %23 = phi i1 [ false, %7 ], [ %21, %14 ]
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %26 = load i32, i32* @SSDR, align 4
  %27 = call i32 @pxa2xx_spi_read(%struct.driver_data* %25, i32 %26)
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %30 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  br label %7

33:                                               ; preds = %22
  %34 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %35 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %38 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local i32 @pxa2xx_spi_read(%struct.driver_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
