; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uac2.c_afunc_alloc_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uac2.c_afunc_alloc_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function_instance = type { i32, i32 }
%struct.f_uac2_opts = type { %struct.usb_function_instance, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@afunc_free_inst = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@f_uac2_func_type = common dso_local global i32 0, align 4
@UAC2_DEF_PCHMASK = common dso_local global i32 0, align 4
@UAC2_DEF_PSRATE = common dso_local global i32 0, align 4
@UAC2_DEF_PSSIZE = common dso_local global i32 0, align 4
@UAC2_DEF_CCHMASK = common dso_local global i32 0, align 4
@UAC2_DEF_CSRATE = common dso_local global i32 0, align 4
@UAC2_DEF_CSSIZE = common dso_local global i32 0, align 4
@UAC2_DEF_REQ_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function_instance* ()* @afunc_alloc_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function_instance* @afunc_alloc_inst() #0 {
  %1 = alloca %struct.usb_function_instance*, align 8
  %2 = alloca %struct.f_uac2_opts*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.f_uac2_opts* @kzalloc(i32 40, i32 %3)
  store %struct.f_uac2_opts* %4, %struct.f_uac2_opts** %2, align 8
  %5 = load %struct.f_uac2_opts*, %struct.f_uac2_opts** %2, align 8
  %6 = icmp ne %struct.f_uac2_opts* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.usb_function_instance* @ERR_PTR(i32 %9)
  store %struct.usb_function_instance* %10, %struct.usb_function_instance** %1, align 8
  br label %46

11:                                               ; preds = %0
  %12 = load %struct.f_uac2_opts*, %struct.f_uac2_opts** %2, align 8
  %13 = getelementptr inbounds %struct.f_uac2_opts, %struct.f_uac2_opts* %12, i32 0, i32 8
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load i32, i32* @afunc_free_inst, align 4
  %16 = load %struct.f_uac2_opts*, %struct.f_uac2_opts** %2, align 8
  %17 = getelementptr inbounds %struct.f_uac2_opts, %struct.f_uac2_opts* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.f_uac2_opts*, %struct.f_uac2_opts** %2, align 8
  %20 = getelementptr inbounds %struct.f_uac2_opts, %struct.f_uac2_opts* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %20, i32 0, i32 0
  %22 = call i32 @config_group_init_type_name(i32* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* @f_uac2_func_type)
  %23 = load i32, i32* @UAC2_DEF_PCHMASK, align 4
  %24 = load %struct.f_uac2_opts*, %struct.f_uac2_opts** %2, align 8
  %25 = getelementptr inbounds %struct.f_uac2_opts, %struct.f_uac2_opts* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @UAC2_DEF_PSRATE, align 4
  %27 = load %struct.f_uac2_opts*, %struct.f_uac2_opts** %2, align 8
  %28 = getelementptr inbounds %struct.f_uac2_opts, %struct.f_uac2_opts* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @UAC2_DEF_PSSIZE, align 4
  %30 = load %struct.f_uac2_opts*, %struct.f_uac2_opts** %2, align 8
  %31 = getelementptr inbounds %struct.f_uac2_opts, %struct.f_uac2_opts* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @UAC2_DEF_CCHMASK, align 4
  %33 = load %struct.f_uac2_opts*, %struct.f_uac2_opts** %2, align 8
  %34 = getelementptr inbounds %struct.f_uac2_opts, %struct.f_uac2_opts* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @UAC2_DEF_CSRATE, align 4
  %36 = load %struct.f_uac2_opts*, %struct.f_uac2_opts** %2, align 8
  %37 = getelementptr inbounds %struct.f_uac2_opts, %struct.f_uac2_opts* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @UAC2_DEF_CSSIZE, align 4
  %39 = load %struct.f_uac2_opts*, %struct.f_uac2_opts** %2, align 8
  %40 = getelementptr inbounds %struct.f_uac2_opts, %struct.f_uac2_opts* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @UAC2_DEF_REQ_NUM, align 4
  %42 = load %struct.f_uac2_opts*, %struct.f_uac2_opts** %2, align 8
  %43 = getelementptr inbounds %struct.f_uac2_opts, %struct.f_uac2_opts* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.f_uac2_opts*, %struct.f_uac2_opts** %2, align 8
  %45 = getelementptr inbounds %struct.f_uac2_opts, %struct.f_uac2_opts* %44, i32 0, i32 0
  store %struct.usb_function_instance* %45, %struct.usb_function_instance** %1, align 8
  br label %46

46:                                               ; preds = %11, %7
  %47 = load %struct.usb_function_instance*, %struct.usb_function_instance** %1, align 8
  ret %struct.usb_function_instance* %47
}

declare dso_local %struct.f_uac2_opts* @kzalloc(i32, i32) #1

declare dso_local %struct.usb_function_instance* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @config_group_init_type_name(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
