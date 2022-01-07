; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_alloc_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_alloc_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function_instance = type { i32, i32, i32 }
%struct.f_fs_opts = type { %struct.usb_function_instance, %struct.ffs_dev* }
%struct.ffs_dev = type { %struct.f_fs_opts* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ffs_set_inst_name = common dso_local global i32 0, align 4
@ffs_free_inst = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ffs_func_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function_instance* ()* @ffs_alloc_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function_instance* @ffs_alloc_inst() #0 {
  %1 = alloca %struct.usb_function_instance*, align 8
  %2 = alloca %struct.f_fs_opts*, align 8
  %3 = alloca %struct.ffs_dev*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.f_fs_opts* @kzalloc(i32 24, i32 %4)
  store %struct.f_fs_opts* %5, %struct.f_fs_opts** %2, align 8
  %6 = load %struct.f_fs_opts*, %struct.f_fs_opts** %2, align 8
  %7 = icmp ne %struct.f_fs_opts* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.usb_function_instance* @ERR_PTR(i32 %10)
  store %struct.usb_function_instance* %11, %struct.usb_function_instance** %1, align 8
  br label %45

12:                                               ; preds = %0
  %13 = load i32, i32* @ffs_set_inst_name, align 4
  %14 = load %struct.f_fs_opts*, %struct.f_fs_opts** %2, align 8
  %15 = getelementptr inbounds %struct.f_fs_opts, %struct.f_fs_opts* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @ffs_free_inst, align 4
  %18 = load %struct.f_fs_opts*, %struct.f_fs_opts** %2, align 8
  %19 = getelementptr inbounds %struct.f_fs_opts, %struct.f_fs_opts* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = call i32 (...) @ffs_dev_lock()
  %22 = call %struct.ffs_dev* (...) @_ffs_alloc_dev()
  store %struct.ffs_dev* %22, %struct.ffs_dev** %3, align 8
  %23 = call i32 (...) @ffs_dev_unlock()
  %24 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %25 = call i64 @IS_ERR(%struct.ffs_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %12
  %28 = load %struct.f_fs_opts*, %struct.f_fs_opts** %2, align 8
  %29 = call i32 @kfree(%struct.f_fs_opts* %28)
  %30 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %31 = call %struct.usb_function_instance* @ERR_CAST(%struct.ffs_dev* %30)
  store %struct.usb_function_instance* %31, %struct.usb_function_instance** %1, align 8
  br label %45

32:                                               ; preds = %12
  %33 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %34 = load %struct.f_fs_opts*, %struct.f_fs_opts** %2, align 8
  %35 = getelementptr inbounds %struct.f_fs_opts, %struct.f_fs_opts* %34, i32 0, i32 1
  store %struct.ffs_dev* %33, %struct.ffs_dev** %35, align 8
  %36 = load %struct.f_fs_opts*, %struct.f_fs_opts** %2, align 8
  %37 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %38 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %37, i32 0, i32 0
  store %struct.f_fs_opts* %36, %struct.f_fs_opts** %38, align 8
  %39 = load %struct.f_fs_opts*, %struct.f_fs_opts** %2, align 8
  %40 = getelementptr inbounds %struct.f_fs_opts, %struct.f_fs_opts* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %40, i32 0, i32 0
  %42 = call i32 @config_group_init_type_name(i32* %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* @ffs_func_type)
  %43 = load %struct.f_fs_opts*, %struct.f_fs_opts** %2, align 8
  %44 = getelementptr inbounds %struct.f_fs_opts, %struct.f_fs_opts* %43, i32 0, i32 0
  store %struct.usb_function_instance* %44, %struct.usb_function_instance** %1, align 8
  br label %45

45:                                               ; preds = %32, %27, %8
  %46 = load %struct.usb_function_instance*, %struct.usb_function_instance** %1, align 8
  ret %struct.usb_function_instance* %46
}

declare dso_local %struct.f_fs_opts* @kzalloc(i32, i32) #1

declare dso_local %struct.usb_function_instance* @ERR_PTR(i32) #1

declare dso_local i32 @ffs_dev_lock(...) #1

declare dso_local %struct.ffs_dev* @_ffs_alloc_dev(...) #1

declare dso_local i32 @ffs_dev_unlock(...) #1

declare dso_local i64 @IS_ERR(%struct.ffs_dev*) #1

declare dso_local i32 @kfree(%struct.f_fs_opts*) #1

declare dso_local %struct.usb_function_instance* @ERR_CAST(%struct.ffs_dev*) #1

declare dso_local i32 @config_group_init_type_name(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
