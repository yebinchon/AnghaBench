; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_rom_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_rom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_REQUEST_ION_WRITE_ROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i32, i32, i32, i32*)* @rom_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rom_write(%struct.usb_serial* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmalloc(i32 64, i32 %15)
  store i8* %16, i8** %14, align 8
  %17 = load i8*, i8** %14, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %68

22:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %53, %22
  %24 = load i32, i32* %10, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 64
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 64, i32* %13, align 4
  br label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = load i8*, i8** %14, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @memcpy(i8* %33, i32* %34, i32 %35)
  %37 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %38 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %41 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @usb_sndctrlpipe(i32 %42, i32 0)
  %44 = load i32, i32* @USB_REQUEST_ION_WRITE_ROM, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %14, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @usb_control_msg(i32 %39, i32 %43, i32 %44, i32 64, i32 %45, i32 %46, i8* %47, i32 %48, i32 300)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  br label %64

53:                                               ; preds = %32
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %11, align 8
  br label %23

64:                                               ; preds = %52, %23
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @kfree(i8* %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %19
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
