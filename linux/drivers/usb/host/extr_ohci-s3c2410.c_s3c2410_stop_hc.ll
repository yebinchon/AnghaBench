; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-s3c2410.c_s3c2410_stop_hc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-s3c2410.c_s3c2410_stop_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s3c2410_hcd_info = type { i32 (%struct.s3c2410_hcd_info*, i32)*, i32*, i32* }

@.str = private unnamed_addr constant [18 x i8] c"s3c2410_stop_hc:\0A\00", align 1
@clk = common dso_local global i32 0, align 4
@usb_clk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @s3c2410_stop_hc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_stop_hc(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.s3c2410_hcd_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.s3c2410_hcd_info* @dev_get_platdata(i32* %5)
  store %struct.s3c2410_hcd_info* %6, %struct.s3c2410_hcd_info** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %11 = icmp ne %struct.s3c2410_hcd_info* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %14 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %16 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %18 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %17, i32 0, i32 0
  %19 = load i32 (%struct.s3c2410_hcd_info*, i32)*, i32 (%struct.s3c2410_hcd_info*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.s3c2410_hcd_info*, i32)* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %23 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %22, i32 0, i32 0
  %24 = load i32 (%struct.s3c2410_hcd_info*, i32)*, i32 (%struct.s3c2410_hcd_info*, i32)** %23, align 8
  %25 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %26 = call i32 %24(%struct.s3c2410_hcd_info* %25, i32 0)
  br label %27

27:                                               ; preds = %21, %12
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32, i32* @clk, align 4
  %30 = call i32 @clk_disable_unprepare(i32 %29)
  %31 = load i32, i32* @usb_clk, align 4
  %32 = call i32 @clk_disable_unprepare(i32 %31)
  ret void
}

declare dso_local %struct.s3c2410_hcd_info* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
