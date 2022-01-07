; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_cache_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_cache_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@MAX_USB_STRING_SIZE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @usb_cache_string(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %45

12:                                               ; preds = %2
  %13 = load i32, i32* @MAX_USB_STRING_SIZE, align 4
  %14 = load i32, i32* @GFP_NOIO, align 4
  %15 = call i8* @kmalloc(i32 %13, i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %12
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @MAX_USB_STRING_SIZE, align 4
  %23 = call i32 @usb_string(%struct.usb_device* %19, i32 %20, i8* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @GFP_NOIO, align 4
  %30 = call i8* @kmalloc(i32 %28, i32 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %3, align 8
  br label %45

35:                                               ; preds = %26
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @memcpy(i8* %36, i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %18
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @kfree(i8* %41)
  br label %43

43:                                               ; preds = %40, %12
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %3, align 8
  br label %45

45:                                               ; preds = %43, %33, %11
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
