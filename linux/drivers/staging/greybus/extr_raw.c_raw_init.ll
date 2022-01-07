; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_raw.c_raw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_raw.c_raw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gb_raw\00", align 1
@raw_class = common dso_local global i32 0, align 4
@NUM_MINORS = common dso_local global i32 0, align 4
@raw_major = common dso_local global i32 0, align 4
@gb_raw_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @raw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @THIS_MODULE, align 4
  %5 = call i32 @class_create(i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* @raw_class, align 4
  %6 = load i32, i32* @raw_class, align 4
  %7 = call i64 @IS_ERR(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @raw_class, align 4
  %11 = call i32 @PTR_ERR(i32 %10)
  store i32 %11, i32* %3, align 4
  br label %33

12:                                               ; preds = %0
  %13 = load i32, i32* @NUM_MINORS, align 4
  %14 = call i32 @alloc_chrdev_region(i32* %2, i32 0, i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %30

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @MAJOR(i32 %19)
  store i32 %20, i32* @raw_major, align 4
  %21 = call i32 @greybus_register(i32* @gb_raw_driver)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %26

25:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %35

26:                                               ; preds = %24
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @NUM_MINORS, align 4
  %29 = call i32 @unregister_chrdev_region(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %17
  %31 = load i32, i32* @raw_class, align 4
  %32 = call i32 @class_destroy(i32 %31)
  br label %33

33:                                               ; preds = %30, %9
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %33, %25
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @greybus_register(i32*) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

declare dso_local i32 @class_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
