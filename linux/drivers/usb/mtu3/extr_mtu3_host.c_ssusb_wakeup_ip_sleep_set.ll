; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_host.c_ssusb_wakeup_ip_sleep_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_host.c_ssusb_wakeup_ip_sleep_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssusb_mtk = type { i32, i32, i32 }

@PERI_WK_CTRL1 = common dso_local global i32 0, align 4
@WC1_IS_EN = common dso_local global i32 0, align 4
@WC1_IS_P = common dso_local global i32 0, align 4
@PERI_SSUSB_SPM_CTRL = common dso_local global i32 0, align 4
@SSC_IP_SLEEP_EN = common dso_local global i32 0, align 4
@SSC_SPM_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssusb_mtk*, i32)* @ssusb_wakeup_ip_sleep_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssusb_wakeup_ip_sleep_set(%struct.ssusb_mtk* %0, i32 %1) #0 {
  %3 = alloca %struct.ssusb_mtk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ssusb_mtk* %0, %struct.ssusb_mtk** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %9 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %47 [
    i32 129, label %11
    i32 128, label %31
  ]

11:                                               ; preds = %2
  %12 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %13 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PERI_WK_CTRL1, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @WC1_IS_EN, align 4
  %18 = call i32 @WC1_IS_C(i32 15)
  %19 = or i32 %17, %18
  %20 = load i32, i32* @WC1_IS_P, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %11
  %25 = load i32, i32* @WC1_IS_EN, align 4
  %26 = call i32 @WC1_IS_C(i32 8)
  %27 = or i32 %25, %26
  br label %29

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  store i32 %30, i32* %7, align 4
  br label %48

31:                                               ; preds = %2
  %32 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %33 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PERI_SSUSB_SPM_CTRL, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @SSC_IP_SLEEP_EN, align 4
  %38 = load i32, i32* @SSC_SPM_INT_EN, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  br label %45

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  store i32 %46, i32* %7, align 4
  br label %48

47:                                               ; preds = %2
  br label %56

48:                                               ; preds = %45, %29
  %49 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %50 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %48, %47
  ret void
}

declare dso_local i32 @WC1_IS_C(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
