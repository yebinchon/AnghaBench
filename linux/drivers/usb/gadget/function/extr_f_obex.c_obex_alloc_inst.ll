; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_obex.c_obex_alloc_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_obex.c_obex_alloc_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function_instance = type { i32, i32 }
%struct.f_serial_opts = type { %struct.usb_function_instance, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@obex_free_inst = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@obex_func_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function_instance* ()* @obex_alloc_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function_instance* @obex_alloc_inst() #0 {
  %1 = alloca %struct.usb_function_instance*, align 8
  %2 = alloca %struct.f_serial_opts*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.f_serial_opts* @kzalloc(i32 12, i32 %4)
  store %struct.f_serial_opts* %5, %struct.f_serial_opts** %2, align 8
  %6 = load %struct.f_serial_opts*, %struct.f_serial_opts** %2, align 8
  %7 = icmp ne %struct.f_serial_opts* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.usb_function_instance* @ERR_PTR(i32 %10)
  store %struct.usb_function_instance* %11, %struct.usb_function_instance** %1, align 8
  br label %34

12:                                               ; preds = %0
  %13 = load i32, i32* @obex_free_inst, align 4
  %14 = load %struct.f_serial_opts*, %struct.f_serial_opts** %2, align 8
  %15 = getelementptr inbounds %struct.f_serial_opts, %struct.f_serial_opts* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.f_serial_opts*, %struct.f_serial_opts** %2, align 8
  %18 = getelementptr inbounds %struct.f_serial_opts, %struct.f_serial_opts* %17, i32 0, i32 1
  %19 = call i32 @gserial_alloc_line(i32* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.f_serial_opts*, %struct.f_serial_opts** %2, align 8
  %24 = call i32 @kfree(%struct.f_serial_opts* %23)
  %25 = load i32, i32* %3, align 4
  %26 = call %struct.usb_function_instance* @ERR_PTR(i32 %25)
  store %struct.usb_function_instance* %26, %struct.usb_function_instance** %1, align 8
  br label %34

27:                                               ; preds = %12
  %28 = load %struct.f_serial_opts*, %struct.f_serial_opts** %2, align 8
  %29 = getelementptr inbounds %struct.f_serial_opts, %struct.f_serial_opts* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %29, i32 0, i32 0
  %31 = call i32 @config_group_init_type_name(i32* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* @obex_func_type)
  %32 = load %struct.f_serial_opts*, %struct.f_serial_opts** %2, align 8
  %33 = getelementptr inbounds %struct.f_serial_opts, %struct.f_serial_opts* %32, i32 0, i32 0
  store %struct.usb_function_instance* %33, %struct.usb_function_instance** %1, align 8
  br label %34

34:                                               ; preds = %27, %22, %8
  %35 = load %struct.usb_function_instance*, %struct.usb_function_instance** %1, align 8
  ret %struct.usb_function_instance* %35
}

declare dso_local %struct.f_serial_opts* @kzalloc(i32, i32) #1

declare dso_local %struct.usb_function_instance* @ERR_PTR(i32) #1

declare dso_local i32 @gserial_alloc_line(i32*) #1

declare dso_local i32 @kfree(%struct.f_serial_opts*) #1

declare dso_local i32 @config_group_init_type_name(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
