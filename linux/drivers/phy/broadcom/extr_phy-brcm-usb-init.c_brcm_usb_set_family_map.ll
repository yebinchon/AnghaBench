; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb-init.c_brcm_usb_set_family_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb-init.c_brcm_usb_set_family_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_usb_init_params = type { i32, i32, i32* }

@usb_reg_bits_map_table = common dso_local global i32** null, align 8
@family_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcm_usb_set_family_map(%struct.brcm_usb_init_params* %0) #0 {
  %2 = alloca %struct.brcm_usb_init_params*, align 8
  %3 = alloca i32, align 4
  store %struct.brcm_usb_init_params* %0, %struct.brcm_usb_init_params** %2, align 8
  %4 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %2, align 8
  %5 = call i32 @brcmusb_get_family_type(%struct.brcm_usb_init_params* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %2, align 8
  %8 = getelementptr inbounds %struct.brcm_usb_init_params, %struct.brcm_usb_init_params* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i32**, i32*** @usb_reg_bits_map_table, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32*, i32** %9, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %2, align 8
  %16 = getelementptr inbounds %struct.brcm_usb_init_params, %struct.brcm_usb_init_params* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load i32*, i32** @family_names, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %2, align 8
  %23 = getelementptr inbounds %struct.brcm_usb_init_params, %struct.brcm_usb_init_params* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  ret void
}

declare dso_local i32 @brcmusb_get_family_type(%struct.brcm_usb_init_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
