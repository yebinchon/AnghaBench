; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-meson.c_meson_pcie_get_resets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-meson.c_meson_pcie_get_resets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pcie = type { %struct.meson_pcie_rc_reset }
%struct.meson_pcie_rc_reset = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@PCIE_SHARED_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@PCIE_NORMAL_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pcie*)* @meson_pcie_get_resets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pcie_get_resets(%struct.meson_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_pcie*, align 8
  %4 = alloca %struct.meson_pcie_rc_reset*, align 8
  store %struct.meson_pcie* %0, %struct.meson_pcie** %3, align 8
  %5 = load %struct.meson_pcie*, %struct.meson_pcie** %3, align 8
  %6 = getelementptr inbounds %struct.meson_pcie, %struct.meson_pcie* %5, i32 0, i32 0
  store %struct.meson_pcie_rc_reset* %6, %struct.meson_pcie_rc_reset** %4, align 8
  %7 = load %struct.meson_pcie*, %struct.meson_pcie** %3, align 8
  %8 = load i32, i32* @PCIE_SHARED_RESET, align 4
  %9 = call i8* @meson_pcie_get_reset(%struct.meson_pcie* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.meson_pcie_rc_reset*, %struct.meson_pcie_rc_reset** %4, align 8
  %11 = getelementptr inbounds %struct.meson_pcie_rc_reset, %struct.meson_pcie_rc_reset* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load %struct.meson_pcie_rc_reset*, %struct.meson_pcie_rc_reset** %4, align 8
  %13 = getelementptr inbounds %struct.meson_pcie_rc_reset, %struct.meson_pcie_rc_reset* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @IS_ERR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.meson_pcie_rc_reset*, %struct.meson_pcie_rc_reset** %4, align 8
  %19 = getelementptr inbounds %struct.meson_pcie_rc_reset, %struct.meson_pcie_rc_reset* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @PTR_ERR(i8* %20)
  store i32 %21, i32* %2, align 4
  br label %67

22:                                               ; preds = %1
  %23 = load %struct.meson_pcie_rc_reset*, %struct.meson_pcie_rc_reset** %4, align 8
  %24 = getelementptr inbounds %struct.meson_pcie_rc_reset, %struct.meson_pcie_rc_reset* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @reset_control_deassert(i8* %25)
  %27 = load %struct.meson_pcie*, %struct.meson_pcie** %3, align 8
  %28 = load i32, i32* @PCIE_NORMAL_RESET, align 4
  %29 = call i8* @meson_pcie_get_reset(%struct.meson_pcie* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.meson_pcie_rc_reset*, %struct.meson_pcie_rc_reset** %4, align 8
  %31 = getelementptr inbounds %struct.meson_pcie_rc_reset, %struct.meson_pcie_rc_reset* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.meson_pcie_rc_reset*, %struct.meson_pcie_rc_reset** %4, align 8
  %33 = getelementptr inbounds %struct.meson_pcie_rc_reset, %struct.meson_pcie_rc_reset* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load %struct.meson_pcie_rc_reset*, %struct.meson_pcie_rc_reset** %4, align 8
  %39 = getelementptr inbounds %struct.meson_pcie_rc_reset, %struct.meson_pcie_rc_reset* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %2, align 4
  br label %67

42:                                               ; preds = %22
  %43 = load %struct.meson_pcie_rc_reset*, %struct.meson_pcie_rc_reset** %4, align 8
  %44 = getelementptr inbounds %struct.meson_pcie_rc_reset, %struct.meson_pcie_rc_reset* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @reset_control_deassert(i8* %45)
  %47 = load %struct.meson_pcie*, %struct.meson_pcie** %3, align 8
  %48 = load i32, i32* @PCIE_SHARED_RESET, align 4
  %49 = call i8* @meson_pcie_get_reset(%struct.meson_pcie* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load %struct.meson_pcie_rc_reset*, %struct.meson_pcie_rc_reset** %4, align 8
  %51 = getelementptr inbounds %struct.meson_pcie_rc_reset, %struct.meson_pcie_rc_reset* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.meson_pcie_rc_reset*, %struct.meson_pcie_rc_reset** %4, align 8
  %53 = getelementptr inbounds %struct.meson_pcie_rc_reset, %struct.meson_pcie_rc_reset* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @IS_ERR(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %42
  %58 = load %struct.meson_pcie_rc_reset*, %struct.meson_pcie_rc_reset** %4, align 8
  %59 = getelementptr inbounds %struct.meson_pcie_rc_reset, %struct.meson_pcie_rc_reset* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @PTR_ERR(i8* %60)
  store i32 %61, i32* %2, align 4
  br label %67

62:                                               ; preds = %42
  %63 = load %struct.meson_pcie_rc_reset*, %struct.meson_pcie_rc_reset** %4, align 8
  %64 = getelementptr inbounds %struct.meson_pcie_rc_reset, %struct.meson_pcie_rc_reset* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @reset_control_deassert(i8* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %57, %37, %17
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i8* @meson_pcie_get_reset(%struct.meson_pcie*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @reset_control_deassert(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
