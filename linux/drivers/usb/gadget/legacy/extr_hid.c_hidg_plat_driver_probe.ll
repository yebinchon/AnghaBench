; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_hid.c_hidg_plat_driver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_hid.c_hidg_plat_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hidg_func_descriptor = type { i32 }
%struct.hidg_func_node = type { i32, %struct.hidg_func_descriptor* }

@.str = private unnamed_addr constant [23 x i8] c"Platform data missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hidg_func_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hidg_plat_driver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidg_plat_driver_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hidg_func_descriptor*, align 8
  %5 = alloca %struct.hidg_func_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.hidg_func_descriptor* @dev_get_platdata(i32* %7)
  store %struct.hidg_func_descriptor* %8, %struct.hidg_func_descriptor** %4, align 8
  %9 = load %struct.hidg_func_descriptor*, %struct.hidg_func_descriptor** %4, align 8
  %10 = icmp ne %struct.hidg_func_descriptor* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.hidg_func_node* @kzalloc(i32 16, i32 %18)
  store %struct.hidg_func_node* %19, %struct.hidg_func_node** %5, align 8
  %20 = load %struct.hidg_func_node*, %struct.hidg_func_node** %5, align 8
  %21 = icmp ne %struct.hidg_func_node* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %32

25:                                               ; preds = %17
  %26 = load %struct.hidg_func_descriptor*, %struct.hidg_func_descriptor** %4, align 8
  %27 = load %struct.hidg_func_node*, %struct.hidg_func_node** %5, align 8
  %28 = getelementptr inbounds %struct.hidg_func_node, %struct.hidg_func_node* %27, i32 0, i32 1
  store %struct.hidg_func_descriptor* %26, %struct.hidg_func_descriptor** %28, align 8
  %29 = load %struct.hidg_func_node*, %struct.hidg_func_node** %5, align 8
  %30 = getelementptr inbounds %struct.hidg_func_node, %struct.hidg_func_node* %29, i32 0, i32 0
  %31 = call i32 @list_add_tail(i32* %30, i32* @hidg_func_list)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %22, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.hidg_func_descriptor* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.hidg_func_node* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
