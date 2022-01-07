; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_hid.c_ghid_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_hid.c_ghid_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hidg\00", align 1
@hidg_class = common dso_local global i32* null, align 8
@major = common dso_local global i32 0, align 4
@minors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ghid_setup(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @THIS_MODULE, align 4
  %9 = call i32* @class_create(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** @hidg_class, align 8
  %10 = load i32*, i32** @hidg_class, align 8
  %11 = call i64 @IS_ERR(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** @hidg_class, align 8
  %15 = call i32 @PTR_ERR(i32* %14)
  store i32 %15, i32* %6, align 4
  store i32* null, i32** @hidg_class, align 8
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @alloc_chrdev_region(i32* %7, i32 0, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32*, i32** @hidg_class, align 8
  %24 = call i32 @class_destroy(i32* %23)
  store i32* null, i32** @hidg_class, align 8
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @MAJOR(i32 %27)
  store i32 %28, i32* @major, align 4
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* @minors, align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %22, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32* @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i32 @class_destroy(i32*) #1

declare dso_local i32 @MAJOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
