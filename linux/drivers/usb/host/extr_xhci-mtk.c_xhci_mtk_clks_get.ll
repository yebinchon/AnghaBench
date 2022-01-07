; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk.c_xhci_mtk_clks_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk.c_xhci_mtk_clks_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd_mtk = type { i8*, i8*, i8*, i8*, i8*, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"sys_ck\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"fail to get sys_ck\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"xhci_ck\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ref_ck\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"mcu_ck\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"dma_ck\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd_mtk*)* @xhci_mtk_clks_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_mtk_clks_get(%struct.xhci_hcd_mtk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_hcd_mtk*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.xhci_hcd_mtk* %0, %struct.xhci_hcd_mtk** %3, align 8
  %5 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %6 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %5, i32 0, i32 5
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i8* @devm_clk_get(%struct.device* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %10, i32 0, i32 4
  store i8* %9, i8** %11, align 8
  %12 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %13 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %12, i32 0, i32 4
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @IS_ERR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %21 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @PTR_ERR(i8* %22)
  store i32 %23, i32* %2, align 4
  br label %78

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i8* @devm_clk_get_optional(%struct.device* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %28 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %30 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %36 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PTR_ERR(i8* %37)
  store i32 %38, i32* %2, align 4
  br label %78

39:                                               ; preds = %24
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i8* @devm_clk_get_optional(%struct.device* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %43 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %45 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %51 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %2, align 4
  br label %78

54:                                               ; preds = %39
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i8* @devm_clk_get_optional(%struct.device* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %58 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %60 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %66 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  store i32 %68, i32* %2, align 4
  br label %78

69:                                               ; preds = %54
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i8* @devm_clk_get_optional(%struct.device* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %72 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %73 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %75 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PTR_ERR_OR_ZERO(i8* %76)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %69, %64, %49, %34, %17
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
