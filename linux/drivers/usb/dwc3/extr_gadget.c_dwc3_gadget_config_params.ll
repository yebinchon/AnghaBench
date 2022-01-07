; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_config_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_config_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_dcd_config_params = type { i32, i64, i64, i8* }
%struct.dwc3 = type { i64, i64, i32, i64, i32 }

@USB_DEFAULT_BESL_UNSPECIFIED = common dso_local global i8* null, align 8
@u8 = common dso_local global i32 0, align 4
@DWC3_DEFAULT_U1_DEV_EXIT_LAT = common dso_local global i64 0, align 8
@DWC3_DEFAULT_U2_DEV_EXIT_LAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_gadget*, %struct.usb_dcd_config_params*)* @dwc3_gadget_config_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_gadget_config_params(%struct.usb_gadget* %0, %struct.usb_dcd_config_params* %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.usb_dcd_config_params*, align 8
  %5 = alloca %struct.dwc3*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store %struct.usb_dcd_config_params* %1, %struct.usb_dcd_config_params** %4, align 8
  %6 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %7 = call %struct.dwc3* @gadget_to_dwc(%struct.usb_gadget* %6)
  store %struct.dwc3* %7, %struct.dwc3** %5, align 8
  %8 = load i8*, i8** @USB_DEFAULT_BESL_UNSPECIFIED, align 8
  %9 = ptrtoint i8* %8 to i32
  %10 = load %struct.usb_dcd_config_params*, %struct.usb_dcd_config_params** %4, align 8
  %11 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** @USB_DEFAULT_BESL_UNSPECIFIED, align 8
  %13 = load %struct.usb_dcd_config_params*, %struct.usb_dcd_config_params** %4, align 8
  %14 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %16 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %2
  %20 = load %struct.usb_dcd_config_params*, %struct.usb_dcd_config_params** %4, align 8
  %21 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %23 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i32, i32* @u8, align 4
  %28 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %29 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @clamp_t(i32 %27, i32 %30, i32 2, i32 15)
  %32 = load %struct.usb_dcd_config_params*, %struct.usb_dcd_config_params** %4, align 8
  %33 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %26, %19
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %37 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.usb_dcd_config_params*, %struct.usb_dcd_config_params** %4, align 8
  %42 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  br label %47

43:                                               ; preds = %35
  %44 = load i64, i64* @DWC3_DEFAULT_U1_DEV_EXIT_LAT, align 8
  %45 = load %struct.usb_dcd_config_params*, %struct.usb_dcd_config_params** %4, align 8
  %46 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %49 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.usb_dcd_config_params*, %struct.usb_dcd_config_params** %4, align 8
  %54 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  br label %60

55:                                               ; preds = %47
  %56 = load i32, i32* @DWC3_DEFAULT_U2_DEV_EXIT_LAT, align 4
  %57 = call i64 @cpu_to_le16(i32 %56)
  %58 = load %struct.usb_dcd_config_params*, %struct.usb_dcd_config_params** %4, align 8
  %59 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %52
  ret void
}

declare dso_local %struct.dwc3* @gadget_to_dwc(%struct.usb_gadget*) #1

declare dso_local i8* @clamp_t(i32, i32, i32, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
