; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_subset.c_geth_alloc_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_subset.c_geth_alloc_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function_instance = type { i32, i32 }
%struct.f_gether_opts = type { %struct.usb_function_instance, %struct.net_device*, i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@geth_free_inst = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gether_func_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function_instance* ()* @geth_alloc_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function_instance* @geth_alloc_inst() #0 {
  %1 = alloca %struct.usb_function_instance*, align 8
  %2 = alloca %struct.f_gether_opts*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.f_gether_opts* @kzalloc(i32 24, i32 %4)
  store %struct.f_gether_opts* %5, %struct.f_gether_opts** %2, align 8
  %6 = load %struct.f_gether_opts*, %struct.f_gether_opts** %2, align 8
  %7 = icmp ne %struct.f_gether_opts* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.usb_function_instance* @ERR_PTR(i32 %10)
  store %struct.usb_function_instance* %11, %struct.usb_function_instance** %1, align 8
  br label %43

12:                                               ; preds = %0
  %13 = load %struct.f_gether_opts*, %struct.f_gether_opts** %2, align 8
  %14 = getelementptr inbounds %struct.f_gether_opts, %struct.f_gether_opts* %13, i32 0, i32 2
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load i32, i32* @geth_free_inst, align 4
  %17 = load %struct.f_gether_opts*, %struct.f_gether_opts** %2, align 8
  %18 = getelementptr inbounds %struct.f_gether_opts, %struct.f_gether_opts* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = call %struct.net_device* (...) @gether_setup_default()
  %21 = load %struct.f_gether_opts*, %struct.f_gether_opts** %2, align 8
  %22 = getelementptr inbounds %struct.f_gether_opts, %struct.f_gether_opts* %21, i32 0, i32 1
  store %struct.net_device* %20, %struct.net_device** %22, align 8
  %23 = load %struct.f_gether_opts*, %struct.f_gether_opts** %2, align 8
  %24 = getelementptr inbounds %struct.f_gether_opts, %struct.f_gether_opts* %23, i32 0, i32 1
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  %26 = call i64 @IS_ERR(%struct.net_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %12
  %29 = load %struct.f_gether_opts*, %struct.f_gether_opts** %2, align 8
  %30 = getelementptr inbounds %struct.f_gether_opts, %struct.f_gether_opts* %29, i32 0, i32 1
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  store %struct.net_device* %31, %struct.net_device** %3, align 8
  %32 = load %struct.f_gether_opts*, %struct.f_gether_opts** %2, align 8
  %33 = call i32 @kfree(%struct.f_gether_opts* %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call %struct.usb_function_instance* @ERR_CAST(%struct.net_device* %34)
  store %struct.usb_function_instance* %35, %struct.usb_function_instance** %1, align 8
  br label %43

36:                                               ; preds = %12
  %37 = load %struct.f_gether_opts*, %struct.f_gether_opts** %2, align 8
  %38 = getelementptr inbounds %struct.f_gether_opts, %struct.f_gether_opts* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %38, i32 0, i32 0
  %40 = call i32 @config_group_init_type_name(i32* %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* @gether_func_type)
  %41 = load %struct.f_gether_opts*, %struct.f_gether_opts** %2, align 8
  %42 = getelementptr inbounds %struct.f_gether_opts, %struct.f_gether_opts* %41, i32 0, i32 0
  store %struct.usb_function_instance* %42, %struct.usb_function_instance** %1, align 8
  br label %43

43:                                               ; preds = %36, %28, %8
  %44 = load %struct.usb_function_instance*, %struct.usb_function_instance** %1, align 8
  ret %struct.usb_function_instance* %44
}

declare dso_local %struct.f_gether_opts* @kzalloc(i32, i32) #1

declare dso_local %struct.usb_function_instance* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.net_device* @gether_setup_default(...) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.f_gether_opts*) #1

declare dso_local %struct.usb_function_instance* @ERR_CAST(%struct.net_device*) #1

declare dso_local i32 @config_group_init_type_name(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
