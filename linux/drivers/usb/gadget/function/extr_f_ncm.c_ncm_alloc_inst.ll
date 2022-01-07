; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_ncm_alloc_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_ncm_alloc_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function_instance = type { i32, i32 (%struct.usb_function_instance*)* }
%struct.f_ncm_opts = type { %struct.usb_function_instance, %struct.net_device*, %struct.usb_os_desc, %struct.net_device*, i32, i32 }
%struct.usb_os_desc = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.config_group = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ncm\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ncm_func_type = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function_instance* ()* @ncm_alloc_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function_instance* @ncm_alloc_inst() #0 {
  %1 = alloca %struct.usb_function_instance*, align 8
  %2 = alloca %struct.f_ncm_opts*, align 8
  %3 = alloca [1 x %struct.usb_os_desc*], align 8
  %4 = alloca [1 x i8*], align 8
  %5 = alloca %struct.config_group*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.f_ncm_opts* @kzalloc(i32 48, i32 %7)
  store %struct.f_ncm_opts* %8, %struct.f_ncm_opts** %2, align 8
  %9 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %10 = icmp ne %struct.f_ncm_opts* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.usb_function_instance* @ERR_PTR(i32 %13)
  store %struct.usb_function_instance* %14, %struct.usb_function_instance** %1, align 8
  br label %83

15:                                               ; preds = %0
  %16 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %17 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %20 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %23 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %22, i32 0, i32 4
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %26 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %26, i32 0, i32 1
  store i32 (%struct.usb_function_instance*)* @ncm_free_inst, i32 (%struct.usb_function_instance*)** %27, align 8
  %28 = call %struct.net_device* (...) @gether_setup_default()
  %29 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %30 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %29, i32 0, i32 3
  store %struct.net_device* %28, %struct.net_device** %30, align 8
  %31 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %32 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %31, i32 0, i32 3
  %33 = load %struct.net_device*, %struct.net_device** %32, align 8
  %34 = call i64 @IS_ERR(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %15
  %37 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %38 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %37, i32 0, i32 3
  %39 = load %struct.net_device*, %struct.net_device** %38, align 8
  store %struct.net_device* %39, %struct.net_device** %6, align 8
  %40 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %41 = call i32 @kfree(%struct.f_ncm_opts* %40)
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = call %struct.usb_function_instance* @ERR_CAST(%struct.net_device* %42)
  store %struct.usb_function_instance* %43, %struct.usb_function_instance** %1, align 8
  br label %83

44:                                               ; preds = %15
  %45 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %46 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %46, i32 0, i32 0
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %50 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %49, i32 0, i32 2
  %51 = getelementptr inbounds [1 x %struct.usb_os_desc*], [1 x %struct.usb_os_desc*]* %3, i64 0, i64 0
  store %struct.usb_os_desc* %50, %struct.usb_os_desc** %51, align 8
  %52 = getelementptr inbounds [1 x i8*], [1 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %54 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %54, i32 0, i32 0
  %56 = call i32 @config_group_init_type_name(i32* %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32* @ncm_func_type)
  %57 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %58 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %58, i32 0, i32 0
  %60 = getelementptr inbounds [1 x %struct.usb_os_desc*], [1 x %struct.usb_os_desc*]* %3, i64 0, i64 0
  %61 = getelementptr inbounds [1 x i8*], [1 x i8*]* %4, i64 0, i64 0
  %62 = load i32, i32* @THIS_MODULE, align 4
  %63 = call %struct.net_device* @usb_os_desc_prepare_interf_dir(i32* %59, i32 1, %struct.usb_os_desc** %60, i8** %61, i32 %62)
  %64 = bitcast %struct.net_device* %63 to %struct.config_group*
  store %struct.config_group* %64, %struct.config_group** %5, align 8
  %65 = load %struct.config_group*, %struct.config_group** %5, align 8
  %66 = bitcast %struct.config_group* %65 to %struct.net_device*
  %67 = call i64 @IS_ERR(%struct.net_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %44
  %70 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %71 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %70, i32 0, i32 0
  %72 = call i32 @ncm_free_inst(%struct.usb_function_instance* %71)
  %73 = load %struct.config_group*, %struct.config_group** %5, align 8
  %74 = bitcast %struct.config_group* %73 to %struct.net_device*
  %75 = call %struct.usb_function_instance* @ERR_CAST(%struct.net_device* %74)
  store %struct.usb_function_instance* %75, %struct.usb_function_instance** %1, align 8
  br label %83

76:                                               ; preds = %44
  %77 = load %struct.config_group*, %struct.config_group** %5, align 8
  %78 = bitcast %struct.config_group* %77 to %struct.net_device*
  %79 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %80 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %79, i32 0, i32 1
  store %struct.net_device* %78, %struct.net_device** %80, align 8
  %81 = load %struct.f_ncm_opts*, %struct.f_ncm_opts** %2, align 8
  %82 = getelementptr inbounds %struct.f_ncm_opts, %struct.f_ncm_opts* %81, i32 0, i32 0
  store %struct.usb_function_instance* %82, %struct.usb_function_instance** %1, align 8
  br label %83

83:                                               ; preds = %76, %69, %36, %11
  %84 = load %struct.usb_function_instance*, %struct.usb_function_instance** %1, align 8
  ret %struct.usb_function_instance* %84
}

declare dso_local %struct.f_ncm_opts* @kzalloc(i32, i32) #1

declare dso_local %struct.usb_function_instance* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ncm_free_inst(%struct.usb_function_instance*) #1

declare dso_local %struct.net_device* @gether_setup_default(...) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.f_ncm_opts*) #1

declare dso_local %struct.usb_function_instance* @ERR_CAST(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @config_group_init_type_name(i32*, i8*, i32*) #1

declare dso_local %struct.net_device* @usb_os_desc_prepare_interf_dir(i32*, i32, %struct.usb_os_desc**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
