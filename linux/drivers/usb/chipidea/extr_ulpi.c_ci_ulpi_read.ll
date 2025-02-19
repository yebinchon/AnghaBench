; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ulpi.c_ci_ulpi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ulpi.c_ci_ulpi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ci_hdrc = type { i32 }

@OP_ULPI_VIEWPORT = common dso_local global i32 0, align 4
@ULPI_WRITE = common dso_local global i32 0, align 4
@ULPI_WAKEUP = common dso_local global i32 0, align 4
@ULPI_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ci_ulpi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_ulpi_read(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ci_hdrc*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.ci_hdrc* @dev_get_drvdata(%struct.device* %8)
  store %struct.ci_hdrc* %9, %struct.ci_hdrc** %6, align 8
  %10 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %11 = load i32, i32* @OP_ULPI_VIEWPORT, align 4
  %12 = load i32, i32* @ULPI_WRITE, align 4
  %13 = load i32, i32* @ULPI_WAKEUP, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @hw_write(%struct.ci_hdrc* %10, i32 %11, i32 -1, i32 %14)
  %16 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %17 = load i32, i32* @ULPI_WAKEUP, align 4
  %18 = call i32 @ci_ulpi_wait(%struct.ci_hdrc* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %2
  %24 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %25 = load i32, i32* @OP_ULPI_VIEWPORT, align 4
  %26 = load i32, i32* @ULPI_RUN, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ULPI_ADDR(i32 %27)
  %29 = or i32 %26, %28
  %30 = call i32 @hw_write(%struct.ci_hdrc* %24, i32 %25, i32 -1, i32 %29)
  %31 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %32 = load i32, i32* @ULPI_RUN, align 4
  %33 = call i32 @ci_ulpi_wait(%struct.ci_hdrc* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %23
  %39 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %40 = load i32, i32* @OP_ULPI_VIEWPORT, align 4
  %41 = call i32 @GENMASK(i32 15, i32 8)
  %42 = call i32 @hw_read(%struct.ci_hdrc* %39, i32 %40, i32 %41)
  %43 = ashr i32 %42, 8
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %36, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.ci_hdrc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @hw_write(%struct.ci_hdrc*, i32, i32, i32) #1

declare dso_local i32 @ci_ulpi_wait(%struct.ci_hdrc*, i32) #1

declare dso_local i32 @ULPI_ADDR(i32) #1

declare dso_local i32 @hw_read(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
