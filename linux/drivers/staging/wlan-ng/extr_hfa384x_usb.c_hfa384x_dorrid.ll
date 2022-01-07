; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_dorrid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_dorrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i32 }
%struct.hfa384x_usbctlx = type { i32, i32, %struct.TYPE_6__, i8*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.usbctlx_rrid_completor = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HFA384x_USB_RRIDREQ = common dso_local global i32 0, align 4
@DOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfa384x*, i32, i32, i8*, i32, i32, i32, i8*)* @hfa384x_dorrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfa384x_dorrid(%struct.hfa384x* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.hfa384x*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.hfa384x_usbctlx*, align 8
  %19 = alloca %struct.usbctlx_rrid_completor, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %20 = call %struct.hfa384x_usbctlx* (...) @usbctlx_alloc()
  store %struct.hfa384x_usbctlx* %20, %struct.hfa384x_usbctlx** %18, align 8
  %21 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %18, align 8
  %22 = icmp ne %struct.hfa384x_usbctlx* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %8
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %17, align 4
  br label %82

26:                                               ; preds = %8
  %27 = load i32, i32* @HFA384x_USB_RRIDREQ, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %18, align 8
  %30 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i8* %28, i8** %32, align 8
  %33 = call i8* @cpu_to_le16(i32 8)
  %34 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %18, align 8
  %35 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* %33, i8** %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %18, align 8
  %41 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  %44 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %18, align 8
  %45 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %44, i32 0, i32 0
  store i32 24, i32* %45, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %18, align 8
  %48 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %18, align 8
  %51 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %18, align 8
  %54 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %18, align 8
  %57 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.hfa384x*, %struct.hfa384x** %9, align 8
  %59 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %18, align 8
  %60 = call i32 @hfa384x_usbctlx_submit(%struct.hfa384x* %58, %struct.hfa384x_usbctlx* %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %26
  %64 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %18, align 8
  %65 = call i32 @kfree(%struct.hfa384x_usbctlx* %64)
  br label %81

66:                                               ; preds = %26
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @DOWAIT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load %struct.hfa384x*, %struct.hfa384x** %9, align 8
  %72 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %18, align 8
  %73 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %18, align 8
  %74 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @init_rrid_completor(%struct.usbctlx_rrid_completor* %19, i32* %75, i8* %76, i32 %77)
  %79 = call i32 @hfa384x_usbctlx_complete_sync(%struct.hfa384x* %71, %struct.hfa384x_usbctlx* %72, i32 %78)
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %70, %66
  br label %81

81:                                               ; preds = %80, %63
  br label %82

82:                                               ; preds = %81, %23
  %83 = load i32, i32* %17, align 4
  ret i32 %83
}

declare dso_local %struct.hfa384x_usbctlx* @usbctlx_alloc(...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hfa384x_usbctlx_submit(%struct.hfa384x*, %struct.hfa384x_usbctlx*) #1

declare dso_local i32 @kfree(%struct.hfa384x_usbctlx*) #1

declare dso_local i32 @hfa384x_usbctlx_complete_sync(%struct.hfa384x*, %struct.hfa384x_usbctlx*, i32) #1

declare dso_local i32 @init_rrid_completor(%struct.usbctlx_rrid_completor*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
