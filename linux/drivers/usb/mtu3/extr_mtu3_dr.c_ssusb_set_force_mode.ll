; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_dr.c_ssusb_set_force_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_dr.c_ssusb_set_force_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssusb_mtk = type { i32 }

@SSUSB_U2_PORT_FORCE_IDDIG = common dso_local global i32 0, align 4
@SSUSB_U2_PORT_RG_IDDIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssusb_set_force_mode(%struct.ssusb_mtk* %0, i32 %1) #0 {
  %3 = alloca %struct.ssusb_mtk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ssusb_mtk* %0, %struct.ssusb_mtk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %7 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @SSUSB_U2_CTRL(i32 0)
  %10 = call i32 @mtu3_readl(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %33 [
    i32 130, label %12
    i32 129, label %18
    i32 128, label %26
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @SSUSB_U2_PORT_FORCE_IDDIG, align 4
  %14 = load i32, i32* @SSUSB_U2_PORT_RG_IDDIG, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load i32, i32* @SSUSB_U2_PORT_FORCE_IDDIG, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @SSUSB_U2_PORT_RG_IDDIG, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load i32, i32* @SSUSB_U2_PORT_FORCE_IDDIG, align 4
  %28 = load i32, i32* @SSUSB_U2_PORT_RG_IDDIG, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %34

33:                                               ; preds = %2
  br label %41

34:                                               ; preds = %26, %18, %12
  %35 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %36 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SSUSB_U2_CTRL(i32 0)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @mtu3_writel(i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @mtu3_readl(i32, i32) #1

declare dso_local i32 @SSUSB_U2_CTRL(i32) #1

declare dso_local i32 @mtu3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
