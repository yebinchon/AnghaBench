; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_wmi_input_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_wmi_input_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@wmi_input_dev = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"LG WMI hotkeys\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"wmi/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@wmi_keymap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot initialize input device\00", align 1
@INIT_SPARSE_KEYMAP = common dso_local global i32 0, align 4
@inited = common dso_local global i32 0, align 4
@WMI_EVENT_GUID0 = common dso_local global i32 0, align 4
@wmi_notify = common dso_local global i32 0, align 4
@INIT_INPUT_WMI_0 = common dso_local global i32 0, align 4
@WMI_EVENT_GUID2 = common dso_local global i32 0, align 4
@INIT_INPUT_WMI_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Cannot allocate input device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wmi_input_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmi_input_setup() #0 {
  %1 = alloca i32, align 4
  %2 = call %struct.TYPE_8__* (...) @input_allocate_device()
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** @wmi_input_dev, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wmi_input_dev, align 8
  %4 = icmp ne %struct.TYPE_8__* %3, null
  br i1 %4, label %5, label %52

5:                                                ; preds = %0
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wmi_input_dev, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wmi_input_dev, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %10 = load i32, i32* @BUS_HOST, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wmi_input_dev, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wmi_input_dev, align 8
  %15 = load i32, i32* @wmi_keymap, align 4
  %16 = call i64 @sparse_keymap_setup(%struct.TYPE_8__* %14, i32 %15, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wmi_input_dev, align 8
  %20 = call i64 @input_register_device(%struct.TYPE_8__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %5
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wmi_input_dev, align 8
  %25 = call i32 @input_free_device(%struct.TYPE_8__* %24)
  br label %54

26:                                               ; preds = %18
  %27 = load i32, i32* @INIT_SPARSE_KEYMAP, align 4
  %28 = load i32, i32* @inited, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* @inited, align 4
  %30 = load i32, i32* @WMI_EVENT_GUID0, align 4
  %31 = load i32, i32* @wmi_notify, align 4
  %32 = call i32 @wmi_install_notify_handler(i32 %30, i32 %31, i8* null)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i64 @ACPI_SUCCESS(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i32, i32* @INIT_INPUT_WMI_0, align 4
  %38 = load i32, i32* @inited, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @inited, align 4
  br label %40

40:                                               ; preds = %36, %26
  %41 = load i32, i32* @WMI_EVENT_GUID2, align 4
  %42 = load i32, i32* @wmi_notify, align 4
  %43 = call i32 @wmi_install_notify_handler(i32 %41, i32 %42, i8* inttoptr (i64 2 to i8*))
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = call i64 @ACPI_SUCCESS(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @INIT_INPUT_WMI_2, align 4
  %49 = load i32, i32* @inited, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* @inited, align 4
  br label %51

51:                                               ; preds = %47, %40
  br label %54

52:                                               ; preds = %0
  %53 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %22, %52, %51
  ret void
}

declare dso_local %struct.TYPE_8__* @input_allocate_device(...) #1

declare dso_local i64 @sparse_keymap_setup(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i64 @input_register_device(%struct.TYPE_8__*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @input_free_device(%struct.TYPE_8__*) #1

declare dso_local i32 @wmi_install_notify_handler(i32, i32, i8*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
