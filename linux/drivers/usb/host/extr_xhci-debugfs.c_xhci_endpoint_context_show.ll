; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_endpoint_context_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_endpoint_context_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.xhci_slot_priv* }
%struct.xhci_slot_priv = type { %struct.xhci_virt_device* }
%struct.xhci_virt_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.xhci_hcd = type { i32 }
%struct.xhci_ep_ctx = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%pad: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @xhci_endpoint_context_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_endpoint_context_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca %struct.xhci_ep_ctx*, align 8
  %9 = alloca %struct.xhci_slot_priv*, align 8
  %10 = alloca %struct.xhci_virt_device*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %12, align 8
  store %struct.xhci_slot_priv* %13, %struct.xhci_slot_priv** %9, align 8
  %14 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %9, align 8
  %15 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %14, i32 0, i32 0
  %16 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %15, align 8
  store %struct.xhci_virt_device* %16, %struct.xhci_virt_device** %10, align 8
  %17 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %18 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bus_to_hcd(i32 %21)
  %23 = call %struct.xhci_hcd* @hcd_to_xhci(i32 %22)
  store %struct.xhci_hcd* %23, %struct.xhci_hcd** %7, align 8
  store i32 1, i32* %5, align 4
  br label %24

24:                                               ; preds = %66, %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %27, label %69

27:                                               ; preds = %24
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %29 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %30 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %28, %struct.TYPE_4__* %31, i32 %32)
  store %struct.xhci_ep_ctx* %33, %struct.xhci_ep_ctx** %8, align 8
  %34 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %35 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %41 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @CTX_SIZE(i32 %42)
  %44 = mul nsw i32 %39, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %38, %45
  store i64 %46, i64* %6, align 8
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le64_to_cpu(i32 %58)
  %60 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = call i32 @xhci_decode_ep_context(i32 %51, i32 %55, i32 %59, i32 %63)
  %65 = call i32 @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64* %6, i32 %64)
  br label %66

66:                                               ; preds = %27
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %24

69:                                               ; preds = %24
  ret i32 0
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(i32) #1

declare dso_local i32 @bus_to_hcd(i32) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @CTX_SIZE(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64*, i32) #1

declare dso_local i32 @xhci_decode_ep_context(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
