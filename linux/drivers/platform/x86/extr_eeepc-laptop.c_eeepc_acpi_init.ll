; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_acpi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_acpi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Hotkey device not present, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DISABLE_ASL_WLAN = common dso_local global i32 0, align 4
@DISABLE_ASL_DISPLAYSWITCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Hotkey init flags 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Hotkey initialization failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"CMSG\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Get control methods supported failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Get control methods supported: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeepc_laptop*)* @eeepc_acpi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_acpi_init(%struct.eeepc_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eeepc_laptop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %3, align 8
  %6 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %7 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i32 @acpi_bus_get_status(%struct.TYPE_4__* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %16 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %61

26:                                               ; preds = %14
  %27 = load i32, i32* @DISABLE_ASL_WLAN, align 4
  %28 = load i32, i32* @DISABLE_ASL_DISPLAYSWITCH, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @pr_notice(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %33 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @write_acpi_int(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %61

42:                                               ; preds = %26
  %43 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %44 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %47 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %46, i32 0, i32 0
  %48 = call i64 @read_acpi_int(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %61

54:                                               ; preds = %42
  %55 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %56 = call i32 @cmsg_quirks(%struct.eeepc_laptop* %55)
  %57 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %58 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %54, %50, %38, %22, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @acpi_bus_get_status(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i64 @write_acpi_int(i32, i8*, i32) #1

declare dso_local i64 @read_acpi_int(i32, i8*, i32*) #1

declare dso_local i32 @cmsg_quirks(%struct.eeepc_laptop*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
