; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_Hal_ChannelPlanToRegulation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_Hal_ChannelPlanToRegulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i8*, i8* }

@TXPWR_LMT_WW = common dso_local global i8* null, align 8
@TXPWR_LMT_ETSI = common dso_local global i8* null, align 8
@TXPWR_LMT_FCC = common dso_local global i8* null, align 8
@TXPWR_LMT_MKK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hal_ChannelPlanToRegulation(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hal_com_data*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %6)
  store %struct.hal_com_data* %7, %struct.hal_com_data** %5, align 8
  %8 = load i8*, i8** @TXPWR_LMT_WW, align 8
  %9 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %10 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @TXPWR_LMT_WW, align 8
  %12 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %13 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %273 [
    i32 128, label %15
    i32 165, label %19
    i32 153, label %23
    i32 148, label %27
    i32 164, label %31
    i32 163, label %35
    i32 146, label %42
    i32 151, label %49
    i32 129, label %56
    i32 134, label %63
    i32 133, label %70
    i32 132, label %77
    i32 131, label %84
    i32 130, label %91
    i32 160, label %98
    i32 141, label %105
    i32 140, label %112
    i32 150, label %119
    i32 149, label %126
    i32 157, label %133
    i32 156, label %140
    i32 152, label %147
    i32 166, label %154
    i32 161, label %161
    i32 155, label %168
    i32 139, label %175
    i32 159, label %182
    i32 138, label %189
    i32 137, label %196
    i32 136, label %203
    i32 135, label %210
    i32 145, label %217
    i32 144, label %224
    i32 154, label %231
    i32 143, label %238
    i32 158, label %245
    i32 142, label %252
    i32 162, label %259
    i32 147, label %266
  ]

15:                                               ; preds = %2
  %16 = load i8*, i8** @TXPWR_LMT_WW, align 8
  %17 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %18 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  br label %274

19:                                               ; preds = %2
  %20 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %21 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %22 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  br label %274

23:                                               ; preds = %2
  %24 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %25 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %26 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  br label %274

27:                                               ; preds = %2
  %28 = load i8*, i8** @TXPWR_LMT_MKK, align 8
  %29 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %30 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  br label %274

31:                                               ; preds = %2
  %32 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %33 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %34 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %274

35:                                               ; preds = %2
  %36 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %37 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %38 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %40 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %41 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %274

42:                                               ; preds = %2
  %43 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %44 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %45 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %47 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %48 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %274

49:                                               ; preds = %2
  %50 = load i8*, i8** @TXPWR_LMT_MKK, align 8
  %51 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %52 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @TXPWR_LMT_MKK, align 8
  %54 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %55 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %274

56:                                               ; preds = %2
  %57 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %58 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %59 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @TXPWR_LMT_MKK, align 8
  %61 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %62 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %274

63:                                               ; preds = %2
  %64 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %65 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %66 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %68 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %69 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %274

70:                                               ; preds = %2
  %71 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %72 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %73 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %75 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %76 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %274

77:                                               ; preds = %2
  %78 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %79 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %80 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %82 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %83 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %274

84:                                               ; preds = %2
  %85 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %86 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %87 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %89 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %90 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  br label %274

91:                                               ; preds = %2
  %92 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %93 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %94 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %96 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %97 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %274

98:                                               ; preds = %2
  %99 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %100 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %101 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %103 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %104 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %274

105:                                              ; preds = %2
  %106 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %107 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %108 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %110 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %111 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %274

112:                                              ; preds = %2
  %113 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %114 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %115 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %117 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %118 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %274

119:                                              ; preds = %2
  %120 = load i8*, i8** @TXPWR_LMT_MKK, align 8
  %121 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %122 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %124 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %125 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %274

126:                                              ; preds = %2
  %127 = load i8*, i8** @TXPWR_LMT_MKK, align 8
  %128 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %129 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %131 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %132 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  br label %274

133:                                              ; preds = %2
  %134 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %135 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %136 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %138 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %139 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  br label %274

140:                                              ; preds = %2
  %141 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %142 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %143 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %145 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %146 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  br label %274

147:                                              ; preds = %2
  %148 = load i8*, i8** @TXPWR_LMT_WW, align 8
  %149 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %150 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = load i8*, i8** @TXPWR_LMT_WW, align 8
  %152 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %153 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  br label %274

154:                                              ; preds = %2
  %155 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %156 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %157 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %159 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %160 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  br label %274

161:                                              ; preds = %2
  %162 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %163 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %164 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %166 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %167 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  br label %274

168:                                              ; preds = %2
  %169 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %170 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %171 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  %172 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %173 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %174 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  br label %274

175:                                              ; preds = %2
  %176 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %177 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %178 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %180 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %181 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  br label %274

182:                                              ; preds = %2
  %183 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %184 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %185 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %187 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %188 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  br label %274

189:                                              ; preds = %2
  %190 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %191 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %192 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %191, i32 0, i32 1
  store i8* %190, i8** %192, align 8
  %193 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %194 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %195 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %194, i32 0, i32 0
  store i8* %193, i8** %195, align 8
  br label %274

196:                                              ; preds = %2
  %197 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %198 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %199 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  %200 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %201 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %202 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  br label %274

203:                                              ; preds = %2
  %204 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %205 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %206 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %205, i32 0, i32 1
  store i8* %204, i8** %206, align 8
  %207 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %208 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %209 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %208, i32 0, i32 0
  store i8* %207, i8** %209, align 8
  br label %274

210:                                              ; preds = %2
  %211 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %212 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %213 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %212, i32 0, i32 1
  store i8* %211, i8** %213, align 8
  %214 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %215 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %216 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %215, i32 0, i32 0
  store i8* %214, i8** %216, align 8
  br label %274

217:                                              ; preds = %2
  %218 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %219 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %220 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %219, i32 0, i32 1
  store i8* %218, i8** %220, align 8
  %221 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %222 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %223 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %222, i32 0, i32 0
  store i8* %221, i8** %223, align 8
  br label %274

224:                                              ; preds = %2
  %225 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %226 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %227 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %229 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %230 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %229, i32 0, i32 0
  store i8* %228, i8** %230, align 8
  br label %274

231:                                              ; preds = %2
  %232 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %233 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %234 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %233, i32 0, i32 1
  store i8* %232, i8** %234, align 8
  %235 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %236 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %237 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %236, i32 0, i32 0
  store i8* %235, i8** %237, align 8
  br label %274

238:                                              ; preds = %2
  %239 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %240 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %241 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %240, i32 0, i32 1
  store i8* %239, i8** %241, align 8
  %242 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %243 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %244 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %243, i32 0, i32 0
  store i8* %242, i8** %244, align 8
  br label %274

245:                                              ; preds = %2
  %246 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %247 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %248 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %247, i32 0, i32 1
  store i8* %246, i8** %248, align 8
  %249 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %250 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %251 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %250, i32 0, i32 0
  store i8* %249, i8** %251, align 8
  br label %274

252:                                              ; preds = %2
  %253 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %254 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %255 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %254, i32 0, i32 1
  store i8* %253, i8** %255, align 8
  %256 = load i8*, i8** @TXPWR_LMT_ETSI, align 8
  %257 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %258 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %257, i32 0, i32 0
  store i8* %256, i8** %258, align 8
  br label %274

259:                                              ; preds = %2
  %260 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %261 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %262 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %261, i32 0, i32 1
  store i8* %260, i8** %262, align 8
  %263 = load i8*, i8** @TXPWR_LMT_FCC, align 8
  %264 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %265 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %264, i32 0, i32 0
  store i8* %263, i8** %265, align 8
  br label %274

266:                                              ; preds = %2
  %267 = load i8*, i8** @TXPWR_LMT_WW, align 8
  %268 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %269 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %268, i32 0, i32 1
  store i8* %267, i8** %269, align 8
  %270 = load i8*, i8** @TXPWR_LMT_WW, align 8
  %271 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %272 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %271, i32 0, i32 0
  store i8* %270, i8** %272, align 8
  br label %274

273:                                              ; preds = %2
  br label %274

274:                                              ; preds = %273, %266, %259, %252, %245, %238, %231, %224, %217, %210, %203, %196, %189, %182, %175, %168, %161, %154, %147, %140, %133, %126, %119, %112, %105, %98, %91, %84, %77, %70, %63, %56, %49, %42, %35, %31, %27, %23, %19, %15
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
