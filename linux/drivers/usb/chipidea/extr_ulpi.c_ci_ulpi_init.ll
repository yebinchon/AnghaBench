; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ulpi.c_ci_ulpi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ulpi.c_ci_ulpi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@USBPHY_INTERFACE_MODE_ULPI = common dso_local global i64 0, align 8
@ci_ulpi_read = common dso_local global i32 0, align 4
@ci_ulpi_write = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to register ULPI interface\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ci_ulpi_init(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  %4 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %5 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @USBPHY_INTERFACE_MODE_ULPI, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %14 = call i32 @hw_phymode_configure(%struct.ci_hdrc* %13)
  %15 = load i32, i32* @ci_ulpi_read, align 4
  %16 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %17 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @ci_ulpi_write, align 4
  %20 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %21 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %24 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %27 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %26, i32 0, i32 2
  %28 = call i32 @ulpi_register_interface(i32 %25, %struct.TYPE_4__* %27)
  %29 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %30 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %32 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %12
  %37 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %38 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %12
  %42 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %43 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR_OR_ZERO(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @hw_phymode_configure(%struct.ci_hdrc*) #1

declare dso_local i32 @ulpi_register_interface(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
