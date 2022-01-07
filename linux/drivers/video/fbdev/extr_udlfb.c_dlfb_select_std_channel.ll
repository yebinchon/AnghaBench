; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_select_std_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_select_std_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlfb_data = type { i32 }

@dlfb_select_std_channel.set_def_chn = internal constant [16 x i32] [i32 87, i32 205, i32 220, i32 167, i32 28, i32 136, i32 94, i32 21, i32 96, i32 254, i32 198, i32 151, i32 22, i32 61, i32 71, i32 242], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NR_USB_REQUEST_CHANNEL = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlfb_data*)* @dlfb_select_std_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_select_std_channel(%struct.dlfb_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlfb_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.dlfb_data* %0, %struct.dlfb_data** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kmemdup(i32* getelementptr inbounds ([16 x i32], [16 x i32]* @dlfb_select_std_channel.set_def_chn, i64 0, i64 0), i32 64, i32 %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %15 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %18 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @usb_sndctrlpipe(i32 %19, i32 0)
  %21 = load i32, i32* @NR_USB_REQUEST_CHANNEL, align 4
  %22 = load i32, i32* @USB_DIR_OUT, align 4
  %23 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %24 = or i32 %22, %23
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %27 = call i32 @usb_control_msg(i32 %16, i32 %20, i32 %21, i32 %24, i32 0, i32 0, i8* %25, i32 64, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @kfree(i8* %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %13, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i8* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
