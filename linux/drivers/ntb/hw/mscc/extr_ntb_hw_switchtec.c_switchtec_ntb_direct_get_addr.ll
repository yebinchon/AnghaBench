; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_direct_get_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_direct_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_ntb = type { i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LUT_SIZE = common dso_local global i64 0, align 8
@max_mw_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switchtec_ntb*, i32, i64*, i64*)* @switchtec_ntb_direct_get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_ntb_direct_get_addr(%struct.switchtec_ntb* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.switchtec_ntb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.switchtec_ntb* %0, %struct.switchtec_ntb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %6, align 8
  %13 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %79

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* @LUT_SIZE, align 8
  %29 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %6, align 8
  %30 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %28, %31
  store i64 %32, i64* %11, align 8
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i64*, i64** %8, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %6, align 8
  %38 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @pci_resource_start(i32 %40, i32 %41)
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %42, %43
  %45 = load i64*, i64** %8, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %36, %33
  %47 = load i64*, i64** %9, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %78

49:                                               ; preds = %46
  %50 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %6, align 8
  %51 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @pci_resource_len(i32 %53, i32 %54)
  %56 = load i64, i64* %11, align 8
  %57 = sub i64 %55, %56
  %58 = load i64*, i64** %9, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %49
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i64, i64* %11, align 8
  %68 = load i64*, i64** %9, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %61, %49
  %70 = load i64*, i64** %9, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @max_mw_size, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i64, i64* @max_mw_size, align 8
  %76 = load i64*, i64** %9, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %69
  br label %78

78:                                               ; preds = %77, %46
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %21
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
