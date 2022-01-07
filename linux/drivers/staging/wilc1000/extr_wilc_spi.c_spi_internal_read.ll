; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_spi_internal_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_spi_internal_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32 }
%struct.spi_device = type { i32 }

@CMD_INTERNAL_READ = common dso_local global i32 0, align 4
@N_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed internal read cmd...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32, i32*)* @spi_internal_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_internal_read(%struct.wilc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wilc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.wilc*, %struct.wilc** %5, align 8
  %11 = getelementptr inbounds %struct.wilc, %struct.wilc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.spi_device* @to_spi_device(i32 %12)
  store %struct.spi_device* %13, %struct.spi_device** %8, align 8
  %14 = load %struct.wilc*, %struct.wilc** %5, align 8
  %15 = load i32, i32* @CMD_INTERNAL_READ, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @spi_cmd_complete(%struct.wilc* %14, i32 %15, i32 %16, i32* %17, i32 4, i32 0)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @N_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @le32_to_cpus(i32* %27)
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @spi_cmd_complete(%struct.wilc*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @le32_to_cpus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
