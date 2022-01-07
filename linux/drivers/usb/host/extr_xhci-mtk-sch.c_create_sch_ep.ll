; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_create_sch_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_create_sch_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mu3h_sch_ep_info = type { %struct.usb_host_endpoint*, %struct.mu3h_sch_tt* }
%struct.mu3h_sch_tt = type { i32 }
%struct.usb_device = type { i64 }
%struct.usb_host_endpoint = type { i32 }
%struct.xhci_ep_ctx = type { i32 }

@TT_MICROFRAMES_MAX = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mu3h_sch_ep_info* (%struct.usb_device*, %struct.usb_host_endpoint*, %struct.xhci_ep_ctx*)* @create_sch_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mu3h_sch_ep_info* @create_sch_ep(%struct.usb_device* %0, %struct.usb_host_endpoint* %1, %struct.xhci_ep_ctx* %2) #0 {
  %4 = alloca %struct.mu3h_sch_ep_info*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_host_endpoint*, align 8
  %7 = alloca %struct.xhci_ep_ctx*, align 8
  %8 = alloca %struct.mu3h_sch_ep_info*, align 8
  %9 = alloca %struct.mu3h_sch_tt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %6, align 8
  store %struct.xhci_ep_ctx* %2, %struct.xhci_ep_ctx** %7, align 8
  store %struct.mu3h_sch_tt* null, %struct.mu3h_sch_tt** %9, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @is_fs_or_ls(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @TT_MICROFRAMES_MAX, align 4
  store i32 %18, i32* %10, align 4
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USB_SPEED_SUPER, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %27 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %26, i32 0, i32 0
  %28 = call i64 @usb_endpoint_xfer_isoc(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %7, align 8
  %32 = call i32 @get_esit(%struct.xhci_ep_ctx* %31)
  store i32 %32, i32* %10, align 4
  br label %34

33:                                               ; preds = %25, %19
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %33, %30
  br label %35

35:                                               ; preds = %34, %17
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = add i64 16, %38
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.mu3h_sch_ep_info* @kzalloc(i64 %40, i32 %41)
  store %struct.mu3h_sch_ep_info* %42, %struct.mu3h_sch_ep_info** %8, align 8
  %43 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %8, align 8
  %44 = icmp ne %struct.mu3h_sch_ep_info* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.mu3h_sch_ep_info* @ERR_PTR(i32 %47)
  store %struct.mu3h_sch_ep_info* %48, %struct.mu3h_sch_ep_info** %4, align 8
  br label %76

49:                                               ; preds = %35
  %50 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %51 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @is_fs_or_ls(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %57 = call %struct.mu3h_sch_tt* @find_tt(%struct.usb_device* %56)
  store %struct.mu3h_sch_tt* %57, %struct.mu3h_sch_tt** %9, align 8
  %58 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %9, align 8
  %59 = call i64 @IS_ERR(%struct.mu3h_sch_tt* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %8, align 8
  %63 = call i32 @kfree(%struct.mu3h_sch_ep_info* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.mu3h_sch_ep_info* @ERR_PTR(i32 %65)
  store %struct.mu3h_sch_ep_info* %66, %struct.mu3h_sch_ep_info** %4, align 8
  br label %76

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %49
  %69 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %9, align 8
  %70 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %8, align 8
  %71 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %70, i32 0, i32 1
  store %struct.mu3h_sch_tt* %69, %struct.mu3h_sch_tt** %71, align 8
  %72 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %73 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %8, align 8
  %74 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %73, i32 0, i32 0
  store %struct.usb_host_endpoint* %72, %struct.usb_host_endpoint** %74, align 8
  %75 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %8, align 8
  store %struct.mu3h_sch_ep_info* %75, %struct.mu3h_sch_ep_info** %4, align 8
  br label %76

76:                                               ; preds = %68, %61, %45
  %77 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %4, align 8
  ret %struct.mu3h_sch_ep_info* %77
}

declare dso_local i64 @is_fs_or_ls(i64) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(i32*) #1

declare dso_local i32 @get_esit(%struct.xhci_ep_ctx*) #1

declare dso_local %struct.mu3h_sch_ep_info* @kzalloc(i64, i32) #1

declare dso_local %struct.mu3h_sch_ep_info* @ERR_PTR(i32) #1

declare dso_local %struct.mu3h_sch_tt* @find_tt(%struct.usb_device*) #1

declare dso_local i64 @IS_ERR(%struct.mu3h_sch_tt*) #1

declare dso_local i32 @kfree(%struct.mu3h_sch_ep_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
