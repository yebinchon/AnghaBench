; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_set_lcd_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_set_lcd_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.fujitsu_bl = type { i32, i32 }

@use_alt_lcd_levels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SBL2\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SBLL\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"set lcd level via %s [%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to evaluate %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @set_lcd_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_lcd_level(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fujitsu_bl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %10 = call %struct.fujitsu_bl* @acpi_driver_data(%struct.acpi_device* %9)
  store %struct.fujitsu_bl* %10, %struct.fujitsu_bl** %6, align 8
  %11 = load i32, i32* @use_alt_lcd_levels, align 4
  switch i32 %11, label %22 [
    i32 -1, label %12
    i32 1, label %21
  ]

12:                                               ; preds = %2
  %13 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @acpi_has_method(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %20

19:                                               ; preds = %12
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %20

20:                                               ; preds = %19, %18
  br label %23

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %23

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %23

23:                                               ; preds = %22, %21, %20
  %24 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @acpi_handle_debug(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %6, align 8
  %35 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %23
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %32
  %42 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @acpi_execute_simple_method(i32 %44, i8* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @ACPI_FAILURE(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %53 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @acpi_handle_err(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %63

59:                                               ; preds = %41
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %6, align 8
  %62 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %51, %38
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.fujitsu_bl* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_has_method(i32, i8*) #1

declare dso_local i32 @acpi_handle_debug(i32, i8*, i8*, i32) #1

declare dso_local i32 @acpi_execute_simple_method(i32, i8*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_handle_err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
