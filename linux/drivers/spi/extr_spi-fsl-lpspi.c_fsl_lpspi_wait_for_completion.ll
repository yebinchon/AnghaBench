; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.fsl_lpspi_data = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"interrupted\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"wait for completion timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*)* @fsl_lpspi_wait_for_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_lpspi_wait_for_completion(%struct.spi_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca %struct.fsl_lpspi_data*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %3, align 8
  %5 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %6 = call %struct.fsl_lpspi_data* @spi_controller_get_devdata(%struct.spi_controller* %5)
  store %struct.fsl_lpspi_data* %6, %struct.fsl_lpspi_data** %4, align 8
  %7 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %4, align 8
  %8 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %4, align 8
  %13 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %12, i32 0, i32 1
  %14 = call i64 @wait_for_completion_interruptible(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %4, align 8
  %18 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16, %11
  %22 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %4, align 8
  %23 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINTR, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %44

28:                                               ; preds = %16
  br label %43

29:                                               ; preds = %1
  %30 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %4, align 8
  %31 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %30, i32 0, i32 1
  %32 = load i32, i32* @HZ, align 4
  %33 = call i32 @wait_for_completion_timeout(i32* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %4, align 8
  %37 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %28
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %35, %21
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.fsl_lpspi_data* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
