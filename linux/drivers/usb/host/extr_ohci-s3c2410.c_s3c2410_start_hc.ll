; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-s3c2410.c_s3c2410_start_hc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-s3c2410.c_s3c2410_start_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.s3c2410_hcd_info = type { i32 (%struct.s3c2410_hcd_info*, i32)*, i32, %struct.usb_hcd* }

@.str = private unnamed_addr constant [19 x i8] c"s3c2410_start_hc:\0A\00", align 1
@usb_clk = common dso_local global i32 0, align 4
@clk = common dso_local global i32 0, align 4
@s3c2410_hcd_oc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.usb_hcd*)* @s3c2410_start_hc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_start_hc(%struct.platform_device* %0, %struct.usb_hcd* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.s3c2410_hcd_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.usb_hcd* %1, %struct.usb_hcd** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.s3c2410_hcd_info* @dev_get_platdata(i32* %7)
  store %struct.s3c2410_hcd_info* %8, %struct.s3c2410_hcd_info** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @usb_clk, align 4
  %13 = call i32 @clk_prepare_enable(i32 %12)
  %14 = call i32 @mdelay(i32 2)
  %15 = load i32, i32* @clk, align 4
  %16 = call i32 @clk_prepare_enable(i32 %15)
  %17 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %18 = icmp ne %struct.s3c2410_hcd_info* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %21 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %22 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %21, i32 0, i32 2
  store %struct.usb_hcd* %20, %struct.usb_hcd** %22, align 8
  %23 = load i32, i32* @s3c2410_hcd_oc, align 4
  %24 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %25 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %27 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %26, i32 0, i32 0
  %28 = load i32 (%struct.s3c2410_hcd_info*, i32)*, i32 (%struct.s3c2410_hcd_info*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.s3c2410_hcd_info*, i32)* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %32 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %31, i32 0, i32 0
  %33 = load i32 (%struct.s3c2410_hcd_info*, i32)*, i32 (%struct.s3c2410_hcd_info*, i32)** %32, align 8
  %34 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %35 = call i32 %33(%struct.s3c2410_hcd_info* %34, i32 1)
  br label %36

36:                                               ; preds = %30, %19
  br label %37

37:                                               ; preds = %36, %2
  ret void
}

declare dso_local %struct.s3c2410_hcd_info* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
