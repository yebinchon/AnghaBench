; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_tcm_alloc_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_tcm_alloc_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.usb_function_instance* }
%struct.usb_function_instance = type { i32, i32, i32 }
%struct.f_tcm_opts = type { %struct.usb_function_instance, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tpg_instances_lock = common dso_local global i32 0, align 4
@TPG_INSTANCES = common dso_local global i32 0, align 4
@tpg_instances = common dso_local global %struct.TYPE_2__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@tcm_set_name = common dso_local global i32 0, align 4
@tcm_free_inst = common dso_local global i32 0, align 4
@tcm_register_callback = common dso_local global i32 0, align 4
@tcm_unregister_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tcm_func_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function_instance* ()* @tcm_alloc_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function_instance* @tcm_alloc_inst() #0 {
  %1 = alloca %struct.usb_function_instance*, align 8
  %2 = alloca %struct.f_tcm_opts*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.f_tcm_opts* @kzalloc(i32 24, i32 %4)
  store %struct.f_tcm_opts* %5, %struct.f_tcm_opts** %2, align 8
  %6 = load %struct.f_tcm_opts*, %struct.f_tcm_opts** %2, align 8
  %7 = icmp ne %struct.f_tcm_opts* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.usb_function_instance* @ERR_PTR(i32 %10)
  store %struct.usb_function_instance* %11, %struct.usb_function_instance** %1, align 8
  br label %74

12:                                               ; preds = %0
  %13 = call i32 @mutex_lock(i32* @tpg_instances_lock)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %28, %12
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @TPG_INSTANCES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tpg_instances, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.usb_function_instance*, %struct.usb_function_instance** %23, align 8
  %25 = icmp ne %struct.usb_function_instance* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %31

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %14

31:                                               ; preds = %26, %14
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @TPG_INSTANCES, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = call i32 @mutex_unlock(i32* @tpg_instances_lock)
  %37 = load %struct.f_tcm_opts*, %struct.f_tcm_opts** %2, align 8
  %38 = call i32 @kfree(%struct.f_tcm_opts* %37)
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.usb_function_instance* @ERR_PTR(i32 %40)
  store %struct.usb_function_instance* %41, %struct.usb_function_instance** %1, align 8
  br label %74

42:                                               ; preds = %31
  %43 = load %struct.f_tcm_opts*, %struct.f_tcm_opts** %2, align 8
  %44 = getelementptr inbounds %struct.f_tcm_opts, %struct.f_tcm_opts* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tpg_instances, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store %struct.usb_function_instance* %44, %struct.usb_function_instance** %49, align 8
  %50 = call i32 @mutex_unlock(i32* @tpg_instances_lock)
  %51 = load %struct.f_tcm_opts*, %struct.f_tcm_opts** %2, align 8
  %52 = getelementptr inbounds %struct.f_tcm_opts, %struct.f_tcm_opts* %51, i32 0, i32 3
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load i32, i32* @tcm_set_name, align 4
  %55 = load %struct.f_tcm_opts*, %struct.f_tcm_opts** %2, align 8
  %56 = getelementptr inbounds %struct.f_tcm_opts, %struct.f_tcm_opts* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @tcm_free_inst, align 4
  %59 = load %struct.f_tcm_opts*, %struct.f_tcm_opts** %2, align 8
  %60 = getelementptr inbounds %struct.f_tcm_opts, %struct.f_tcm_opts* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @tcm_register_callback, align 4
  %63 = load %struct.f_tcm_opts*, %struct.f_tcm_opts** %2, align 8
  %64 = getelementptr inbounds %struct.f_tcm_opts, %struct.f_tcm_opts* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @tcm_unregister_callback, align 4
  %66 = load %struct.f_tcm_opts*, %struct.f_tcm_opts** %2, align 8
  %67 = getelementptr inbounds %struct.f_tcm_opts, %struct.f_tcm_opts* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.f_tcm_opts*, %struct.f_tcm_opts** %2, align 8
  %69 = getelementptr inbounds %struct.f_tcm_opts, %struct.f_tcm_opts* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %69, i32 0, i32 0
  %71 = call i32 @config_group_init_type_name(i32* %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* @tcm_func_type)
  %72 = load %struct.f_tcm_opts*, %struct.f_tcm_opts** %2, align 8
  %73 = getelementptr inbounds %struct.f_tcm_opts, %struct.f_tcm_opts* %72, i32 0, i32 0
  store %struct.usb_function_instance* %73, %struct.usb_function_instance** %1, align 8
  br label %74

74:                                               ; preds = %42, %35, %8
  %75 = load %struct.usb_function_instance*, %struct.usb_function_instance** %1, align 8
  ret %struct.usb_function_instance* %75
}

declare dso_local %struct.f_tcm_opts* @kzalloc(i32, i32) #1

declare dso_local %struct.usb_function_instance* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.f_tcm_opts*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @config_group_init_type_name(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
