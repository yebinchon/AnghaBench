; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_plat.c_ssusb_rscs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_plat.c_ssusb_rscs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssusb_mtk = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to enable vusb33\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to init phy\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to power on phy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssusb_mtk*)* @ssusb_rscs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssusb_rscs_init(%struct.ssusb_mtk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssusb_mtk*, align 8
  %4 = alloca i32, align 4
  store %struct.ssusb_mtk* %0, %struct.ssusb_mtk** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %6 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @regulator_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %13 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %18 = call i32 @ssusb_clks_enable(%struct.ssusb_mtk* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %49

22:                                               ; preds = %16
  %23 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %24 = call i32 @ssusb_phy_init(%struct.ssusb_mtk* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %29 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %46

32:                                               ; preds = %22
  %33 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %34 = call i32 @ssusb_phy_power_on(%struct.ssusb_mtk* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %39 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %43

42:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %56

43:                                               ; preds = %37
  %44 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %45 = call i32 @ssusb_phy_exit(%struct.ssusb_mtk* %44)
  br label %46

46:                                               ; preds = %43, %27
  %47 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %48 = call i32 @ssusb_clks_disable(%struct.ssusb_mtk* %47)
  br label %49

49:                                               ; preds = %46, %21
  %50 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %51 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @regulator_disable(i32 %52)
  br label %54

54:                                               ; preds = %49, %11
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %42
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ssusb_clks_enable(%struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_phy_init(%struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_phy_power_on(%struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_phy_exit(%struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_clks_disable(%struct.ssusb_mtk*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
