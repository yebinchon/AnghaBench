; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_gprinter_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_gprinter_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"usb_printer_gadget\00", align 1
@usb_gadget_class = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to create usb_gadget class %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"USB printer gadget\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"alloc_chrdev_region %d\0A\00", align 1
@major = common dso_local global i32 0, align 4
@minors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gprinter_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gprinter_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @THIS_MODULE, align 4
  %7 = call i32* @class_create(i32 %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** @usb_gadget_class, align 8
  %8 = load i32*, i32** @usb_gadget_class, align 8
  %9 = call i64 @IS_ERR(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32*, i32** @usb_gadget_class, align 8
  %13 = call i32 @PTR_ERR(i32* %12)
  store i32 %13, i32* %4, align 4
  store i32* null, i32** @usb_gadget_class, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @alloc_chrdev_region(i32* %5, i32 0, i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** @usb_gadget_class, align 8
  %26 = call i32 @class_destroy(i32* %25)
  store i32* null, i32** @usb_gadget_class, align 8
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %33

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @MAJOR(i32 %29)
  store i32 %30, i32* @major, align 4
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* @minors, align 4
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %22, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32* @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i32 @class_destroy(i32*) #1

declare dso_local i32 @MAJOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
