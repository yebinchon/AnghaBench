; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-rbtn.c_rbtn_rfkill_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-rbtn.c_rbtn_rfkill_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.rbtn_data* }
%struct.rbtn_data = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"dell-rbtn\00", align 1
@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@rbtn_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @rbtn_rfkill_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbtn_rfkill_init(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.rbtn_data*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 1
  %8 = load %struct.rbtn_data*, %struct.rbtn_data** %7, align 8
  store %struct.rbtn_data* %8, %struct.rbtn_data** %4, align 8
  %9 = load %struct.rbtn_data*, %struct.rbtn_data** %4, align 8
  %10 = getelementptr inbounds %struct.rbtn_data, %struct.rbtn_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 0
  %17 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %18 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %19 = call i32* @rfkill_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %16, i32 %17, i32* @rbtn_ops, %struct.acpi_device* %18)
  %20 = load %struct.rbtn_data*, %struct.rbtn_data** %4, align 8
  %21 = getelementptr inbounds %struct.rbtn_data, %struct.rbtn_data* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.rbtn_data*, %struct.rbtn_data** %4, align 8
  %23 = getelementptr inbounds %struct.rbtn_data, %struct.rbtn_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %45

29:                                               ; preds = %14
  %30 = load %struct.rbtn_data*, %struct.rbtn_data** %4, align 8
  %31 = getelementptr inbounds %struct.rbtn_data, %struct.rbtn_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @rfkill_register(i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.rbtn_data*, %struct.rbtn_data** %4, align 8
  %38 = getelementptr inbounds %struct.rbtn_data, %struct.rbtn_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @rfkill_destroy(i32* %39)
  %41 = load %struct.rbtn_data*, %struct.rbtn_data** %4, align 8
  %42 = getelementptr inbounds %struct.rbtn_data, %struct.rbtn_data* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %36, %26, %13
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32* @rfkill_alloc(i8*, i32*, i32, i32*, %struct.acpi_device*) #1

declare dso_local i32 @rfkill_register(i32*) #1

declare dso_local i32 @rfkill_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
