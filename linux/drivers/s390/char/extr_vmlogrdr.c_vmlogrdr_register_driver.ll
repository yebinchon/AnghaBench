; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vmlogrdr_iucv_handler = common dso_local global i32 0, align 4
@vmlogrdr_driver = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vmlogrdr\00", align 1
@vmlogrdr_class = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmlogrdr_register_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlogrdr_register_driver() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @iucv_register(i32* @vmlogrdr_iucv_handler, i32 1)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %26

7:                                                ; preds = %0
  %8 = call i32 @driver_register(i32* @vmlogrdr_driver)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %24

12:                                               ; preds = %7
  %13 = load i32, i32* @THIS_MODULE, align 4
  %14 = call i32* @class_create(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** @vmlogrdr_class, align 8
  %15 = load i32*, i32** @vmlogrdr_class, align 8
  %16 = call i64 @IS_ERR(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32*, i32** @vmlogrdr_class, align 8
  %20 = call i32 @PTR_ERR(i32* %19)
  store i32 %20, i32* %2, align 4
  store i32* null, i32** @vmlogrdr_class, align 8
  br label %22

21:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %28

22:                                               ; preds = %18
  %23 = call i32 @driver_unregister(i32* @vmlogrdr_driver)
  br label %24

24:                                               ; preds = %22, %11
  %25 = call i32 @iucv_unregister(i32* @vmlogrdr_iucv_handler, i32 1)
  br label %26

26:                                               ; preds = %24, %6
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @iucv_register(i32*, i32) #1

declare dso_local i32 @driver_register(i32*) #1

declare dso_local i32* @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @driver_unregister(i32*) #1

declare dso_local i32 @iucv_unregister(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
