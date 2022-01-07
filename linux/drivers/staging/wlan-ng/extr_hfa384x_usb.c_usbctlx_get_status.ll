; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_usbctlx_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_usbctlx_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x_usb_statusresp = type { i32, i32, i32, i32 }
%struct.hfa384x_cmdresult = type { i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [64 x i8] c"cmdresult:status=0x%04x resp0=0x%04x resp1=0x%04x resp2=0x%04x\0A\00", align 1
@HFA384x_STATUS_RESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfa384x_usb_statusresp*, %struct.hfa384x_cmdresult*)* @usbctlx_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbctlx_get_status(%struct.hfa384x_usb_statusresp* %0, %struct.hfa384x_cmdresult* %1) #0 {
  %3 = alloca %struct.hfa384x_usb_statusresp*, align 8
  %4 = alloca %struct.hfa384x_cmdresult*, align 8
  store %struct.hfa384x_usb_statusresp* %0, %struct.hfa384x_usb_statusresp** %3, align 8
  store %struct.hfa384x_cmdresult* %1, %struct.hfa384x_cmdresult** %4, align 8
  %5 = load %struct.hfa384x_usb_statusresp*, %struct.hfa384x_usb_statusresp** %3, align 8
  %6 = getelementptr inbounds %struct.hfa384x_usb_statusresp, %struct.hfa384x_usb_statusresp* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @le16_to_cpu(i32 %7)
  %9 = ptrtoint i8* %8 to i32
  %10 = load %struct.hfa384x_cmdresult*, %struct.hfa384x_cmdresult** %4, align 8
  %11 = getelementptr inbounds %struct.hfa384x_cmdresult, %struct.hfa384x_cmdresult* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.hfa384x_usb_statusresp*, %struct.hfa384x_usb_statusresp** %3, align 8
  %13 = getelementptr inbounds %struct.hfa384x_usb_statusresp, %struct.hfa384x_usb_statusresp* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @le16_to_cpu(i32 %14)
  %16 = load %struct.hfa384x_cmdresult*, %struct.hfa384x_cmdresult** %4, align 8
  %17 = getelementptr inbounds %struct.hfa384x_cmdresult, %struct.hfa384x_cmdresult* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.hfa384x_usb_statusresp*, %struct.hfa384x_usb_statusresp** %3, align 8
  %19 = getelementptr inbounds %struct.hfa384x_usb_statusresp, %struct.hfa384x_usb_statusresp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @le16_to_cpu(i32 %20)
  %22 = load %struct.hfa384x_cmdresult*, %struct.hfa384x_cmdresult** %4, align 8
  %23 = getelementptr inbounds %struct.hfa384x_cmdresult, %struct.hfa384x_cmdresult* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.hfa384x_usb_statusresp*, %struct.hfa384x_usb_statusresp** %3, align 8
  %25 = getelementptr inbounds %struct.hfa384x_usb_statusresp, %struct.hfa384x_usb_statusresp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @le16_to_cpu(i32 %26)
  %28 = load %struct.hfa384x_cmdresult*, %struct.hfa384x_cmdresult** %4, align 8
  %29 = getelementptr inbounds %struct.hfa384x_cmdresult, %struct.hfa384x_cmdresult* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.hfa384x_cmdresult*, %struct.hfa384x_cmdresult** %4, align 8
  %31 = getelementptr inbounds %struct.hfa384x_cmdresult, %struct.hfa384x_cmdresult* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hfa384x_cmdresult*, %struct.hfa384x_cmdresult** %4, align 8
  %34 = getelementptr inbounds %struct.hfa384x_cmdresult, %struct.hfa384x_cmdresult* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.hfa384x_cmdresult*, %struct.hfa384x_cmdresult** %4, align 8
  %37 = getelementptr inbounds %struct.hfa384x_cmdresult, %struct.hfa384x_cmdresult* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.hfa384x_cmdresult*, %struct.hfa384x_cmdresult** %4, align 8
  %40 = getelementptr inbounds %struct.hfa384x_cmdresult, %struct.hfa384x_cmdresult* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %35, i8* %38, i8* %41)
  %43 = load %struct.hfa384x_cmdresult*, %struct.hfa384x_cmdresult** %4, align 8
  %44 = getelementptr inbounds %struct.hfa384x_cmdresult, %struct.hfa384x_cmdresult* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @HFA384x_STATUS_RESULT, align 4
  %47 = and i32 %45, %46
  ret i32 %47
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
