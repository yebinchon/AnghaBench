; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_InitTxPowerLimit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_InitTxPowerLimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i8******, i8****** }

@MAX_REGULATION_NUM = common dso_local global i64 0, align 8
@MAX_2_4G_BANDWITH_NUM = common dso_local global i64 0, align 8
@MAX_RATE_SECTION_NUM = common dso_local global i64 0, align 8
@CHANNEL_MAX_NUMBER_2G = common dso_local global i64 0, align 8
@MAX_RF_PATH_NUM = common dso_local global i64 0, align 8
@MAX_POWER_INDEX = common dso_local global i8* null, align 8
@MAX_5G_BANDWITH_NUM = common dso_local global i64 0, align 8
@CHANNEL_MAX_NUMBER_5G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_InitTxPowerLimit(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %9)
  store %struct.hal_com_data* %10, %struct.hal_com_data** %3, align 8
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %70, %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @MAX_REGULATION_NUM, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %73

15:                                               ; preds = %11
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %66, %15
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @MAX_2_4G_BANDWITH_NUM, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %62, %20
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @MAX_RATE_SECTION_NUM, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %21
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %58, %25
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @CHANNEL_MAX_NUMBER_2G, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %54, %30
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @MAX_RF_PATH_NUM, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load i8*, i8** @MAX_POWER_INDEX, align 8
  %37 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %38 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %37, i32 0, i32 1
  %39 = load i8******, i8******* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds i8*****, i8****** %39, i64 %40
  %42 = load i8*****, i8****** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i8****, i8***** %42, i64 %43
  %45 = load i8****, i8***** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i8***, i8**** %45, i64 %46
  %48 = load i8***, i8**** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i8**, i8*** %48, i64 %49
  %51 = load i8**, i8*** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8* %36, i8** %53, align 8
  br label %54

54:                                               ; preds = %35
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %31

57:                                               ; preds = %31
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %8, align 8
  br label %26

61:                                               ; preds = %26
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %21

65:                                               ; preds = %21
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %5, align 8
  br label %16

69:                                               ; preds = %16
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %4, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %4, align 8
  br label %11

73:                                               ; preds = %11
  store i64 0, i64* %4, align 8
  br label %74

74:                                               ; preds = %133, %73
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @MAX_REGULATION_NUM, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %136

78:                                               ; preds = %74
  store i64 0, i64* %5, align 8
  br label %79

79:                                               ; preds = %129, %78
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @MAX_5G_BANDWITH_NUM, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %132

83:                                               ; preds = %79
  store i64 0, i64* %6, align 8
  br label %84

84:                                               ; preds = %125, %83
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @MAX_RATE_SECTION_NUM, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %128

88:                                               ; preds = %84
  store i64 0, i64* %8, align 8
  br label %89

89:                                               ; preds = %121, %88
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @CHANNEL_MAX_NUMBER_5G, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %124

93:                                               ; preds = %89
  store i64 0, i64* %7, align 8
  br label %94

94:                                               ; preds = %117, %93
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* @MAX_RF_PATH_NUM, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load i8*, i8** @MAX_POWER_INDEX, align 8
  %100 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %101 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %100, i32 0, i32 0
  %102 = load i8******, i8******* %101, align 8
  %103 = load i64, i64* %4, align 8
  %104 = getelementptr inbounds i8*****, i8****** %102, i64 %103
  %105 = load i8*****, i8****** %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = getelementptr inbounds i8****, i8***** %105, i64 %106
  %108 = load i8****, i8***** %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds i8***, i8**** %108, i64 %109
  %111 = load i8***, i8**** %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = getelementptr inbounds i8**, i8*** %111, i64 %112
  %114 = load i8**, i8*** %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 %115
  store i8* %99, i8** %116, align 8
  br label %117

117:                                              ; preds = %98
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %7, align 8
  br label %94

120:                                              ; preds = %94
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %8, align 8
  br label %89

124:                                              ; preds = %89
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %6, align 8
  br label %84

128:                                              ; preds = %84
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %5, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %5, align 8
  br label %79

132:                                              ; preds = %79
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %4, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %4, align 8
  br label %74

136:                                              ; preds = %74
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
