; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_update_tt_active_eps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_update_tt_active_eps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.xhci_root_port_bw_info* }
%struct.xhci_root_port_bw_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xhci_virt_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@TT_HS_OVERHEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_update_tt_active_eps(%struct.xhci_hcd* %0, %struct.xhci_virt_device* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_virt_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_root_port_bw_info*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_virt_device* %1, %struct.xhci_virt_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %9 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %69

13:                                               ; preds = %3
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 0
  %16 = load %struct.xhci_root_port_bw_info*, %struct.xhci_root_port_bw_info** %15, align 8
  %17 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %18 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.xhci_root_port_bw_info, %struct.xhci_root_port_bw_info* %16, i64 %21
  store %struct.xhci_root_port_bw_info* %22, %struct.xhci_root_port_bw_info** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %13
  %26 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %27 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.xhci_root_port_bw_info*, %struct.xhci_root_port_bw_info** %7, align 8
  %34 = getelementptr inbounds %struct.xhci_root_port_bw_info, %struct.xhci_root_port_bw_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load i64, i64* @TT_HS_OVERHEAD, align 8
  %38 = load %struct.xhci_root_port_bw_info*, %struct.xhci_root_port_bw_info** %7, align 8
  %39 = getelementptr inbounds %struct.xhci_root_port_bw_info, %struct.xhci_root_port_bw_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %37
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  br label %69

45:                                               ; preds = %25, %13
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %50 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load %struct.xhci_root_port_bw_info*, %struct.xhci_root_port_bw_info** %7, align 8
  %57 = getelementptr inbounds %struct.xhci_root_port_bw_info, %struct.xhci_root_port_bw_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i64, i64* @TT_HS_OVERHEAD, align 8
  %61 = load %struct.xhci_root_port_bw_info*, %struct.xhci_root_port_bw_info** %7, align 8
  %62 = getelementptr inbounds %struct.xhci_root_port_bw_info, %struct.xhci_root_port_bw_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %60
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  br label %68

68:                                               ; preds = %55, %48, %45
  br label %69

69:                                               ; preds = %12, %68, %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
