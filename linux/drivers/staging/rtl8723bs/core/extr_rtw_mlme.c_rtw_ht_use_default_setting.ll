; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_ht_use_default_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_ht_use_default_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.registry_priv, %struct.mlme_priv }
%struct.registry_priv = type { i32, i32, i32, i32, i64 }
%struct.mlme_priv = type { %struct.ht_priv }
%struct.ht_priv = type { i32, i32, i32, i64, i64, i64 }

@BIT1 = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@HAL_DEF_RX_LDPC = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@LDPC_HT_ENABLE_RX = common dso_local global i32 0, align 4
@HAL_DEF_TX_LDPC = common dso_local global i32 0, align 4
@BIT5 = common dso_local global i32 0, align 4
@LDPC_HT_ENABLE_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[HT] Support LDPC = 0x%02X\0A\00", align 1
@HAL_DEF_TX_STBC = common dso_local global i32 0, align 4
@STBC_HT_ENABLE_TX = common dso_local global i32 0, align 4
@HAL_DEF_RX_STBC = common dso_local global i32 0, align 4
@STBC_HT_ENABLE_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"[HT] Support STBC = 0x%02X\0A\00", align 1
@HAL_DEF_EXPLICIT_BEAMFORMER = common dso_local global i32 0, align 4
@HAL_DEF_EXPLICIT_BEAMFORMEE = common dso_local global i32 0, align 4
@BEAMFORMING_HT_BEAMFORMER_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"[HT] Support Beamformer\0A\00", align 1
@BEAMFORMING_HT_BEAMFORMEE_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"[HT] Support Beamformee\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_ht_use_default_setting(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  %4 = alloca %struct.ht_priv*, align 8
  %5 = alloca %struct.registry_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.mlme_priv* %11, %struct.mlme_priv** %3, align 8
  %12 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %12, i32 0, i32 0
  store %struct.ht_priv* %13, %struct.ht_priv** %4, align 8
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  store %struct.registry_priv* %15, %struct.registry_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %17 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %22 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %28 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BIT1, align 4
  %31 = call i64 @TEST_FLAG(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %36 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %38 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BIT0, align 4
  %41 = call i64 @TEST_FLAG(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %46 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = load i32, i32* @HAL_DEF_RX_LDPC, align 4
  %49 = call i32 @rtw_hal_get_def_var(%struct.adapter* %47, i32 %48, i32* %6)
  %50 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %51 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @CLEAR_FLAGS(i64 %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %26
  %57 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %58 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BIT4, align 4
  %61 = call i64 @TEST_FLAG(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %65 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @LDPC_HT_ENABLE_RX, align 4
  %68 = call i32 @SET_FLAG(i64 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %56
  br label %70

70:                                               ; preds = %69, %26
  %71 = load %struct.adapter*, %struct.adapter** %2, align 8
  %72 = load i32, i32* @HAL_DEF_TX_LDPC, align 4
  %73 = call i32 @rtw_hal_get_def_var(%struct.adapter* %71, i32 %72, i32* %6)
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %78 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BIT5, align 4
  %81 = call i64 @TEST_FLAG(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %85 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @LDPC_HT_ENABLE_TX, align 4
  %88 = call i32 @SET_FLAG(i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %76
  br label %90

90:                                               ; preds = %89, %70
  %91 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %92 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %97 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.adapter*, %struct.adapter** %2, align 8
  %102 = load i32, i32* @HAL_DEF_TX_STBC, align 4
  %103 = call i32 @rtw_hal_get_def_var(%struct.adapter* %101, i32 %102, i32* %7)
  %104 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %105 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @CLEAR_FLAGS(i64 %106)
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %100
  %111 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %112 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @BIT5, align 4
  %115 = call i64 @TEST_FLAG(i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %119 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @STBC_HT_ENABLE_TX, align 4
  %122 = call i32 @SET_FLAG(i64 %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %110
  br label %124

124:                                              ; preds = %123, %100
  %125 = load %struct.adapter*, %struct.adapter** %2, align 8
  %126 = load i32, i32* @HAL_DEF_RX_STBC, align 4
  %127 = call i32 @rtw_hal_get_def_var(%struct.adapter* %125, i32 %126, i32* %7)
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %124
  %131 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %132 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @BIT4, align 4
  %135 = call i64 @TEST_FLAG(i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %139 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @STBC_HT_ENABLE_RX, align 4
  %142 = call i32 @SET_FLAG(i64 %140, i32 %141)
  br label %143

143:                                              ; preds = %137, %130
  br label %144

144:                                              ; preds = %143, %124
  %145 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %146 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %151 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %152)
  br label %154

154:                                              ; preds = %149, %144
  %155 = load %struct.adapter*, %struct.adapter** %2, align 8
  %156 = load i32, i32* @HAL_DEF_EXPLICIT_BEAMFORMER, align 4
  %157 = call i32 @rtw_hal_get_def_var(%struct.adapter* %155, i32 %156, i32* %8)
  %158 = load %struct.adapter*, %struct.adapter** %2, align 8
  %159 = load i32, i32* @HAL_DEF_EXPLICIT_BEAMFORMEE, align 4
  %160 = call i32 @rtw_hal_get_def_var(%struct.adapter* %158, i32 %159, i32* %9)
  %161 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %162 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @CLEAR_FLAGS(i64 %163)
  %165 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %166 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @BIT4, align 4
  %169 = call i64 @TEST_FLAG(i32 %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %154
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %176 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* @BEAMFORMING_HT_BEAMFORMER_ENABLE, align 4
  %179 = call i32 @SET_FLAG(i64 %177, i32 %178)
  %180 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %181

181:                                              ; preds = %174, %171, %154
  %182 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %183 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @BIT5, align 4
  %186 = call i64 @TEST_FLAG(i32 %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %181
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %193 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* @BEAMFORMING_HT_BEAMFORMEE_ENABLE, align 4
  %196 = call i32 @SET_FLAG(i64 %194, i32 %195)
  %197 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %198

198:                                              ; preds = %191, %188, %181
  ret void
}

declare dso_local i64 @TEST_FLAG(i32, i32) #1

declare dso_local i32 @rtw_hal_get_def_var(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @CLEAR_FLAGS(i64) #1

declare dso_local i32 @SET_FLAG(i64, i32) #1

declare dso_local i32 @DBG_871X(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
