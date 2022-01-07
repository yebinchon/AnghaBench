; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_config_rf_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_config_rf_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@RadioA_ArrayLength = common dso_local global i32 0, align 4
@Rtl819XRadioA_Array = common dso_local global i32* null, align 8
@bMask12Bits = common dso_local global i32 0, align 4
@RadioB_ArrayLength = common dso_local global i32 0, align 4
@Rtl819XRadioB_Array = common dso_local global i32* null, align 8
@RadioC_ArrayLength = common dso_local global i32 0, align 4
@Rtl819XRadioC_Array = common dso_local global i32* null, align 8
@RadioD_ArrayLength = common dso_local global i32 0, align 4
@Rtl819XRadioD_Array = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92e_config_rf_path(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %143 [
    i32 131, label %7
    i32 130, label %41
    i32 129, label %75
    i32 128, label %109
  ]

7:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %37, %7
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @RadioA_ArrayLength, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load i32*, i32** @Rtl819XRadioA_Array, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 254
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 @msleep(i32 100)
  br label %37

21:                                               ; preds = %12
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** @Rtl819XRadioA_Array, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @bMask12Bits, align 4
  %30 = load i32*, i32** @Rtl819XRadioA_Array, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rtl92e_set_rf_reg(%struct.net_device* %22, i32 %23, i32 %28, i32 %29, i32 %35)
  br label %37

37:                                               ; preds = %21, %19
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %5, align 4
  br label %8

40:                                               ; preds = %8
  br label %144

41:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %71, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @RadioB_ArrayLength, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load i32*, i32** @Rtl819XRadioB_Array, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 254
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 @msleep(i32 100)
  br label %71

55:                                               ; preds = %46
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32*, i32** @Rtl819XRadioB_Array, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @bMask12Bits, align 4
  %64 = load i32*, i32** @Rtl819XRadioB_Array, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rtl92e_set_rf_reg(%struct.net_device* %56, i32 %57, i32 %62, i32 %63, i32 %69)
  br label %71

71:                                               ; preds = %55, %53
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %5, align 4
  br label %42

74:                                               ; preds = %42
  br label %144

75:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %105, %75
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @RadioC_ArrayLength, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %108

80:                                               ; preds = %76
  %81 = load i32*, i32** @Rtl819XRadioC_Array, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 254
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = call i32 @msleep(i32 100)
  br label %105

89:                                               ; preds = %80
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load i32*, i32** @Rtl819XRadioC_Array, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @bMask12Bits, align 4
  %98 = load i32*, i32** @Rtl819XRadioC_Array, align 8
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @rtl92e_set_rf_reg(%struct.net_device* %90, i32 %91, i32 %96, i32 %97, i32 %103)
  br label %105

105:                                              ; preds = %89, %87
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 2
  store i32 %107, i32* %5, align 4
  br label %76

108:                                              ; preds = %76
  br label %144

109:                                              ; preds = %2
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %139, %109
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @RadioD_ArrayLength, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %110
  %115 = load i32*, i32** @Rtl819XRadioD_Array, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 254
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = call i32 @msleep(i32 100)
  br label %139

123:                                              ; preds = %114
  %124 = load %struct.net_device*, %struct.net_device** %3, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32*, i32** @Rtl819XRadioD_Array, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @bMask12Bits, align 4
  %132 = load i32*, i32** @Rtl819XRadioD_Array, align 8
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @rtl92e_set_rf_reg(%struct.net_device* %124, i32 %125, i32 %130, i32 %131, i32 %137)
  br label %139

139:                                              ; preds = %123, %121
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 2
  store i32 %141, i32* %5, align 4
  br label %110

142:                                              ; preds = %110
  br label %144

143:                                              ; preds = %2
  br label %144

144:                                              ; preds = %143, %142, %108, %74, %40
  ret i32 0
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl92e_set_rf_reg(%struct.net_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
