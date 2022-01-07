; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ni903x_wdt.c_ni903x_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ni903x_wdt.c_ni903x_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ni903x_wdt = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"too many IO resources\0A\00", align 1
@AE_ERROR = common dso_local global i32 0, align 4
@NIWD_IO_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"memory region too small\0A\00", align 1
@NIWD_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to get memory region\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @ni903x_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni903x_resources(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ni903x_wdt*, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ni903x_wdt*
  store %struct.ni903x_wdt* %9, %struct.ni903x_wdt** %6, align 8
  %10 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %66 [
    i32 128, label %13
    i32 129, label %65
  ]

13:                                               ; preds = %2
  %14 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %15 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %20 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @AE_ERROR, align 4
  store i32 %23, i32* %3, align 4
  br label %68

24:                                               ; preds = %13
  %25 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %26 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %31 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @NIWD_IO_SIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  %41 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %42 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @AE_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %68

46:                                               ; preds = %24
  %47 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %48 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %51 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @NIWD_NAME, align 4
  %55 = call i32 @devm_request_region(i32 %49, i32 %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %46
  %58 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %6, align 8
  %59 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @AE_ERROR, align 4
  store i32 %62, i32* %3, align 4
  br label %68

63:                                               ; preds = %46
  %64 = load i32, i32* @AE_OK, align 4
  store i32 %64, i32* %3, align 4
  br label %68

65:                                               ; preds = %2
  br label %66

66:                                               ; preds = %2, %65
  %67 = load i32, i32* @AE_OK, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %63, %57, %40, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @devm_request_region(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
