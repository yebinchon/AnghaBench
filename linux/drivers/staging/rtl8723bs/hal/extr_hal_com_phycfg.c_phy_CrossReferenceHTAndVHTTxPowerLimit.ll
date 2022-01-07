; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_CrossReferenceHTAndVHTTxPowerLimit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_CrossReferenceHTAndVHTTxPowerLimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i64***** }

@MAX_REGULATION_NUM = common dso_local global i64 0, align 8
@MAX_5G_BANDWITH_NUM = common dso_local global i64 0, align 8
@CHANNEL_MAX_NUMBER_5G = common dso_local global i64 0, align 8
@MAX_RATE_SECTION_NUM = common dso_local global i64 0, align 8
@ODM_RF_PATH_A = common dso_local global i64 0, align 8
@MAX_POWER_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @phy_CrossReferenceHTAndVHTTxPowerLimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_CrossReferenceHTAndVHTTxPowerLimit(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %11)
  store %struct.hal_com_data* %12, %struct.hal_com_data** %3, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %156, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @MAX_REGULATION_NUM, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %159

17:                                               ; preds = %13
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %152, %17
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @MAX_5G_BANDWITH_NUM, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %155

22:                                               ; preds = %18
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %148, %22
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @CHANNEL_MAX_NUMBER_5G, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %151

27:                                               ; preds = %23
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %144, %27
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @MAX_RATE_SECTION_NUM, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %147

32:                                               ; preds = %28
  %33 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %34 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %33, i32 0, i32 0
  %35 = load i64*****, i64****** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds i64****, i64***** %35, i64 %36
  %38 = load i64****, i64***** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i64***, i64**** %38, i64 %39
  %41 = load i64***, i64**** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i64**, i64*** %41, i64 %42
  %44 = load i64**, i64*** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i64*, i64** %44, i64 %45
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @ODM_RF_PATH_A, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @MAX_POWER_INDEX, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %143

54:                                               ; preds = %32
  store i64 2, i64* %9, align 8
  store i64 6, i64* %10, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %5, align 8
  %59 = icmp eq i64 %58, 1
  br i1 %59, label %60, label %142

60:                                               ; preds = %57, %54
  %61 = load i64, i64* %7, align 8
  %62 = icmp uge i64 %61, 2
  br i1 %62, label %63, label %141

63:                                               ; preds = %60
  %64 = load i64, i64* %7, align 8
  %65 = icmp ule i64 %64, 9
  br i1 %65, label %66, label %141

66:                                               ; preds = %63
  %67 = load i64, i64* %7, align 8
  %68 = icmp eq i64 %67, 2
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i64 2, i64* %9, align 8
  store i64 6, i64* %10, align 8
  br label %105

70:                                               ; preds = %66
  %71 = load i64, i64* %7, align 8
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i64 3, i64* %9, align 8
  store i64 7, i64* %10, align 8
  br label %104

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = icmp eq i64 %75, 4
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i64 4, i64* %9, align 8
  store i64 8, i64* %10, align 8
  br label %103

78:                                               ; preds = %74
  %79 = load i64, i64* %7, align 8
  %80 = icmp eq i64 %79, 5
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i64 5, i64* %9, align 8
  store i64 9, i64* %10, align 8
  br label %102

82:                                               ; preds = %78
  %83 = load i64, i64* %7, align 8
  %84 = icmp eq i64 %83, 6
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i64 6, i64* %9, align 8
  store i64 2, i64* %10, align 8
  br label %101

86:                                               ; preds = %82
  %87 = load i64, i64* %7, align 8
  %88 = icmp eq i64 %87, 7
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i64 7, i64* %9, align 8
  store i64 3, i64* %10, align 8
  br label %100

90:                                               ; preds = %86
  %91 = load i64, i64* %7, align 8
  %92 = icmp eq i64 %91, 8
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i64 8, i64* %9, align 8
  store i64 4, i64* %10, align 8
  br label %99

94:                                               ; preds = %90
  %95 = load i64, i64* %7, align 8
  %96 = icmp eq i64 %95, 9
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i64 9, i64* %9, align 8
  store i64 5, i64* %10, align 8
  br label %98

98:                                               ; preds = %97, %94
  br label %99

99:                                               ; preds = %98, %93
  br label %100

100:                                              ; preds = %99, %89
  br label %101

101:                                              ; preds = %100, %85
  br label %102

102:                                              ; preds = %101, %81
  br label %103

103:                                              ; preds = %102, %77
  br label %104

104:                                              ; preds = %103, %73
  br label %105

105:                                              ; preds = %104, %69
  %106 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %107 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %106, i32 0, i32 0
  %108 = load i64*****, i64****** %107, align 8
  %109 = load i64, i64* %4, align 8
  %110 = getelementptr inbounds i64****, i64***** %108, i64 %109
  %111 = load i64****, i64***** %110, align 8
  %112 = load i64, i64* %5, align 8
  %113 = getelementptr inbounds i64***, i64**** %111, i64 %112
  %114 = load i64***, i64**** %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = getelementptr inbounds i64**, i64*** %114, i64 %115
  %117 = load i64**, i64*** %116, align 8
  %118 = load i64, i64* %6, align 8
  %119 = getelementptr inbounds i64*, i64** %117, i64 %118
  %120 = load i64*, i64** %119, align 8
  %121 = load i64, i64* @ODM_RF_PATH_A, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %125 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %124, i32 0, i32 0
  %126 = load i64*****, i64****** %125, align 8
  %127 = load i64, i64* %4, align 8
  %128 = getelementptr inbounds i64****, i64***** %126, i64 %127
  %129 = load i64****, i64***** %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds i64***, i64**** %129, i64 %130
  %132 = load i64***, i64**** %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds i64**, i64*** %132, i64 %133
  %135 = load i64**, i64*** %134, align 8
  %136 = load i64, i64* %6, align 8
  %137 = getelementptr inbounds i64*, i64** %135, i64 %136
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* @ODM_RF_PATH_A, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  store i64 %123, i64* %140, align 8
  br label %141

141:                                              ; preds = %105, %63, %60
  br label %142

142:                                              ; preds = %141, %57
  br label %143

143:                                              ; preds = %142, %32
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %7, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %7, align 8
  br label %28

147:                                              ; preds = %28
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %6, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %6, align 8
  br label %23

151:                                              ; preds = %23
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* %5, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %5, align 8
  br label %18

155:                                              ; preds = %18
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %4, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %4, align 8
  br label %13

159:                                              ; preds = %13
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
