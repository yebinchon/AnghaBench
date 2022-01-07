; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32 }
%struct.spi_device = type { i32 }

@N_OK = common dso_local global i32 0, align 4
@CMD_SINGLE_WRITE = common dso_local global i32 0, align 4
@CMD_INTERNAL_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed cmd, write reg (%08x)...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32, i32)* @wilc_spi_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_spi_write_reg(%struct.wilc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.wilc*, %struct.wilc** %4, align 8
  %12 = getelementptr inbounds %struct.wilc, %struct.wilc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.spi_device* @to_spi_device(i32 %13)
  store %struct.spi_device* %14, %struct.spi_device** %7, align 8
  %15 = load i32, i32* @N_OK, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @CMD_SINGLE_WRITE, align 4
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = call i32 @cpu_to_le32s(i32* %6)
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 48
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @CMD_INTERNAL_WRITE, align 4
  store i32 %21, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %22

22:                                               ; preds = %20, %3
  %23 = load %struct.wilc*, %struct.wilc** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @spi_cmd_complete(%struct.wilc* %23, i32 %24, i32 %25, i32* %6, i32 4, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @N_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %22
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @cpu_to_le32s(i32*) #1

declare dso_local i32 @spi_cmd_complete(%struct.wilc*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
