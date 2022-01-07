; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufx_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_VENDOR_REQUEST_READ_REGISTER = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to read register index 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufx_data*, i32, i32*)* @ufx_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_reg_read(%struct.ufx_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ufx_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ufx_data* %0, %struct.ufx_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32* @kmalloc(i32 4, i32 %10)
  store i32* %11, i32** %8, align 8
  %12 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %13 = icmp ne %struct.ufx_data* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %57

22:                                               ; preds = %3
  %23 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %24 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %27 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_rcvctrlpipe(i32 %28, i32 0)
  %30 = load i32, i32* @USB_VENDOR_REQUEST_READ_REGISTER, align 4
  %31 = load i32, i32* @USB_DIR_IN, align 4
  %32 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %39 = call i32 @usb_control_msg(i32 %25, i32 %29, i32 %30, i32 %35, i32 0, i32 %36, i32* %37, i32 4, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @le32_to_cpus(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %22
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %22
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %19
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @le32_to_cpus(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
