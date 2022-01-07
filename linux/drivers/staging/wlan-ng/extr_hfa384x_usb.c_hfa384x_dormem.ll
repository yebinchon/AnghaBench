; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_dormem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_dormem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i32 }
%struct.hfa384x_usbctlx = type { i32, %struct.TYPE_6__, i32*, i32*, i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }
%struct.usbctlx_rmem_completor = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HFA384x_USB_RMEMREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"type=0x%04x frmlen=%d offset=0x%04x page=0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"pktsize=%zd\0A\00", align 1
@DOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfa384x*, i32, i32, i8*, i32)* @hfa384x_dormem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfa384x_dormem(%struct.hfa384x* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.hfa384x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hfa384x_usbctlx*, align 8
  %13 = alloca %struct.usbctlx_rmem_completor, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = call %struct.hfa384x_usbctlx* (...) @usbctlx_alloc()
  store %struct.hfa384x_usbctlx* %14, %struct.hfa384x_usbctlx** %12, align 8
  %15 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %16 = icmp ne %struct.hfa384x_usbctlx* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  br label %102

20:                                               ; preds = %5
  %21 = load i32, i32* @HFA384x_USB_RMEMREQ, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %24 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i8* %22, i8** %26, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = add i64 16, %28
  %30 = trunc i64 %29 to i32
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %33 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i8* %31, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %39 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i8* %37, i8** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %45 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i8* %43, i8** %47, align 8
  %48 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %49 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %48, i32 0, i32 0
  store i32 32, i32* %49, align 8
  %50 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %51 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %57 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %62 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %67 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %55, i8* %60, i8* %65, i8* %70)
  %72 = call i32 @ROUNDUP64(i32 32)
  %73 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @DOWAIT, align 4
  %75 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %76 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %78 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %77, i32 0, i32 4
  store i32* null, i32** %78, align 8
  %79 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %80 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %79, i32 0, i32 3
  store i32* null, i32** %80, align 8
  %81 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %82 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %81, i32 0, i32 2
  store i32* null, i32** %82, align 8
  %83 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %84 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %85 = call i32 @hfa384x_usbctlx_submit(%struct.hfa384x* %83, %struct.hfa384x_usbctlx* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %20
  %89 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %90 = call i32 @kfree(%struct.hfa384x_usbctlx* %89)
  br label %101

91:                                               ; preds = %20
  %92 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %93 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %94 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %12, align 8
  %95 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @init_rmem_completor(%struct.usbctlx_rmem_completor* %13, i32* %96, i8* %97, i32 %98)
  %100 = call i32 @hfa384x_usbctlx_complete_sync(%struct.hfa384x* %92, %struct.hfa384x_usbctlx* %93, i32 %99)
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %91, %88
  br label %102

102:                                              ; preds = %101, %17
  %103 = load i32, i32* %11, align 4
  ret i32 %103
}

declare dso_local %struct.hfa384x_usbctlx* @usbctlx_alloc(...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ROUNDUP64(i32) #1

declare dso_local i32 @hfa384x_usbctlx_submit(%struct.hfa384x*, %struct.hfa384x_usbctlx*) #1

declare dso_local i32 @kfree(%struct.hfa384x_usbctlx*) #1

declare dso_local i32 @hfa384x_usbctlx_complete_sync(%struct.hfa384x*, %struct.hfa384x_usbctlx*, i32) #1

declare dso_local i32 @init_rmem_completor(%struct.usbctlx_rmem_completor*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
