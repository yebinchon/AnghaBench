; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_phonet.c_phonet_alloc_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_phonet.c_phonet_alloc_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function_instance = type { i32, i32 }
%struct.f_phonet_opts = type { %struct.usb_function_instance, %struct.net_device* }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@phonet_free_inst = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@phonet_func_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function_instance* ()* @phonet_alloc_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function_instance* @phonet_alloc_inst() #0 {
  %1 = alloca %struct.usb_function_instance*, align 8
  %2 = alloca %struct.f_phonet_opts*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.f_phonet_opts* @kzalloc(i32 16, i32 %4)
  store %struct.f_phonet_opts* %5, %struct.f_phonet_opts** %2, align 8
  %6 = load %struct.f_phonet_opts*, %struct.f_phonet_opts** %2, align 8
  %7 = icmp ne %struct.f_phonet_opts* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.usb_function_instance* @ERR_PTR(i32 %10)
  store %struct.usb_function_instance* %11, %struct.usb_function_instance** %1, align 8
  br label %40

12:                                               ; preds = %0
  %13 = load i32, i32* @phonet_free_inst, align 4
  %14 = load %struct.f_phonet_opts*, %struct.f_phonet_opts** %2, align 8
  %15 = getelementptr inbounds %struct.f_phonet_opts, %struct.f_phonet_opts* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = call %struct.net_device* (...) @gphonet_setup_default()
  %18 = load %struct.f_phonet_opts*, %struct.f_phonet_opts** %2, align 8
  %19 = getelementptr inbounds %struct.f_phonet_opts, %struct.f_phonet_opts* %18, i32 0, i32 1
  store %struct.net_device* %17, %struct.net_device** %19, align 8
  %20 = load %struct.f_phonet_opts*, %struct.f_phonet_opts** %2, align 8
  %21 = getelementptr inbounds %struct.f_phonet_opts, %struct.f_phonet_opts* %20, i32 0, i32 1
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  %23 = call i64 @IS_ERR(%struct.net_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %12
  %26 = load %struct.f_phonet_opts*, %struct.f_phonet_opts** %2, align 8
  %27 = getelementptr inbounds %struct.f_phonet_opts, %struct.f_phonet_opts* %26, i32 0, i32 1
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %3, align 8
  %29 = load %struct.f_phonet_opts*, %struct.f_phonet_opts** %2, align 8
  %30 = call i32 @kfree(%struct.f_phonet_opts* %29)
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call %struct.usb_function_instance* @ERR_CAST(%struct.net_device* %31)
  store %struct.usb_function_instance* %32, %struct.usb_function_instance** %1, align 8
  br label %40

33:                                               ; preds = %12
  %34 = load %struct.f_phonet_opts*, %struct.f_phonet_opts** %2, align 8
  %35 = getelementptr inbounds %struct.f_phonet_opts, %struct.f_phonet_opts* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %35, i32 0, i32 0
  %37 = call i32 @config_group_init_type_name(i32* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* @phonet_func_type)
  %38 = load %struct.f_phonet_opts*, %struct.f_phonet_opts** %2, align 8
  %39 = getelementptr inbounds %struct.f_phonet_opts, %struct.f_phonet_opts* %38, i32 0, i32 0
  store %struct.usb_function_instance* %39, %struct.usb_function_instance** %1, align 8
  br label %40

40:                                               ; preds = %33, %25, %8
  %41 = load %struct.usb_function_instance*, %struct.usb_function_instance** %1, align 8
  ret %struct.usb_function_instance* %41
}

declare dso_local %struct.f_phonet_opts* @kzalloc(i32, i32) #1

declare dso_local %struct.usb_function_instance* @ERR_PTR(i32) #1

declare dso_local %struct.net_device* @gphonet_setup_default(...) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.f_phonet_opts*) #1

declare dso_local %struct.usb_function_instance* @ERR_CAST(%struct.net_device*) #1

declare dso_local i32 @config_group_init_type_name(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
