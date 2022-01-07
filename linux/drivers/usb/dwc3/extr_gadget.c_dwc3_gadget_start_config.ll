; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_start_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_start_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { %struct.dwc3*, i64 }
%struct.dwc3 = type { %struct.dwc3_ep** }
%struct.dwc3_gadget_ep_cmd_params = type { i32 }

@DWC3_DEPCMD_DEPSTARTCFG = common dso_local global i32 0, align 4
@DWC3_ENDPOINTS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*)* @dwc3_gadget_start_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_gadget_start_config(%struct.dwc3_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %5 = alloca %struct.dwc3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dwc3_ep*, align 8
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %3, align 8
  %10 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %11 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = call i32 @memset(%struct.dwc3_gadget_ep_cmd_params* %4, i32 0, i32 4)
  %17 = load i32, i32* @DWC3_DEPCMD_DEPSTARTCFG, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %19 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %18, i32 0, i32 0
  %20 = load %struct.dwc3*, %struct.dwc3** %19, align 8
  store %struct.dwc3* %20, %struct.dwc3** %5, align 8
  %21 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep* %21, i32 %22, %struct.dwc3_gadget_ep_cmd_params* %4)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %56

28:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @DWC3_ENDPOINTS_NUM, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %35 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %34, i32 0, i32 0
  %36 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %36, i64 %38
  %40 = load %struct.dwc3_ep*, %struct.dwc3_ep** %39, align 8
  store %struct.dwc3_ep* %40, %struct.dwc3_ep** %9, align 8
  %41 = load %struct.dwc3_ep*, %struct.dwc3_ep** %9, align 8
  %42 = icmp ne %struct.dwc3_ep* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %52

44:                                               ; preds = %33
  %45 = load %struct.dwc3_ep*, %struct.dwc3_ep** %9, align 8
  %46 = call i32 @dwc3_gadget_set_xfer_resource(%struct.dwc3_ep* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %2, align 4
  br label %56

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %29

55:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %49, %26, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.dwc3_gadget_ep_cmd_params*, i32, i32) #1

declare dso_local i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep*, i32, %struct.dwc3_gadget_ep_cmd_params*) #1

declare dso_local i32 @dwc3_gadget_set_xfer_resource(%struct.dwc3_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
