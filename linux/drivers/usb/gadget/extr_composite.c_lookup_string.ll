; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_lookup_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_lookup_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget_strings = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget_strings**, i8*, i64, i32)* @lookup_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_string(%struct.usb_gadget_strings** %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_gadget_strings**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_gadget_strings*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_gadget_strings** %0, %struct.usb_gadget_strings*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %35, %25, %4
  %13 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %6, align 8
  %14 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %13, align 8
  %15 = icmp ne %struct.usb_gadget_strings* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %6, align 8
  %18 = getelementptr inbounds %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %17, i32 1
  store %struct.usb_gadget_strings** %18, %struct.usb_gadget_strings*** %6, align 8
  %19 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %17, align 8
  store %struct.usb_gadget_strings* %19, %struct.usb_gadget_strings** %10, align 8
  %20 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %10, align 8
  %21 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %12

26:                                               ; preds = %16
  %27 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %10, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @usb_gadget_get_string(%struct.usb_gadget_strings* %27, i32 %28, i8* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %39

35:                                               ; preds = %26
  br label %12

36:                                               ; preds = %12
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @usb_gadget_get_string(%struct.usb_gadget_strings*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
