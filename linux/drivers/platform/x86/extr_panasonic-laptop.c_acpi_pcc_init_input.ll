; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_init_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_init_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcc_acpi = type { %struct.input_dev* }
%struct.input_dev = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ACPI_PCC_DRIVER_NAME = common dso_local global i32 0, align 4
@ACPI_PCC_INPUT_PHYS = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@panasonic_keymap = common dso_local global i32 0, align 4
@ACPI_DB_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to setup input device keymap\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcc_acpi*)* @acpi_pcc_init_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pcc_init_input(%struct.pcc_acpi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcc_acpi*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pcc_acpi* %0, %struct.pcc_acpi** %3, align 8
  %6 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %6, %struct.input_dev** %4, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %8 = icmp ne %struct.input_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  %13 = load i32, i32* @ACPI_PCC_DRIVER_NAME, align 4
  %14 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ACPI_PCC_INPUT_PHYS, align 4
  %17 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @BUS_HOST, align 4
  %20 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  %23 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 256, i32* %31, align 4
  %32 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %33 = load i32, i32* @panasonic_keymap, align 4
  %34 = call i32 @sparse_keymap_setup(%struct.input_dev* %32, i32 %33, i32* null)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %12
  %38 = load i32, i32* @ACPI_DB_ERROR, align 4
  %39 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([37 x i8]* @.str to i32))
  br label %52

40:                                               ; preds = %12
  %41 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %42 = call i32 @input_register_device(%struct.input_dev* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @ACPI_DB_ERROR, align 4
  %47 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([33 x i8]* @.str.1 to i32))
  br label %52

48:                                               ; preds = %40
  %49 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %50 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %51 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %50, i32 0, i32 0
  store %struct.input_dev* %49, %struct.input_dev** %51, align 8
  store i32 0, i32* %2, align 4
  br label %56

52:                                               ; preds = %45, %37
  %53 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %54 = call i32 @input_free_device(%struct.input_dev* %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %48, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @sparse_keymap_setup(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
