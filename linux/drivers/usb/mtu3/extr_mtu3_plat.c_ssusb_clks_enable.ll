; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_plat.c_ssusb_clks_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_plat.c_ssusb_clks_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssusb_mtk = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to enable sys_clk\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to enable ref_clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to enable mcu_clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to enable dma_clk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssusb_mtk*)* @ssusb_clks_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssusb_clks_enable(%struct.ssusb_mtk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssusb_mtk*, align 8
  %4 = alloca i32, align 4
  store %struct.ssusb_mtk* %0, %struct.ssusb_mtk** %3, align 8
  %5 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %6 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %13 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %68

16:                                               ; preds = %1
  %17 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %18 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_prepare_enable(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %25 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %63

28:                                               ; preds = %16
  %29 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %30 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_prepare_enable(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %37 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %58

40:                                               ; preds = %28
  %41 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %42 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_prepare_enable(i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %49 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %53

52:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %70

53:                                               ; preds = %47
  %54 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %55 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @clk_disable_unprepare(i32 %56)
  br label %58

58:                                               ; preds = %53, %35
  %59 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %60 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @clk_disable_unprepare(i32 %61)
  br label %63

63:                                               ; preds = %58, %23
  %64 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %65 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clk_disable_unprepare(i32 %66)
  br label %68

68:                                               ; preds = %63, %11
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %52
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
