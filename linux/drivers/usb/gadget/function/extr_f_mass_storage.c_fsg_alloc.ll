; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_function_instance = type { i32 }
%struct.fsg_opts = type { i32, i32, %struct.fsg_common* }
%struct.fsg_common = type { i32 }
%struct.fsg_dev = type { %struct.usb_function, %struct.fsg_common* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSG_DRIVER_DESC = common dso_local global i32 0, align 4
@fsg_bind = common dso_local global i32 0, align 4
@fsg_unbind = common dso_local global i32 0, align 4
@fsg_setup = common dso_local global i32 0, align 4
@fsg_set_alt = common dso_local global i32 0, align 4
@fsg_disable = common dso_local global i32 0, align 4
@fsg_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function* (%struct.usb_function_instance*)* @fsg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function* @fsg_alloc(%struct.usb_function_instance* %0) #0 {
  %2 = alloca %struct.usb_function*, align 8
  %3 = alloca %struct.usb_function_instance*, align 8
  %4 = alloca %struct.fsg_opts*, align 8
  %5 = alloca %struct.fsg_common*, align 8
  %6 = alloca %struct.fsg_dev*, align 8
  store %struct.usb_function_instance* %0, %struct.usb_function_instance** %3, align 8
  %7 = load %struct.usb_function_instance*, %struct.usb_function_instance** %3, align 8
  %8 = call %struct.fsg_opts* @fsg_opts_from_func_inst(%struct.usb_function_instance* %7)
  store %struct.fsg_opts* %8, %struct.fsg_opts** %4, align 8
  %9 = load %struct.fsg_opts*, %struct.fsg_opts** %4, align 8
  %10 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %9, i32 0, i32 2
  %11 = load %struct.fsg_common*, %struct.fsg_common** %10, align 8
  store %struct.fsg_common* %11, %struct.fsg_common** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.fsg_dev* @kzalloc(i32 40, i32 %12)
  store %struct.fsg_dev* %13, %struct.fsg_dev** %6, align 8
  %14 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %15 = icmp ne %struct.fsg_dev* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.usb_function* @ERR_PTR(i32 %22)
  store %struct.usb_function* %23, %struct.usb_function** %2, align 8
  br label %68

24:                                               ; preds = %1
  %25 = load %struct.fsg_opts*, %struct.fsg_opts** %4, align 8
  %26 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.fsg_opts*, %struct.fsg_opts** %4, align 8
  %29 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.fsg_opts*, %struct.fsg_opts** %4, align 8
  %33 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* @FSG_DRIVER_DESC, align 4
  %36 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %37 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %37, i32 0, i32 6
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @fsg_bind, align 4
  %40 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %41 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %41, i32 0, i32 5
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @fsg_unbind, align 4
  %44 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %45 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @fsg_setup, align 4
  %48 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %49 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @fsg_set_alt, align 4
  %52 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %53 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @fsg_disable, align 4
  %56 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %57 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @fsg_free, align 4
  %60 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %61 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.fsg_common*, %struct.fsg_common** %5, align 8
  %64 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %65 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %64, i32 0, i32 1
  store %struct.fsg_common* %63, %struct.fsg_common** %65, align 8
  %66 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %67 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %66, i32 0, i32 0
  store %struct.usb_function* %67, %struct.usb_function** %2, align 8
  br label %68

68:                                               ; preds = %24, %20
  %69 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  ret %struct.usb_function* %69
}

declare dso_local %struct.fsg_opts* @fsg_opts_from_func_inst(%struct.usb_function_instance*) #1

declare dso_local %struct.fsg_dev* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.usb_function* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
