; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk.c_usb_wakeup_of_property_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk.c_usb_wakeup_of_property_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd_mtk = type { i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"mediatek,syscon-wakeup\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"uwk - reg:0x%x, version:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd_mtk*, %struct.device_node*)* @usb_wakeup_of_property_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_wakeup_of_property_parse(%struct.xhci_hcd_mtk* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xhci_hcd_mtk*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_phandle_args, align 8
  %7 = alloca i32, align 4
  store %struct.xhci_hcd_mtk* %0, %struct.xhci_hcd_mtk** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %5, align 8
  %9 = call i32 @of_property_read_bool(%struct.device_node* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %4, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %4, align 8
  %13 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call i32 @of_parse_phandle_with_fixed_args(%struct.device_node* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 0, %struct.of_phandle_args* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %4, align 8
  %30 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %4, align 8
  %36 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @syscon_node_to_regmap(i32 %38)
  %40 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %4, align 8
  %41 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @of_node_put(i32 %43)
  %45 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %4, align 8
  %46 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %4, align 8
  %49 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %4, align 8
  %52 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_info(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %4, align 8
  %56 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PTR_ERR_OR_ZERO(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %24, %22, %16
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node*, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
