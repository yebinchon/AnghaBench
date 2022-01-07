; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_transfer_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_transfer_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, %struct.spi_statistics }
%struct.spi_statistics = type { i32 }
%struct.spi_message = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.spi_statistics }
%struct.spi_transfer = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"SPI transfer interrupted\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@timedout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"SPI transfer timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_message*, %struct.spi_transfer*)* @spi_transfer_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_transfer_wait(%struct.spi_controller* %0, %struct.spi_message* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.spi_message*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.spi_statistics*, align 8
  %9 = alloca %struct.spi_statistics*, align 8
  %10 = alloca i64, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %5, align 8
  store %struct.spi_message* %1, %struct.spi_message** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %11 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %12 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %11, i32 0, i32 1
  store %struct.spi_statistics* %12, %struct.spi_statistics** %8, align 8
  %13 = load %struct.spi_message*, %struct.spi_message** %6, align 8
  %14 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.spi_statistics* %16, %struct.spi_statistics** %9, align 8
  store i64 1, i64* %10, align 8
  %17 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %18 = call i64 @spi_controller_is_slave(%struct.spi_controller* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %22 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %21, i32 0, i32 0
  %23 = call i64 @wait_for_completion_interruptible(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.spi_message*, %struct.spi_message** %6, align 8
  %27 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINTR, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %77

33:                                               ; preds = %20
  br label %76

34:                                               ; preds = %3
  %35 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = mul nsw i64 8000, %37
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @do_div(i64 %39, i32 %42)
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 200
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @UINT_MAX, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i64, i64* @UINT_MAX, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %51, %34
  %54 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %55 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %54, i32 0, i32 0
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @msecs_to_jiffies(i64 %56)
  %58 = call i64 @wait_for_completion_timeout(i32* %55, i32 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load %struct.spi_statistics*, %struct.spi_statistics** %8, align 8
  %63 = load i32, i32* @timedout, align 4
  %64 = call i32 @SPI_STATISTICS_INCREMENT_FIELD(%struct.spi_statistics* %62, i32 %63)
  %65 = load %struct.spi_statistics*, %struct.spi_statistics** %9, align 8
  %66 = load i32, i32* @timedout, align 4
  %67 = call i32 @SPI_STATISTICS_INCREMENT_FIELD(%struct.spi_statistics* %65, i32 %66)
  %68 = load %struct.spi_message*, %struct.spi_message** %6, align 8
  %69 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ETIMEDOUT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %77

75:                                               ; preds = %53
  br label %76

76:                                               ; preds = %75, %33
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %61, %25
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @spi_controller_is_slave(%struct.spi_controller*) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @SPI_STATISTICS_INCREMENT_FIELD(%struct.spi_statistics*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
