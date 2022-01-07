; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_intel_button_array_input_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_intel_button_array_input_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.intel_hid_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@intel_array_keymap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Intel HID 5 button array\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intel_button_array_input_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_button_array_input_setup(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intel_hid_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.intel_hid_priv* @dev_get_drvdata(i32* %7)
  store %struct.intel_hid_priv* %8, %struct.intel_hid_priv** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.TYPE_6__* @devm_input_allocate_device(i32* %10)
  %12 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %4, align 8
  %13 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %12, i32 0, i32 0
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %13, align 8
  %14 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %4, align 8
  %15 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %46

21:                                               ; preds = %1
  %22 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %4, align 8
  %23 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* @intel_array_keymap, align 4
  %26 = call i32 @sparse_keymap_setup(%struct.TYPE_6__* %24, i32 %25, i32* null)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %46

31:                                               ; preds = %21
  %32 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %4, align 8
  %33 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  %36 = load i32, i32* @BUS_HOST, align 4
  %37 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %4, align 8
  %38 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 8
  %42 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %4, align 8
  %43 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = call i32 @input_register_device(%struct.TYPE_6__* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %31, %29, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.intel_hid_priv* @dev_get_drvdata(i32*) #1

declare dso_local %struct.TYPE_6__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @sparse_keymap_setup(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
