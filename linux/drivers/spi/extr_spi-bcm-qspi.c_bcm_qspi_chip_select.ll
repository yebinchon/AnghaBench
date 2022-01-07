; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_chip_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_chip_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { i32, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32 }

@CHIP_SELECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"using cs:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_qspi*, i32)* @bcm_qspi_chip_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_qspi_chip_select(%struct.bcm_qspi* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_qspi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.bcm_qspi*, %struct.bcm_qspi** %3, align 8
  %8 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %7, i32 0, i32 2
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* @CHIP_SELECT, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.bcm_qspi*, %struct.bcm_qspi** %3, align 8
  %16 = load i64, i64* @CHIP_SELECT, align 8
  %17 = call i32 @bcm_qspi_read(%struct.bcm_qspi* %15, i64 %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, -256
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %43

27:                                               ; preds = %14
  %28 = load %struct.bcm_qspi*, %struct.bcm_qspi** %3, align 8
  %29 = load i64, i64* @CHIP_SELECT, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %28, i64 %29, i32 0, i32 %30)
  %32 = call i32 @usleep_range(i32 10, i32 20)
  br label %33

33:                                               ; preds = %27, %2
  %34 = load %struct.bcm_qspi*, %struct.bcm_qspi** %3, align 8
  %35 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.bcm_qspi*, %struct.bcm_qspi** %3, align 8
  %42 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %33, %26
  ret void
}

declare dso_local i32 @bcm_qspi_read(%struct.bcm_qspi*, i64, i32) #1

declare dso_local i32 @bcm_qspi_write(%struct.bcm_qspi*, i64, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
