; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"uvesafb\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@uvesafb_cn_id = common dso_local global i32 0, align 4
@uvesafb_cn_callback = common dso_local global i32 0, align 4
@uvesafb_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@uvesafb_device = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@driver_attr_v86d = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to register attributes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @uvesafb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* null, i8** %3, align 8
  %4 = call i64 @fb_get_options(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %50

9:                                                ; preds = %0
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @uvesafb_setup(i8* %10)
  %12 = load i32, i32* @uvesafb_cn_callback, align 4
  %13 = call i32 @cn_add_callback(i32* @uvesafb_cn_id, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* %1, align 4
  br label %50

18:                                               ; preds = %9
  %19 = call i32 @platform_driver_register(%struct.TYPE_4__* @uvesafb_driver)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %18
  %23 = call i64 @platform_device_alloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store i64 %23, i64* @uvesafb_device, align 8
  %24 = load i64, i64* @uvesafb_device, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64, i64* @uvesafb_device, align 8
  %28 = call i32 @platform_device_add(i64 %27)
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i64, i64* @uvesafb_device, align 8
  %37 = call i32 @platform_device_put(i64 %36)
  %38 = call i32 @platform_driver_unregister(%struct.TYPE_4__* @uvesafb_driver)
  %39 = call i32 @cn_del_callback(i32* @uvesafb_cn_id)
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* %1, align 4
  br label %50

41:                                               ; preds = %32
  %42 = call i32 @driver_create_file(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uvesafb_driver, i32 0, i32 0), i32* @driver_attr_v86d)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i32, i32* %2, align 4
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %48, %35, %16, %6
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i64 @fb_get_options(i8*, i8**) #1

declare dso_local i32 @uvesafb_setup(i8*) #1

declare dso_local i32 @cn_add_callback(i32*, i8*, i32) #1

declare dso_local i32 @platform_driver_register(%struct.TYPE_4__*) #1

declare dso_local i64 @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add(i64) #1

declare dso_local i32 @platform_device_put(i64) #1

declare dso_local i32 @platform_driver_unregister(%struct.TYPE_4__*) #1

declare dso_local i32 @cn_del_callback(i32*) #1

declare dso_local i32 @driver_create_file(i32*, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
