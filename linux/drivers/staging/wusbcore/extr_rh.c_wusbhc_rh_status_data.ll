; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_rh.c_wusbhc_rh_status_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_rh.c_wusbhc_rh_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.wusbhc = type { i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_rh_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wusbhc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %11 = call %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd* %10)
  store %struct.wusbhc* %11, %struct.wusbhc** %5, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %13 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i64 @DIV_ROUND_UP(i32 %15, i32 8)
  store i64 %16, i64* %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @memset(i8* %17, i32 0, i64 %18)
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %53, %2
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %23 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %21, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %20
  %28 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc* %28, i64 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = srem i32 %38, 8
  %40 = shl i32 1, %39
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sdiv i32 %42, 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = or i32 %47, %40
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %34, %27
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %20

56:                                               ; preds = %20
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  br label %62

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i64 [ %60, %59 ], [ 0, %61 ]
  %64 = trunc i64 %63 to i32
  ret i32 %64
}

declare dso_local %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
