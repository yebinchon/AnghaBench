; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_phyConfigBB.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_phyConfigBB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@BASEBAND_CONFIG_PHY_REG = common dso_local global i32 0, align 4
@PHY_REG_1T2RArrayLength = common dso_local global i32 0, align 4
@Rtl8192UsbPHY_REG_1T2RArray = common dso_local global i32* null, align 8
@bMaskDWord = common dso_local global i32 0, align 4
@COMP_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"i: %x, Rtl819xUsbPHY_REGArray[0]=%x Rtl819xUsbPHY_REGArray[1]=%x\0A\00", align 1
@BASEBAND_CONFIG_AGC_TAB = common dso_local global i32 0, align 4
@AGCTAB_ArrayLength = common dso_local global i32 0, align 4
@Rtl8192UsbAGCTAB_Array = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"i: %x, Rtl8192UsbAGCTAB_Array[0]=%x Rtl8192UsbAGCTAB_Array[1]=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @rtl8192_phyConfigBB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_phyConfigBB(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @BASEBAND_CONFIG_PHY_REG, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %47

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %43, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PHY_REG_1T2RArrayLength, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load i32*, i32** @Rtl8192UsbPHY_REG_1T2RArray, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @bMaskDWord, align 4
  %22 = load i32*, i32** @Rtl8192UsbPHY_REG_1T2RArray, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rtl8192_setBBreg(%struct.net_device* %15, i32 %20, i32 %21, i32 %27)
  %29 = load i32, i32* @COMP_DBG, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** @Rtl8192UsbPHY_REG_1T2RArray, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @Rtl8192UsbPHY_REG_1T2RArray, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @RT_TRACE(i32 %29, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %35, i32 %41)
  br label %43

43:                                               ; preds = %14
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %5, align 4
  br label %10

46:                                               ; preds = %10
  br label %90

47:                                               ; preds = %2
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @BASEBAND_CONFIG_AGC_TAB, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %89

51:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %85, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @AGCTAB_ArrayLength, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %52
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = load i32*, i32** @Rtl8192UsbAGCTAB_Array, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @bMaskDWord, align 4
  %64 = load i32*, i32** @Rtl8192UsbAGCTAB_Array, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rtl8192_setBBreg(%struct.net_device* %57, i32 %62, i32 %63, i32 %69)
  %71 = load i32, i32* @COMP_DBG, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32*, i32** @Rtl8192UsbAGCTAB_Array, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** @Rtl8192UsbAGCTAB_Array, align 8
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @RT_TRACE(i32 %71, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %77, i32 %83)
  br label %85

85:                                               ; preds = %56
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 2
  store i32 %87, i32* %5, align 4
  br label %52

88:                                               ; preds = %52
  br label %89

89:                                               ; preds = %88, %47
  br label %90

90:                                               ; preds = %89, %46
  ret void
}

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
