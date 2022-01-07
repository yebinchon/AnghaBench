; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_emi62.c_emi62_writememory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_emi62.c_emi62_writememory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"kmalloc(%d) failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i8*, i32, i32)* @emi62_writememory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emi62_writememory(%struct.usb_device* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kmemdup(i8* %14, i32 %15, i32 %16)
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %5
  %21 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %39

27:                                               ; preds = %5
  %28 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %30 = call i32 @usb_sndctrlpipe(%struct.usb_device* %29, i32 0)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @usb_control_msg(%struct.usb_device* %28, i32 %30, i32 %31, i32 64, i32 %32, i32 0, i8* %33, i32 %34, i32 300)
  store i32 %35, i32* %12, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @kfree(i8* %36)
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %27, %20
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
