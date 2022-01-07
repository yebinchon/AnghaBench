; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_SCMapping_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_SCMapping_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pkt_attrib = type { i64 }
%struct.hal_com_data = type { i64, i64, i64 }

@CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@VHT_DATA_SC_DONOT_CARE = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_40 = common dso_local global i64 0, align 8
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i64 0, align 8
@VHT_DATA_SC_40_LOWER_OF_80MHZ = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_UPPER = common dso_local global i64 0, align 8
@VHT_DATA_SC_40_UPPER_OF_80MHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SCMapping: Not Correct Primary40MHz Setting\0A\00", align 1
@VHT_DATA_SC_20_LOWEST_OF_80MHZ = common dso_local global i32 0, align 4
@VHT_DATA_SC_20_LOWER_OF_80MHZ = common dso_local global i32 0, align 4
@VHT_DATA_SC_20_UPPER_OF_80MHZ = common dso_local global i32 0, align 4
@VHT_DATA_SC_20_UPPERST_OF_80MHZ = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SCMapping_8723B(%struct.adapter* %0, %struct.pkt_attrib* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.pkt_attrib*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hal_com_data*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.pkt_attrib* %1, %struct.pkt_attrib** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %7)
  store %struct.hal_com_data* %8, %struct.hal_com_data** %6, align 8
  %9 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %10 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHANNEL_WIDTH_80, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %112

14:                                               ; preds = %2
  %15 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %16 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHANNEL_WIDTH_80, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @VHT_DATA_SC_DONOT_CARE, align 4
  store i32 %21, i32* %5, align 4
  br label %111

22:                                               ; preds = %14
  %23 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %24 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %30 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @VHT_DATA_SC_40_LOWER_OF_80MHZ, align 4
  store i32 %35, i32* %5, align 4
  br label %47

36:                                               ; preds = %28
  %37 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %38 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @VHT_DATA_SC_40_UPPER_OF_80MHZ, align 4
  store i32 %43, i32* %5, align 4
  br label %46

44:                                               ; preds = %36
  %45 = call i32 @DBG_871X(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42
  br label %47

47:                                               ; preds = %46, %34
  br label %110

48:                                               ; preds = %22
  %49 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %50 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %56 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @VHT_DATA_SC_20_LOWEST_OF_80MHZ, align 4
  store i32 %61, i32* %5, align 4
  br label %109

62:                                               ; preds = %54, %48
  %63 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %64 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %70 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @VHT_DATA_SC_20_LOWER_OF_80MHZ, align 4
  store i32 %75, i32* %5, align 4
  br label %108

76:                                               ; preds = %68, %62
  %77 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %78 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %84 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @VHT_DATA_SC_20_UPPER_OF_80MHZ, align 4
  store i32 %89, i32* %5, align 4
  br label %107

90:                                               ; preds = %82, %76
  %91 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %92 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %98 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @VHT_DATA_SC_20_UPPERST_OF_80MHZ, align 4
  store i32 %103, i32* %5, align 4
  br label %106

104:                                              ; preds = %96, %90
  %105 = call i32 @DBG_871X(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %102
  br label %107

107:                                              ; preds = %106, %88
  br label %108

108:                                              ; preds = %107, %74
  br label %109

109:                                              ; preds = %108, %60
  br label %110

110:                                              ; preds = %109, %47
  br label %111

111:                                              ; preds = %110, %20
  br label %157

112:                                              ; preds = %2
  %113 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %114 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %154

118:                                              ; preds = %112
  %119 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %120 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @VHT_DATA_SC_DONOT_CARE, align 4
  store i32 %125, i32* %5, align 4
  br label %153

126:                                              ; preds = %118
  %127 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %128 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @CHANNEL_WIDTH_20, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %126
  %133 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %134 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* @VHT_DATA_SC_20_UPPER_OF_80MHZ, align 4
  store i32 %139, i32* %5, align 4
  br label %151

140:                                              ; preds = %132
  %141 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %142 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* @VHT_DATA_SC_20_LOWER_OF_80MHZ, align 4
  store i32 %147, i32* %5, align 4
  br label %150

148:                                              ; preds = %140
  %149 = load i32, i32* @VHT_DATA_SC_DONOT_CARE, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %148, %146
  br label %151

151:                                              ; preds = %150, %138
  br label %152

152:                                              ; preds = %151, %126
  br label %153

153:                                              ; preds = %152, %124
  br label %156

154:                                              ; preds = %112
  %155 = load i32, i32* @VHT_DATA_SC_DONOT_CARE, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %154, %153
  br label %157

157:                                              ; preds = %156, %111
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
