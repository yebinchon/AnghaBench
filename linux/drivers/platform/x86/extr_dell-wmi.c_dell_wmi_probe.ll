; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi.c_dell_wmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi.c_dell_wmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_device = type { i32 }
%struct.dell_wmi_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi_device*, i8*)* @dell_wmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dell_wmi_probe(%struct.wmi_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wmi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dell_wmi_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.wmi_device* %0, %struct.wmi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call i32 (...) @dell_wmi_get_descriptor_valid()
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %15 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dell_wmi_priv* @devm_kzalloc(i32* %15, i32 4, i32 %16)
  store %struct.dell_wmi_priv* %17, %struct.dell_wmi_priv** %6, align 8
  %18 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %6, align 8
  %19 = icmp ne %struct.dell_wmi_priv* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %13
  %24 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %25 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %24, i32 0, i32 0
  %26 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %6, align 8
  %27 = call i32 @dev_set_drvdata(i32* %25, %struct.dell_wmi_priv* %26)
  %28 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %6, align 8
  %29 = getelementptr inbounds %struct.dell_wmi_priv, %struct.dell_wmi_priv* %28, i32 0, i32 0
  %30 = call i32 @dell_wmi_get_interface_version(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @EPROBE_DEFER, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %23
  %36 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %37 = call i32 @dell_wmi_input_setup(%struct.wmi_device* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %32, %20, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @dell_wmi_get_descriptor_valid(...) #1

declare dso_local %struct.dell_wmi_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.dell_wmi_priv*) #1

declare dso_local i32 @dell_wmi_get_interface_version(i32*) #1

declare dso_local i32 @dell_wmi_input_setup(%struct.wmi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
