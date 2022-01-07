; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt7621.c_mt7621_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt7621.c_mt7621_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.mt7621_spi = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"setup: requested speed is too low %d Hz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mt7621_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7621_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.mt7621_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %6 = call %struct.mt7621_spi* @spidev_to_mt7621_spi(%struct.spi_device* %5)
  store %struct.mt7621_spi* %6, %struct.mt7621_spi** %4, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %16 = getelementptr inbounds %struct.mt7621_spi, %struct.mt7621_spi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 2
  %19 = icmp sgt i32 %14, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %11, %1
  %21 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %22 = getelementptr inbounds %struct.mt7621_spi, %struct.mt7621_spi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 2
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %20, %11
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %32 = getelementptr inbounds %struct.mt7621_spi, %struct.mt7621_spi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 4097
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 1
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.mt7621_spi* @spidev_to_mt7621_spi(%struct.spi_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
