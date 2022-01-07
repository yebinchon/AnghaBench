; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns-usb3.c_bcm_ns_usb3_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns-usb3.c_bcm_ns_usb3_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.bcm_ns_usb3 = type { i32, i64 }

@BCMA_RESET_CTL_RESET = common dso_local global i32 0, align 4
@BCMA_RESET_CTL = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @bcm_ns_usb3_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_ns_usb3_phy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.bcm_ns_usb3*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.bcm_ns_usb3* @phy_get_drvdata(%struct.phy* %5)
  store %struct.bcm_ns_usb3* %6, %struct.bcm_ns_usb3** %3, align 8
  %7 = load i32, i32* @BCMA_RESET_CTL_RESET, align 4
  %8 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %3, align 8
  %9 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BCMA_RESET_CTL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  %14 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %3, align 8
  %15 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %23 [
    i32 129, label %17
    i32 128, label %20
  ]

17:                                               ; preds = %1
  %18 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %3, align 8
  %19 = call i32 @bcm_ns_usb3_phy_init_ns_ax(%struct.bcm_ns_usb3* %18)
  store i32 %19, i32* %4, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %3, align 8
  %22 = call i32 @bcm_ns_usb3_phy_init_ns_bx(%struct.bcm_ns_usb3* %21)
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %1
  %24 = call i32 @WARN_ON(i32 1)
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %20, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.bcm_ns_usb3* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @bcm_ns_usb3_phy_init_ns_ax(%struct.bcm_ns_usb3*) #1

declare dso_local i32 @bcm_ns_usb3_phy_init_ns_bx(%struct.bcm_ns_usb3*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
