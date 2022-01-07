; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_u8_reader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_u8_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i64 }

@SSSR = common dso_local global i32 0, align 4
@SSSR_RNE = common dso_local global i32 0, align 4
@SSDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @u8_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u8_reader(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  br label %3

3:                                                ; preds = %20, %1
  %4 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %5 = load i32, i32* @SSSR, align 4
  %6 = call i32 @pxa2xx_spi_read(%struct.driver_data* %4, i32 %5)
  %7 = load i32, i32* @SSSR_RNE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %12 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %15 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br label %18

18:                                               ; preds = %10, %3
  %19 = phi i1 [ false, %3 ], [ %17, %10 ]
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %22 = load i32, i32* @SSDR, align 4
  %23 = call i32 @pxa2xx_spi_read(%struct.driver_data* %21, i32 %22)
  %24 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %25 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32 %23, i32* %27, align 4
  %28 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %29 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %3

32:                                               ; preds = %18
  %33 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %34 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %37 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare dso_local i32 @pxa2xx_spi_read(%struct.driver_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
