; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_function_instance = type { i32 }
%struct.ffs_function = type { %struct.usb_function }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Function FS Gadget\00", align 1
@ffs_func_bind = common dso_local global i32 0, align 4
@ffs_func_unbind = common dso_local global i32 0, align 4
@ffs_func_set_alt = common dso_local global i32 0, align 4
@ffs_func_disable = common dso_local global i32 0, align 4
@ffs_func_setup = common dso_local global i32 0, align 4
@ffs_func_req_match = common dso_local global i32 0, align 4
@ffs_func_suspend = common dso_local global i32 0, align 4
@ffs_func_resume = common dso_local global i32 0, align 4
@ffs_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function* (%struct.usb_function_instance*)* @ffs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function* @ffs_alloc(%struct.usb_function_instance* %0) #0 {
  %2 = alloca %struct.usb_function*, align 8
  %3 = alloca %struct.usb_function_instance*, align 8
  %4 = alloca %struct.ffs_function*, align 8
  store %struct.usb_function_instance* %0, %struct.usb_function_instance** %3, align 8
  %5 = call i32 (...) @ENTER()
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ffs_function* @kzalloc(i32 48, i32 %6)
  store %struct.ffs_function* %7, %struct.ffs_function** %4, align 8
  %8 = load %struct.ffs_function*, %struct.ffs_function** %4, align 8
  %9 = icmp ne %struct.ffs_function* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.usb_function* @ERR_PTR(i32 %16)
  store %struct.usb_function* %17, %struct.usb_function** %2, align 8
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.ffs_function*, %struct.ffs_function** %4, align 8
  %20 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load i32, i32* @ffs_func_bind, align 4
  %23 = load %struct.ffs_function*, %struct.ffs_function** %4, align 8
  %24 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %24, i32 0, i32 9
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @ffs_func_unbind, align 4
  %27 = load %struct.ffs_function*, %struct.ffs_function** %4, align 8
  %28 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %28, i32 0, i32 8
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @ffs_func_set_alt, align 4
  %31 = load %struct.ffs_function*, %struct.ffs_function** %4, align 8
  %32 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %32, i32 0, i32 7
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @ffs_func_disable, align 4
  %35 = load %struct.ffs_function*, %struct.ffs_function** %4, align 8
  %36 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %36, i32 0, i32 6
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @ffs_func_setup, align 4
  %39 = load %struct.ffs_function*, %struct.ffs_function** %4, align 8
  %40 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %40, i32 0, i32 5
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @ffs_func_req_match, align 4
  %43 = load %struct.ffs_function*, %struct.ffs_function** %4, align 8
  %44 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @ffs_func_suspend, align 4
  %47 = load %struct.ffs_function*, %struct.ffs_function** %4, align 8
  %48 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @ffs_func_resume, align 4
  %51 = load %struct.ffs_function*, %struct.ffs_function** %4, align 8
  %52 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @ffs_free, align 4
  %55 = load %struct.ffs_function*, %struct.ffs_function** %4, align 8
  %56 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 8
  %58 = load %struct.ffs_function*, %struct.ffs_function** %4, align 8
  %59 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %58, i32 0, i32 0
  store %struct.usb_function* %59, %struct.usb_function** %2, align 8
  br label %60

60:                                               ; preds = %18, %14
  %61 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  ret %struct.usb_function* %61
}

declare dso_local i32 @ENTER(...) #1

declare dso_local %struct.ffs_function* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.usb_function* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
