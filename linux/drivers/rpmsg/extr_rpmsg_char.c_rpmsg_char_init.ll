; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_char_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_char_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rpmsg_major = common dso_local global i32 0, align 4
@RPMSG_DEV_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rpmsg\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"rpmsg: failed to allocate char dev region\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@rpmsg_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to create rpmsg class\0A\00", align 1
@rpmsg_chrdev_driver = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"rpmsgchr: failed to register rpmsg driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rpmsg_char_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmsg_char_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @RPMSG_DEV_MAX, align 4
  %4 = call i32 @alloc_chrdev_region(i32* @rpmsg_major, i32 0, i32 %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %36

10:                                               ; preds = %0
  %11 = load i32, i32* @THIS_MODULE, align 4
  %12 = call i32 @class_create(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* @rpmsg_class, align 4
  %13 = load i32, i32* @rpmsg_class, align 4
  %14 = call i64 @IS_ERR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @rpmsg_major, align 4
  %19 = load i32, i32* @RPMSG_DEV_MAX, align 4
  %20 = call i32 @unregister_chrdev_region(i32 %18, i32 %19)
  %21 = load i32, i32* @rpmsg_class, align 4
  %22 = call i32 @PTR_ERR(i32 %21)
  store i32 %22, i32* %1, align 4
  br label %36

23:                                               ; preds = %10
  %24 = call i32 @register_rpmsg_driver(i32* @rpmsg_chrdev_driver)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* @rpmsg_class, align 4
  %30 = call i32 @class_destroy(i32 %29)
  %31 = load i32, i32* @rpmsg_major, align 4
  %32 = load i32, i32* @RPMSG_DEV_MAX, align 4
  %33 = call i32 @unregister_chrdev_region(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %34, %16, %7
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @register_rpmsg_driver(i32*) #1

declare dso_local i32 @class_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
