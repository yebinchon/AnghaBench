; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_dowmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_dowmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i32 }
%struct.hfa384x_usbctlx = type { i32, %struct.TYPE_6__, i32*, i32*, i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8* }
%struct.usbctlx_cmd_completor = type { i32 }
%struct.hfa384x_cmdresult = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"page=0x%04x offset=0x%04x len=%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HFA384x_USB_WMEMREQ = common dso_local global i32 0, align 4
@DOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfa384x*, i32, i32, i8*, i32)* @hfa384x_dowmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfa384x_dowmem(%struct.hfa384x* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.hfa384x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hfa384x_usbctlx*, align 8
  %13 = alloca %struct.usbctlx_cmd_completor, align 4
  %14 = alloca %struct.hfa384x_cmdresult, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = call %struct.hfa384x_usbctlx* (...) @usbctlx_alloc()
  store %struct.hfa384x_usbctlx* %19, %struct.hfa384x_usbctlx** %12, align 8
  %20 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %21 = icmp ne %struct.hfa384x_usbctlx* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  br label %93

25:                                               ; preds = %5
  %26 = load i32, i32* @HFA384x_USB_WMEMREQ, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %29 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  store i8* %27, i8** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = add i64 16, %33
  %35 = trunc i64 %34 to i32
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %38 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i8* %36, i8** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %44 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i8* %42, i8** %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %50 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i8* %48, i8** %52, align 8
  %53 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %54 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @memcpy(i32 %57, i8* %58, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = add i64 32, %62
  %64 = trunc i64 %63 to i32
  %65 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %66 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @DOWAIT, align 4
  %68 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %69 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %71 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  %72 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %73 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %72, i32 0, i32 3
  store i32* null, i32** %73, align 8
  %74 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %75 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %74, i32 0, i32 2
  store i32* null, i32** %75, align 8
  %76 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %77 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %78 = call i32 @hfa384x_usbctlx_submit(%struct.hfa384x* %76, %struct.hfa384x_usbctlx* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %25
  %82 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %83 = call i32 @kfree(%struct.hfa384x_usbctlx* %82)
  br label %92

84:                                               ; preds = %25
  %85 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %86 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %87 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %88 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = call i32 @init_wmem_completor(%struct.usbctlx_cmd_completor* %13, i32* %89, %struct.hfa384x_cmdresult* %14)
  %91 = call i32 @hfa384x_usbctlx_complete_sync(%struct.hfa384x* %85, %struct.hfa384x_usbctlx* %86, i32 %90)
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %84, %81
  br label %93

93:                                               ; preds = %92, %22
  %94 = load i32, i32* %11, align 4
  ret i32 %94
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local %struct.hfa384x_usbctlx* @usbctlx_alloc(...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @hfa384x_usbctlx_submit(%struct.hfa384x*, %struct.hfa384x_usbctlx*) #1

declare dso_local i32 @kfree(%struct.hfa384x_usbctlx*) #1

declare dso_local i32 @hfa384x_usbctlx_complete_sync(%struct.hfa384x*, %struct.hfa384x_usbctlx*, i32) #1

declare dso_local i32 @init_wmem_completor(%struct.usbctlx_cmd_completor*, i32*, %struct.hfa384x_cmdresult*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
