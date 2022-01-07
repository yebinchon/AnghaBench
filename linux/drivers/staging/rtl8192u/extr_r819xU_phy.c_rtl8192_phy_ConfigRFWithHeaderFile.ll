; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_phy_ConfigRFWithHeaderFile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_phy_ConfigRFWithHeaderFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@RadioA_ArrayLength = common dso_local global i32 0, align 4
@Rtl8192UsbRadioA_Array = common dso_local global i32* null, align 8
@bMask12Bits = common dso_local global i32 0, align 4
@RadioB_ArrayLength = common dso_local global i32 0, align 4
@Rtl8192UsbRadioB_Array = common dso_local global i32* null, align 8
@RadioC_ArrayLength = common dso_local global i32 0, align 4
@Rtl8192UsbRadioC_Array = common dso_local global i32* null, align 8
@RadioD_ArrayLength = common dso_local global i32 0, align 4
@Rtl8192UsbRadioD_Array = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %147 [
    i32 131, label %7
    i32 130, label %42
    i32 129, label %77
    i32 128, label %112
  ]

7:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %38, %7
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @RadioA_ArrayLength, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load i32*, i32** @Rtl8192UsbRadioA_Array, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 254
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 @mdelay(i32 100)
  br label %38

21:                                               ; preds = %12
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** @Rtl8192UsbRadioA_Array, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @bMask12Bits, align 4
  %30 = load i32*, i32** @Rtl8192UsbRadioA_Array, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %22, i32 %23, i32 %28, i32 %29, i32 %35)
  %37 = call i32 @mdelay(i32 1)
  br label %38

38:                                               ; preds = %21, %19
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %5, align 4
  br label %8

41:                                               ; preds = %8
  br label %148

42:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %73, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @RadioB_ArrayLength, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = load i32*, i32** @Rtl8192UsbRadioB_Array, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 254
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i32 @mdelay(i32 100)
  br label %73

56:                                               ; preds = %47
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32*, i32** @Rtl8192UsbRadioB_Array, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @bMask12Bits, align 4
  %65 = load i32*, i32** @Rtl8192UsbRadioB_Array, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %57, i32 %58, i32 %63, i32 %64, i32 %70)
  %72 = call i32 @mdelay(i32 1)
  br label %73

73:                                               ; preds = %56, %54
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %5, align 4
  br label %43

76:                                               ; preds = %43
  br label %148

77:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %108, %77
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @RadioC_ArrayLength, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %78
  %83 = load i32*, i32** @Rtl8192UsbRadioC_Array, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 254
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = call i32 @mdelay(i32 100)
  br label %108

91:                                               ; preds = %82
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load i32*, i32** @Rtl8192UsbRadioC_Array, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @bMask12Bits, align 4
  %100 = load i32*, i32** @Rtl8192UsbRadioC_Array, align 8
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %92, i32 %93, i32 %98, i32 %99, i32 %105)
  %107 = call i32 @mdelay(i32 1)
  br label %108

108:                                              ; preds = %91, %89
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %5, align 4
  br label %78

111:                                              ; preds = %78
  br label %148

112:                                              ; preds = %2
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %143, %112
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @RadioD_ArrayLength, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %146

117:                                              ; preds = %113
  %118 = load i32*, i32** @Rtl8192UsbRadioD_Array, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 254
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = call i32 @mdelay(i32 100)
  br label %143

126:                                              ; preds = %117
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load i32*, i32** @Rtl8192UsbRadioD_Array, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @bMask12Bits, align 4
  %135 = load i32*, i32** @Rtl8192UsbRadioD_Array, align 8
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %127, i32 %128, i32 %133, i32 %134, i32 %140)
  %142 = call i32 @mdelay(i32 1)
  br label %143

143:                                              ; preds = %126, %124
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 2
  store i32 %145, i32* %5, align 4
  br label %113

146:                                              ; preds = %113
  br label %148

147:                                              ; preds = %2
  br label %148

148:                                              ; preds = %147, %146, %111, %76, %41
  ret i32 0
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl8192_phy_SetRFReg(%struct.net_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
