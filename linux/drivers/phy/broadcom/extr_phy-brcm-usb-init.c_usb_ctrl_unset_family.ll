; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb-init.c_usb_ctrl_unset_family.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb-init.c_usb_ctrl_unset_family.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_usb_init_params = type { i64*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcm_usb_init_params*, i64, i64)* @usb_ctrl_unset_family to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_ctrl_unset_family(%struct.brcm_usb_init_params* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.brcm_usb_init_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.brcm_usb_init_params* %0, %struct.brcm_usb_init_params** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %4, align 8
  %10 = getelementptr inbounds %struct.brcm_usb_init_params, %struct.brcm_usb_init_params* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %4, align 8
  %16 = getelementptr inbounds %struct.brcm_usb_init_params, %struct.brcm_usb_init_params* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr i8, i8* %17, i64 %18
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @brcmusb_readl(i8* %20)
  %22 = load i64, i64* %7, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @brcmusb_writel(i64 %24, i8* %25)
  ret void
}

declare dso_local i32 @brcmusb_writel(i64, i8*) #1

declare dso_local i64 @brcmusb_readl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
