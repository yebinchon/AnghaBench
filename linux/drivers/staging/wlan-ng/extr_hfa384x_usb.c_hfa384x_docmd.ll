; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_docmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_docmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i32 }
%struct.hfa384x_metacmd = type { i32, i32, i32, i32, i32 }
%struct.hfa384x_usbctlx = type { i32, %struct.TYPE_6__, i32*, i32*, i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.usbctlx_cmd_completor = type { i32 }
%struct.usbctlx_completor = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HFA384x_USB_CMDREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"cmdreq: cmd=0x%04x parm0=0x%04x parm1=0x%04x parm2=0x%04x\0A\00", align 1
@DOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfa384x*, %struct.hfa384x_metacmd*)* @hfa384x_docmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfa384x_docmd(%struct.hfa384x* %0, %struct.hfa384x_metacmd* %1) #0 {
  %3 = alloca %struct.hfa384x*, align 8
  %4 = alloca %struct.hfa384x_metacmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfa384x_usbctlx*, align 8
  %7 = alloca %struct.usbctlx_cmd_completor, align 4
  %8 = alloca %struct.usbctlx_completor*, align 8
  store %struct.hfa384x* %0, %struct.hfa384x** %3, align 8
  store %struct.hfa384x_metacmd* %1, %struct.hfa384x_metacmd** %4, align 8
  %9 = call %struct.hfa384x_usbctlx* (...) @usbctlx_alloc()
  store %struct.hfa384x_usbctlx* %9, %struct.hfa384x_usbctlx** %6, align 8
  %10 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %11 = icmp ne %struct.hfa384x_usbctlx* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %98

15:                                               ; preds = %2
  %16 = load i32, i32* @HFA384x_USB_CMDREQ, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %19 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store i8* %17, i8** %21, align 8
  %22 = load %struct.hfa384x_metacmd*, %struct.hfa384x_metacmd** %4, align 8
  %23 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %27 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  store i8* %25, i8** %29, align 8
  %30 = load %struct.hfa384x_metacmd*, %struct.hfa384x_metacmd** %4, align 8
  %31 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %35 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i8* %33, i8** %37, align 8
  %38 = load %struct.hfa384x_metacmd*, %struct.hfa384x_metacmd** %4, align 8
  %39 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %43 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i8* %41, i8** %45, align 8
  %46 = load %struct.hfa384x_metacmd*, %struct.hfa384x_metacmd** %4, align 8
  %47 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %51 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i8* %49, i8** %53, align 8
  %54 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %55 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %54, i32 0, i32 0
  store i32 40, i32* %55, align 8
  %56 = load %struct.hfa384x_metacmd*, %struct.hfa384x_metacmd** %4, align 8
  %57 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hfa384x_metacmd*, %struct.hfa384x_metacmd** %4, align 8
  %60 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hfa384x_metacmd*, %struct.hfa384x_metacmd** %4, align 8
  %63 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hfa384x_metacmd*, %struct.hfa384x_metacmd** %4, align 8
  %66 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61, i32 %64, i32 %67)
  %69 = load i32, i32* @DOWAIT, align 4
  %70 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %71 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %73 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %72, i32 0, i32 4
  store i32* null, i32** %73, align 8
  %74 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %75 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %74, i32 0, i32 3
  store i32* null, i32** %75, align 8
  %76 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %77 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %79 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %80 = call i32 @hfa384x_usbctlx_submit(%struct.hfa384x* %78, %struct.hfa384x_usbctlx* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %15
  %84 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %85 = call i32 @kfree(%struct.hfa384x_usbctlx* %84)
  br label %97

86:                                               ; preds = %15
  %87 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %88 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.hfa384x_metacmd*, %struct.hfa384x_metacmd** %4, align 8
  %91 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %90, i32 0, i32 0
  %92 = call %struct.usbctlx_completor* @init_cmd_completor(%struct.usbctlx_cmd_completor* %7, i32* %89, i32* %91)
  store %struct.usbctlx_completor* %92, %struct.usbctlx_completor** %8, align 8
  %93 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %94 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %6, align 8
  %95 = load %struct.usbctlx_completor*, %struct.usbctlx_completor** %8, align 8
  %96 = call i32 @hfa384x_usbctlx_complete_sync(%struct.hfa384x* %93, %struct.hfa384x_usbctlx* %94, %struct.usbctlx_completor* %95)
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %86, %83
  br label %98

98:                                               ; preds = %97, %12
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.hfa384x_usbctlx* @usbctlx_alloc(...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hfa384x_usbctlx_submit(%struct.hfa384x*, %struct.hfa384x_usbctlx*) #1

declare dso_local i32 @kfree(%struct.hfa384x_usbctlx*) #1

declare dso_local %struct.usbctlx_completor* @init_cmd_completor(%struct.usbctlx_cmd_completor*, i32*, i32*) #1

declare dso_local i32 @hfa384x_usbctlx_complete_sync(%struct.hfa384x*, %struct.hfa384x_usbctlx*, %struct.usbctlx_completor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
