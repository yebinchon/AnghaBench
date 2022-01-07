; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_gprinter_alloc_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_gprinter_alloc_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function_instance = type { i32, i32 }
%struct.f_printer_opts = type { i64, %struct.usb_function_instance, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gprinter_free_inst = common dso_local global i32 0, align 4
@printer_ida_lock = common dso_local global i32 0, align 4
@printer_ida = common dso_local global i32 0, align 4
@PRINTER_MINORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@printer_func_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function_instance* ()* @gprinter_alloc_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function_instance* @gprinter_alloc_inst() #0 {
  %1 = alloca %struct.usb_function_instance*, align 8
  %2 = alloca %struct.f_printer_opts*, align 8
  %3 = alloca %struct.usb_function_instance*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.f_printer_opts* @kzalloc(i32 24, i32 %5)
  store %struct.f_printer_opts* %6, %struct.f_printer_opts** %2, align 8
  %7 = load %struct.f_printer_opts*, %struct.f_printer_opts** %2, align 8
  %8 = icmp ne %struct.f_printer_opts* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.usb_function_instance* @ERR_PTR(i32 %11)
  store %struct.usb_function_instance* %12, %struct.usb_function_instance** %1, align 8
  br label %66

13:                                               ; preds = %0
  %14 = load %struct.f_printer_opts*, %struct.f_printer_opts** %2, align 8
  %15 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %14, i32 0, i32 2
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load i32, i32* @gprinter_free_inst, align 4
  %18 = load %struct.f_printer_opts*, %struct.f_printer_opts** %2, align 8
  %19 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.f_printer_opts*, %struct.f_printer_opts** %2, align 8
  %22 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %21, i32 0, i32 1
  store %struct.usb_function_instance* %22, %struct.usb_function_instance** %3, align 8
  %23 = call i32 @mutex_lock(i32* @printer_ida_lock)
  %24 = call i64 @ida_is_empty(i32* @printer_ida)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %13
  %27 = load i32, i32* @PRINTER_MINORS, align 4
  %28 = call i32 @gprinter_setup(i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.usb_function_instance* @ERR_PTR(i32 %32)
  store %struct.usb_function_instance* %33, %struct.usb_function_instance** %3, align 8
  %34 = load %struct.f_printer_opts*, %struct.f_printer_opts** %2, align 8
  %35 = call i32 @kfree(%struct.f_printer_opts* %34)
  br label %63

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %13
  %38 = call i64 (...) @gprinter_get_minor()
  %39 = load %struct.f_printer_opts*, %struct.f_printer_opts** %2, align 8
  %40 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.f_printer_opts*, %struct.f_printer_opts** %2, align 8
  %42 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load %struct.f_printer_opts*, %struct.f_printer_opts** %2, align 8
  %47 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call %struct.usb_function_instance* @ERR_PTR(i32 %49)
  store %struct.usb_function_instance* %50, %struct.usb_function_instance** %3, align 8
  %51 = load %struct.f_printer_opts*, %struct.f_printer_opts** %2, align 8
  %52 = call i32 @kfree(%struct.f_printer_opts* %51)
  %53 = call i64 @ida_is_empty(i32* @printer_ida)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = call i32 (...) @gprinter_cleanup()
  br label %57

57:                                               ; preds = %55, %45
  br label %63

58:                                               ; preds = %37
  %59 = load %struct.f_printer_opts*, %struct.f_printer_opts** %2, align 8
  %60 = getelementptr inbounds %struct.f_printer_opts, %struct.f_printer_opts* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %60, i32 0, i32 0
  %62 = call i32 @config_group_init_type_name(i32* %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* @printer_func_type)
  br label %63

63:                                               ; preds = %58, %57, %31
  %64 = call i32 @mutex_unlock(i32* @printer_ida_lock)
  %65 = load %struct.usb_function_instance*, %struct.usb_function_instance** %3, align 8
  store %struct.usb_function_instance* %65, %struct.usb_function_instance** %1, align 8
  br label %66

66:                                               ; preds = %63, %9
  %67 = load %struct.usb_function_instance*, %struct.usb_function_instance** %1, align 8
  ret %struct.usb_function_instance* %67
}

declare dso_local %struct.f_printer_opts* @kzalloc(i32, i32) #1

declare dso_local %struct.usb_function_instance* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ida_is_empty(i32*) #1

declare dso_local i32 @gprinter_setup(i32) #1

declare dso_local i32 @kfree(%struct.f_printer_opts*) #1

declare dso_local i64 @gprinter_get_minor(...) #1

declare dso_local i32 @gprinter_cleanup(...) #1

declare dso_local i32 @config_group_init_type_name(i32*, i8*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
