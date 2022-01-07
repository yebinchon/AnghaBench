; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_msiof_spi_priv = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.completion = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"interrupted\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_msiof_spi_priv*, %struct.completion*)* @sh_msiof_wait_for_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_msiof_wait_for_completion(%struct.sh_msiof_spi_priv* %0, %struct.completion* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_msiof_spi_priv*, align 8
  %5 = alloca %struct.completion*, align 8
  store %struct.sh_msiof_spi_priv* %0, %struct.sh_msiof_spi_priv** %4, align 8
  store %struct.completion* %1, %struct.completion** %5, align 8
  %6 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @spi_controller_is_slave(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.completion*, %struct.completion** %5, align 8
  %13 = call i64 @wait_for_completion_interruptible(%struct.completion* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %17 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15, %11
  %21 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %22 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINTR, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %15
  br label %43

29:                                               ; preds = %2
  %30 = load %struct.completion*, %struct.completion** %5, align 8
  %31 = load i32, i32* @HZ, align 4
  %32 = call i32 @wait_for_completion_timeout(%struct.completion* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %36 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %28
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %34, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @spi_controller_is_slave(i32) #1

declare dso_local i64 @wait_for_completion_interruptible(%struct.completion*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
