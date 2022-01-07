; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_update_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_update_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i32, i32, i32)* @pl2303_update_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl2303_update_reg(%struct.usb_serial* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_serial*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kmalloc(i32 1, i32 %12)
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %49

19:                                               ; preds = %4
  %20 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, 128
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @pl2303_vendor_read(%struct.usb_serial* %20, i32 %22, i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %45

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = xor i32 %29, -1
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %34, %35
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pl2303_vendor_write(%struct.usb_serial* %40, i32 %41, i32 %43)
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %28, %27
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @kfree(i32* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %16
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @pl2303_vendor_read(%struct.usb_serial*, i32, i32*) #1

declare dso_local i32 @pl2303_vendor_write(%struct.usb_serial*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
