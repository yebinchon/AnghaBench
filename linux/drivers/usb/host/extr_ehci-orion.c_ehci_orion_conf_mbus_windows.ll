; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-orion.c_ehci_orion_conf_mbus_windows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-orion.c_ehci_orion_conf_mbus_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.mbus_dram_target_info = type { i32, i32, %struct.mbus_dram_window* }
%struct.mbus_dram_window = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.mbus_dram_target_info*)* @ehci_orion_conf_mbus_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_orion_conf_mbus_windows(%struct.usb_hcd* %0, %struct.mbus_dram_target_info* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.mbus_dram_target_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbus_dram_window*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.mbus_dram_target_info* %1, %struct.mbus_dram_target_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %17, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @USB_WINDOW_CTRL(i32 %11)
  %13 = call i32 @wrl(i32 %12, i32 0)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @USB_WINDOW_BASE(i32 %14)
  %16 = call i32 @wrl(i32 %15, i32 0)
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %7

20:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %59, %20
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %4, align 8
  %24 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %21
  %28 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %4, align 8
  %29 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %28, i32 0, i32 2
  %30 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %30, i64 %32
  store %struct.mbus_dram_window* %33, %struct.mbus_dram_window** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @USB_WINDOW_CTRL(i32 %34)
  %36 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %6, align 8
  %37 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %39, -65536
  %41 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %6, align 8
  %42 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %40, %44
  %46 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %4, align 8
  %47 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 4
  %50 = or i32 %45, %49
  %51 = or i32 %50, 1
  %52 = call i32 @wrl(i32 %35, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @USB_WINDOW_BASE(i32 %53)
  %55 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %6, align 8
  %56 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @wrl(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %27
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %21

62:                                               ; preds = %21
  ret void
}

declare dso_local i32 @wrl(i32, i32) #1

declare dso_local i32 @USB_WINDOW_CTRL(i32) #1

declare dso_local i32 @USB_WINDOW_BASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
