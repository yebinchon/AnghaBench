; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_register_rfkill_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_register_rfkill_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ACPI_SYSTEM_NOTIFY = common dso_local global i32 0, align 4
@eeepc_rfkill_notify = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to register notify on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeepc_laptop*, i8*)* @eeepc_register_rfkill_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_register_rfkill_notifier(%struct.eeepc_laptop* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eeepc_laptop*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @acpi_get_handle(i32* null, i8* %8, i32* %7)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @ACPI_FAILURE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ACPI_SYSTEM_NOTIFY, align 4
  %19 = load i32, i32* @eeepc_rfkill_notify, align 4
  %20 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %4, align 8
  %21 = call i32 @acpi_install_notify_handler(i32 %17, i32 %18, i32 %19, %struct.eeepc_laptop* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @eeepc_rfkill_hotplug(%struct.eeepc_laptop* %29, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @acpi_get_handle(i32*, i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, %struct.eeepc_laptop*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @eeepc_rfkill_hotplug(%struct.eeepc_laptop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
