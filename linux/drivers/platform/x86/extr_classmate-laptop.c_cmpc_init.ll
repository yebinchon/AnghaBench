; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmpc_keys_acpi_driver = common dso_local global i32 0, align 4
@cmpc_ipml_acpi_driver = common dso_local global i32 0, align 4
@cmpc_tablet_acpi_driver = common dso_local global i32 0, align 4
@cmpc_accel_acpi_driver = common dso_local global i32 0, align 4
@cmpc_accel_acpi_driver_v4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cmpc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpc_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @acpi_bus_register_driver(i32* @cmpc_keys_acpi_driver)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %37

7:                                                ; preds = %0
  %8 = call i32 @acpi_bus_register_driver(i32* @cmpc_ipml_acpi_driver)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %35

12:                                               ; preds = %7
  %13 = call i32 @acpi_bus_register_driver(i32* @cmpc_tablet_acpi_driver)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %33

17:                                               ; preds = %12
  %18 = call i32 @acpi_bus_register_driver(i32* @cmpc_accel_acpi_driver)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %31

22:                                               ; preds = %17
  %23 = call i32 @acpi_bus_register_driver(i32* @cmpc_accel_acpi_driver_v4)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* %1, align 4
  br label %39

29:                                               ; preds = %26
  %30 = call i32 @acpi_bus_unregister_driver(i32* @cmpc_accel_acpi_driver)
  br label %31

31:                                               ; preds = %29, %21
  %32 = call i32 @acpi_bus_unregister_driver(i32* @cmpc_tablet_acpi_driver)
  br label %33

33:                                               ; preds = %31, %16
  %34 = call i32 @acpi_bus_unregister_driver(i32* @cmpc_ipml_acpi_driver)
  br label %35

35:                                               ; preds = %33, %11
  %36 = call i32 @acpi_bus_unregister_driver(i32* @cmpc_keys_acpi_driver)
  br label %37

37:                                               ; preds = %35, %6
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %37, %27
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @acpi_bus_register_driver(i32*) #1

declare dso_local i32 @acpi_bus_unregister_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
