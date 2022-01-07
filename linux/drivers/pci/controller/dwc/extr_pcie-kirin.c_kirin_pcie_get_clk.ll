; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_get_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_get_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kirin_pcie = type { i8*, i8*, i8*, i8*, i8* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"pcie_phy_ref\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pcie_aux\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pcie_apb_phy\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"pcie_apb_sys\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"pcie_aclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kirin_pcie*, %struct.platform_device*)* @kirin_pcie_get_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kirin_pcie_get_clk(%struct.kirin_pcie* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kirin_pcie*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.kirin_pcie* %0, %struct.kirin_pcie** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = call i8* @devm_clk_get(%struct.device* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %12 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %11, i32 0, i32 4
  store i8* %10, i8** %12, align 8
  %13 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %14 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %13, i32 0, i32 4
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %20 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %19, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @PTR_ERR(i8* %21)
  store i64 %22, i64* %3, align 8
  br label %84

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i8* @devm_clk_get(%struct.device* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %27 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %29 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %35 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @PTR_ERR(i8* %36)
  store i64 %37, i64* %3, align 8
  br label %84

38:                                               ; preds = %23
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i8* @devm_clk_get(%struct.device* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %42 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %44 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %50 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @PTR_ERR(i8* %51)
  store i64 %52, i64* %3, align 8
  br label %84

53:                                               ; preds = %38
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = call i8* @devm_clk_get(%struct.device* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %57 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %59 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %65 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @PTR_ERR(i8* %66)
  store i64 %67, i64* %3, align 8
  br label %84

68:                                               ; preds = %53
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = call i8* @devm_clk_get(%struct.device* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %72 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %74 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %80 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @PTR_ERR(i8* %81)
  store i64 %82, i64* %3, align 8
  br label %84

83:                                               ; preds = %68
  store i64 0, i64* %3, align 8
  br label %84

84:                                               ; preds = %83, %78, %63, %48, %33, %18
  %85 = load i64, i64* %3, align 8
  ret i64 %85
}

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
