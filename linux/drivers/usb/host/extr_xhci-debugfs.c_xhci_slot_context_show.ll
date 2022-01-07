; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_slot_context_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_slot_context_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.xhci_slot_priv* }
%struct.xhci_slot_priv = type { %struct.xhci_virt_device* }
%struct.xhci_virt_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xhci_hcd = type { i32 }
%struct.xhci_slot_ctx = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%pad: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @xhci_slot_context_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_slot_context_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_slot_ctx*, align 8
  %7 = alloca %struct.xhci_slot_priv*, align 8
  %8 = alloca %struct.xhci_virt_device*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %10, align 8
  store %struct.xhci_slot_priv* %11, %struct.xhci_slot_priv** %7, align 8
  %12 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %7, align 8
  %13 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %12, i32 0, i32 0
  %14 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %13, align 8
  store %struct.xhci_virt_device* %14, %struct.xhci_virt_device** %8, align 8
  %15 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %16 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bus_to_hcd(i32 %19)
  %21 = call %struct.xhci_hcd* @hcd_to_xhci(i32 %20)
  store %struct.xhci_hcd* %21, %struct.xhci_hcd** %5, align 8
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %23 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %24 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd* %22, %struct.TYPE_4__* %25)
  store %struct.xhci_slot_ctx* %26, %struct.xhci_slot_ctx** %6, align 8
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %29 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = call i32 @xhci_decode_slot_context(i32 %35, i32 %39, i32 %43, i32 %47)
  %49 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %31, i32 %48)
  ret i32 0
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(i32) #1

declare dso_local i32 @bus_to_hcd(i32) #1

declare dso_local %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd*, %struct.TYPE_4__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32*, i32) #1

declare dso_local i32 @xhci_decode_slot_context(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
