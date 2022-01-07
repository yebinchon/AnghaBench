; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_get_ext_psy_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_get_ext_psy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.power_supply = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32, i32*, i64, i32 }
%struct.abx500_chargalg = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__, i32, i32, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%union.power_supply_propval = type { i32 }

@AC_CHG = common dso_local global i32 0, align 4
@USB_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @abx500_chargalg_get_ext_psy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_chargalg_get_ext_psy_data(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.power_supply*, align 8
  %7 = alloca %struct.power_supply*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.abx500_chargalg*, align 8
  %10 = alloca %union.power_supply_propval, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %14)
  store %struct.power_supply* %15, %struct.power_supply** %7, align 8
  %16 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %17 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8**
  store i8** %19, i8*** %8, align 8
  store i32 0, i32* %12, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.power_supply*
  store %struct.power_supply* %21, %struct.power_supply** %6, align 8
  %22 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %23 = call %struct.abx500_chargalg* @power_supply_get_drvdata(%struct.power_supply* %22)
  store %struct.abx500_chargalg* %23, %struct.abx500_chargalg** %9, align 8
  %24 = load i8**, i8*** %8, align 8
  %25 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %26 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %29 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @match_string(i8** %24, i32 %27, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %683

37:                                               ; preds = %2
  %38 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %39 = call i64 @power_supply_get_property(%struct.power_supply* %38, i32 140, %union.power_supply_propval* %10)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = bitcast %union.power_supply_propval* %10 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %45 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  store i32 1, i32* %12, align 4
  br label %47

47:                                               ; preds = %41, %37
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %679, %47
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %51 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %682

56:                                               ; preds = %48
  %57 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %58 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %13, align 4
  %66 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %67 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %66, i32 0, i32 6
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %82, label %70

70:                                               ; preds = %56
  %71 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %72 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 129
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %79 = call i8* @psy_to_ux500_charger(%struct.power_supply* %78)
  %80 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %81 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  br label %100

82:                                               ; preds = %70, %56
  %83 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %84 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %83, i32 0, i32 5
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %99, label %87

87:                                               ; preds = %82
  %88 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %89 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 128
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %96 = call i8* @psy_to_ux500_charger(%struct.power_supply* %95)
  %97 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %98 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %94, %87, %82
  br label %100

100:                                              ; preds = %99, %77
  %101 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i64 @power_supply_get_property(%struct.power_supply* %101, i32 %102, %union.power_supply_propval* %10)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %679

106:                                              ; preds = %100
  %107 = load i32, i32* %13, align 4
  switch i32 %107, label %677 [
    i32 135, label %108
    i32 136, label %239
    i32 137, label %370
    i32 131, label %519
    i32 132, label %548
    i32 134, label %582
    i32 133, label %603
    i32 138, label %610
    i32 139, label %639
    i32 140, label %667
  ]

108:                                              ; preds = %106
  %109 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %110 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  switch i64 %113, label %237 [
    i64 130, label %114
    i64 129, label %127
    i64 128, label %182
  ]

114:                                              ; preds = %108
  %115 = bitcast %union.power_supply_propval* %10 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %120 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i32 0, i32* %121, align 4
  br label %126

122:                                              ; preds = %114
  %123 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %124 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %118
  br label %238

127:                                              ; preds = %108
  %128 = bitcast %union.power_supply_propval* %10 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %154, label %131

131:                                              ; preds = %127
  %132 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %133 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @AC_CHG, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %131
  %140 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %141 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %145 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* @AC_CHG, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %150 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, %148
  store i32 %153, i32* %151, align 8
  br label %181

154:                                              ; preds = %131, %127
  %155 = bitcast %union.power_supply_propval* %10 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %154
  %159 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %160 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @AC_CHG, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %180, label %166

166:                                              ; preds = %158
  %167 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %168 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %172 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 4
  %174 = load i32, i32* @AC_CHG, align 4
  %175 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %176 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %174
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %166, %158, %154
  br label %181

181:                                              ; preds = %180, %139
  br label %238

182:                                              ; preds = %108
  %183 = bitcast %union.power_supply_propval* %10 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %209, label %186

186:                                              ; preds = %182
  %187 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %188 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @USB_CHG, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %209

194:                                              ; preds = %186
  %195 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %196 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %200 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  store i32 %198, i32* %201, align 4
  %202 = load i32, i32* @USB_CHG, align 4
  %203 = xor i32 %202, -1
  %204 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %205 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, %203
  store i32 %208, i32* %206, align 8
  br label %236

209:                                              ; preds = %186, %182
  %210 = bitcast %union.power_supply_propval* %10 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %235

213:                                              ; preds = %209
  %214 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %215 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @USB_CHG, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %235, label %221

221:                                              ; preds = %213
  %222 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %223 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %227 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  store i32 %225, i32* %228, align 4
  %229 = load i32, i32* @USB_CHG, align 4
  %230 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %231 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %229
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %221, %213, %209
  br label %236

236:                                              ; preds = %235, %194
  br label %238

237:                                              ; preds = %108
  br label %238

238:                                              ; preds = %237, %236, %181, %126
  br label %678

239:                                              ; preds = %106
  %240 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %241 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %240, i32 0, i32 0
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  switch i64 %244, label %368 [
    i64 130, label %245
    i64 129, label %246
    i64 128, label %307
  ]

245:                                              ; preds = %239
  br label %369

246:                                              ; preds = %239
  %247 = bitcast %union.power_supply_propval* %10 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %273, label %250

250:                                              ; preds = %246
  %251 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %252 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @AC_CHG, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %273

258:                                              ; preds = %250
  %259 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %260 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %264 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 3
  store i32 %262, i32* %265, align 4
  %266 = load i32, i32* @AC_CHG, align 4
  %267 = xor i32 %266, -1
  %268 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %269 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = and i32 %271, %267
  store i32 %272, i32* %270, align 8
  br label %306

273:                                              ; preds = %250, %246
  %274 = bitcast %union.power_supply_propval* %10 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %305

277:                                              ; preds = %273
  %278 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %279 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @AC_CHG, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %305, label %285

285:                                              ; preds = %277
  %286 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %287 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %291 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 3
  store i32 %289, i32* %292, align 4
  %293 = load i32, i32* @AC_CHG, align 4
  %294 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %295 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = or i32 %297, %293
  store i32 %298, i32* %296, align 8
  %299 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %300 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %303 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %302, i32 0, i32 3
  %304 = call i32 @queue_delayed_work(i32 %301, i32* %303, i32 0)
  br label %305

305:                                              ; preds = %285, %277, %273
  br label %306

306:                                              ; preds = %305, %258
  br label %369

307:                                              ; preds = %239
  %308 = bitcast %union.power_supply_propval* %10 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %334, label %311

311:                                              ; preds = %307
  %312 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %313 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @USB_CHG, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %334

319:                                              ; preds = %311
  %320 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %321 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %325 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 3
  store i32 %323, i32* %326, align 4
  %327 = load i32, i32* @USB_CHG, align 4
  %328 = xor i32 %327, -1
  %329 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %330 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = and i32 %332, %328
  store i32 %333, i32* %331, align 8
  br label %367

334:                                              ; preds = %311, %307
  %335 = bitcast %union.power_supply_propval* %10 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %366

338:                                              ; preds = %334
  %339 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %340 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @USB_CHG, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %366, label %346

346:                                              ; preds = %338
  %347 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %348 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %352 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 3
  store i32 %350, i32* %353, align 4
  %354 = load i32, i32* @USB_CHG, align 4
  %355 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %356 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = or i32 %358, %354
  store i32 %359, i32* %357, align 8
  %360 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %361 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %364 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %363, i32 0, i32 3
  %365 = call i32 @queue_delayed_work(i32 %362, i32* %364, i32 0)
  br label %366

366:                                              ; preds = %346, %338, %334
  br label %367

367:                                              ; preds = %366, %319
  br label %369

368:                                              ; preds = %239
  br label %369

369:                                              ; preds = %368, %367, %306, %245
  br label %678

370:                                              ; preds = %106
  %371 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %372 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %371, i32 0, i32 0
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  switch i64 %375, label %517 [
    i64 130, label %376
    i64 129, label %377
    i64 128, label %447
  ]

376:                                              ; preds = %370
  br label %518

377:                                              ; preds = %370
  %378 = bitcast %union.power_supply_propval* %10 to i32*
  %379 = load i32, i32* %378, align 4
  switch i32 %379, label %445 [
    i32 141, label %380
    i32 145, label %393
    i32 146, label %406
    i32 143, label %406
    i32 142, label %419
    i32 144, label %432
  ]

380:                                              ; preds = %377
  %381 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %382 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 1
  store i32 1, i32* %383, align 4
  %384 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %385 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 2
  store i32 0, i32* %386, align 4
  %387 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %388 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 3
  store i32 0, i32* %389, align 4
  %390 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %391 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 4
  store i32 0, i32* %392, align 4
  br label %446

393:                                              ; preds = %377
  %394 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %395 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 4
  store i32 1, i32* %396, align 4
  %397 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %398 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 1
  store i32 0, i32* %399, align 4
  %400 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %401 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %401, i32 0, i32 3
  store i32 0, i32* %402, align 4
  %403 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %404 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 2
  store i32 0, i32* %405, align 4
  br label %446

406:                                              ; preds = %377, %377
  %407 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %408 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %408, i32 0, i32 2
  store i32 1, i32* %409, align 4
  %410 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %411 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 1
  store i32 0, i32* %412, align 4
  %413 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %414 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 3
  store i32 0, i32* %415, align 4
  %416 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %417 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %417, i32 0, i32 4
  store i32 0, i32* %418, align 4
  br label %446

419:                                              ; preds = %377
  %420 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %421 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %421, i32 0, i32 3
  store i32 1, i32* %422, align 4
  %423 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %424 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %424, i32 0, i32 1
  store i32 0, i32* %425, align 4
  %426 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %427 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i32 0, i32 2
  store i32 0, i32* %428, align 4
  %429 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %430 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 4
  store i32 0, i32* %431, align 4
  br label %446

432:                                              ; preds = %377
  %433 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %434 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i32 0, i32 2
  store i32 0, i32* %435, align 4
  %436 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %437 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i32 0, i32 1
  store i32 0, i32* %438, align 4
  %439 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %440 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %440, i32 0, i32 3
  store i32 0, i32* %441, align 4
  %442 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %443 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 4
  store i32 0, i32* %444, align 4
  br label %446

445:                                              ; preds = %377
  br label %446

446:                                              ; preds = %445, %432, %419, %406, %393, %380
  br label %518

447:                                              ; preds = %370
  %448 = bitcast %union.power_supply_propval* %10 to i32*
  %449 = load i32, i32* %448, align 4
  switch i32 %449, label %515 [
    i32 141, label %450
    i32 145, label %463
    i32 146, label %476
    i32 143, label %476
    i32 142, label %489
    i32 144, label %502
  ]

450:                                              ; preds = %447
  %451 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %452 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %452, i32 0, i32 5
  store i32 1, i32* %453, align 4
  %454 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %455 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %455, i32 0, i32 6
  store i32 0, i32* %456, align 4
  %457 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %458 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %458, i32 0, i32 7
  store i32 0, i32* %459, align 4
  %460 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %461 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 8
  store i32 0, i32* %462, align 4
  br label %516

463:                                              ; preds = %447
  %464 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %465 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %465, i32 0, i32 8
  store i32 1, i32* %466, align 4
  %467 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %468 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %468, i32 0, i32 5
  store i32 0, i32* %469, align 4
  %470 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %471 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i32 0, i32 6
  store i32 0, i32* %472, align 4
  %473 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %474 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 7
  store i32 0, i32* %475, align 4
  br label %516

476:                                              ; preds = %447, %447
  %477 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %478 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %478, i32 0, i32 6
  store i32 1, i32* %479, align 4
  %480 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %481 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %480, i32 0, i32 1
  %482 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %481, i32 0, i32 5
  store i32 0, i32* %482, align 4
  %483 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %484 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %484, i32 0, i32 7
  store i32 0, i32* %485, align 4
  %486 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %487 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %487, i32 0, i32 8
  store i32 0, i32* %488, align 4
  br label %516

489:                                              ; preds = %447
  %490 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %491 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %490, i32 0, i32 1
  %492 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %491, i32 0, i32 7
  store i32 1, i32* %492, align 4
  %493 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %494 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %493, i32 0, i32 1
  %495 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %494, i32 0, i32 5
  store i32 0, i32* %495, align 4
  %496 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %497 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %497, i32 0, i32 6
  store i32 0, i32* %498, align 4
  %499 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %500 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %500, i32 0, i32 8
  store i32 0, i32* %501, align 4
  br label %516

502:                                              ; preds = %447
  %503 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %504 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %504, i32 0, i32 5
  store i32 0, i32* %505, align 4
  %506 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %507 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %506, i32 0, i32 1
  %508 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %507, i32 0, i32 6
  store i32 0, i32* %508, align 4
  %509 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %510 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %510, i32 0, i32 7
  store i32 0, i32* %511, align 4
  %512 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %513 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %513, i32 0, i32 8
  store i32 0, i32* %514, align 4
  br label %516

515:                                              ; preds = %447
  br label %516

516:                                              ; preds = %515, %502, %489, %476, %463, %450
  br label %517

517:                                              ; preds = %370, %516
  br label %518

518:                                              ; preds = %517, %446, %376
  br label %678

519:                                              ; preds = %106
  %520 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %521 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %520, i32 0, i32 0
  %522 = load %struct.TYPE_6__*, %struct.TYPE_6__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %522, i32 0, i32 2
  %524 = load i64, i64* %523, align 8
  switch i64 %524, label %546 [
    i64 130, label %525
    i64 129, label %532
    i64 128, label %539
  ]

525:                                              ; preds = %519
  %526 = bitcast %union.power_supply_propval* %10 to i32*
  %527 = load i32, i32* %526, align 4
  %528 = sdiv i32 %527, 1000
  %529 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %530 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %529, i32 0, i32 0
  %531 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %530, i32 0, i32 1
  store i32 %528, i32* %531, align 4
  br label %547

532:                                              ; preds = %519
  %533 = bitcast %union.power_supply_propval* %10 to i32*
  %534 = load i32, i32* %533, align 4
  %535 = sdiv i32 %534, 1000
  %536 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %537 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %536, i32 0, i32 2
  %538 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %537, i32 0, i32 4
  store i32 %535, i32* %538, align 8
  br label %547

539:                                              ; preds = %519
  %540 = bitcast %union.power_supply_propval* %10 to i32*
  %541 = load i32, i32* %540, align 4
  %542 = sdiv i32 %541, 1000
  %543 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %544 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %543, i32 0, i32 2
  %545 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %544, i32 0, i32 5
  store i32 %542, i32* %545, align 4
  br label %547

546:                                              ; preds = %519
  br label %547

547:                                              ; preds = %546, %539, %532, %525
  br label %678

548:                                              ; preds = %106
  %549 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %550 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %549, i32 0, i32 0
  %551 = load %struct.TYPE_6__*, %struct.TYPE_6__** %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %551, i32 0, i32 2
  %553 = load i64, i64* %552, align 8
  switch i64 %553, label %580 [
    i64 129, label %554
    i64 128, label %567
  ]

554:                                              ; preds = %548
  %555 = bitcast %union.power_supply_propval* %10 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %562

558:                                              ; preds = %554
  %559 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %560 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %560, i32 0, i32 9
  store i32 1, i32* %561, align 4
  br label %566

562:                                              ; preds = %554
  %563 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %564 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %564, i32 0, i32 9
  store i32 0, i32* %565, align 4
  br label %566

566:                                              ; preds = %562, %558
  br label %581

567:                                              ; preds = %548
  %568 = bitcast %union.power_supply_propval* %10 to i32*
  %569 = load i32, i32* %568, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %575

571:                                              ; preds = %567
  %572 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %573 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %573, i32 0, i32 10
  store i32 1, i32* %574, align 4
  br label %579

575:                                              ; preds = %567
  %576 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %577 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %576, i32 0, i32 1
  %578 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %577, i32 0, i32 10
  store i32 0, i32* %578, align 4
  br label %579

579:                                              ; preds = %575, %571
  br label %581

580:                                              ; preds = %548
  br label %581

581:                                              ; preds = %580, %579, %566
  br label %678

582:                                              ; preds = %106
  %583 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %584 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %583, i32 0, i32 0
  %585 = load %struct.TYPE_6__*, %struct.TYPE_6__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %585, i32 0, i32 2
  %587 = load i64, i64* %586, align 8
  switch i64 %587, label %601 [
    i64 130, label %588
  ]

588:                                              ; preds = %582
  %589 = bitcast %union.power_supply_propval* %10 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %596

592:                                              ; preds = %588
  %593 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %594 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %594, i32 0, i32 11
  store i32 0, i32* %595, align 4
  br label %600

596:                                              ; preds = %588
  %597 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %598 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %597, i32 0, i32 1
  %599 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %598, i32 0, i32 11
  store i32 1, i32* %599, align 4
  br label %600

600:                                              ; preds = %596, %592
  br label %602

601:                                              ; preds = %582
  br label %602

602:                                              ; preds = %601, %600
  br label %678

603:                                              ; preds = %106
  %604 = bitcast %union.power_supply_propval* %10 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = sdiv i32 %605, 10
  %607 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %608 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %607, i32 0, i32 0
  %609 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %608, i32 0, i32 2
  store i32 %606, i32* %609, align 8
  br label %678

610:                                              ; preds = %106
  %611 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %612 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %611, i32 0, i32 0
  %613 = load %struct.TYPE_6__*, %struct.TYPE_6__** %612, align 8
  %614 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %613, i32 0, i32 2
  %615 = load i64, i64* %614, align 8
  switch i64 %615, label %637 [
    i64 129, label %616
    i64 128, label %623
    i64 130, label %630
  ]

616:                                              ; preds = %610
  %617 = bitcast %union.power_supply_propval* %10 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = sdiv i32 %618, 1000
  %620 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %621 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %620, i32 0, i32 2
  %622 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %621, i32 0, i32 6
  store i32 %619, i32* %622, align 8
  br label %638

623:                                              ; preds = %610
  %624 = bitcast %union.power_supply_propval* %10 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = sdiv i32 %625, 1000
  %627 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %628 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %627, i32 0, i32 2
  %629 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %628, i32 0, i32 7
  store i32 %626, i32* %629, align 4
  br label %638

630:                                              ; preds = %610
  %631 = bitcast %union.power_supply_propval* %10 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = sdiv i32 %632, 1000
  %634 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %635 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %634, i32 0, i32 0
  %636 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %635, i32 0, i32 3
  store i32 %633, i32* %636, align 4
  br label %638

637:                                              ; preds = %610
  br label %638

638:                                              ; preds = %637, %630, %623, %616
  br label %678

639:                                              ; preds = %106
  %640 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %641 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %640, i32 0, i32 0
  %642 = load %struct.TYPE_6__*, %struct.TYPE_6__** %641, align 8
  %643 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %642, i32 0, i32 2
  %644 = load i64, i64* %643, align 8
  switch i64 %644, label %665 [
    i64 130, label %645
    i64 128, label %652
  ]

645:                                              ; preds = %639
  %646 = bitcast %union.power_supply_propval* %10 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = sdiv i32 %647, 1000
  %649 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %650 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %649, i32 0, i32 0
  %651 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %650, i32 0, i32 4
  store i32 %648, i32* %651, align 8
  br label %666

652:                                              ; preds = %639
  %653 = bitcast %union.power_supply_propval* %10 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %660

656:                                              ; preds = %652
  %657 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %658 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %657, i32 0, i32 1
  %659 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %658, i32 0, i32 12
  store i32 1, i32* %659, align 4
  br label %664

660:                                              ; preds = %652
  %661 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %662 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %661, i32 0, i32 1
  %663 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %662, i32 0, i32 12
  store i32 0, i32* %663, align 4
  br label %664

664:                                              ; preds = %660, %656
  br label %666

665:                                              ; preds = %639
  br label %666

666:                                              ; preds = %665, %664, %645
  br label %678

667:                                              ; preds = %106
  %668 = load i32, i32* %12, align 4
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %676, label %670

670:                                              ; preds = %667
  %671 = bitcast %union.power_supply_propval* %10 to i32*
  %672 = load i32, i32* %671, align 4
  %673 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %9, align 8
  %674 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %673, i32 0, i32 0
  %675 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %674, i32 0, i32 0
  store i32 %672, i32* %675, align 8
  br label %676

676:                                              ; preds = %670, %667
  br label %678

677:                                              ; preds = %106
  br label %678

678:                                              ; preds = %677, %676, %666, %638, %603, %602, %581, %547, %518, %369, %238
  br label %679

679:                                              ; preds = %678, %105
  %680 = load i32, i32* %11, align 4
  %681 = add nsw i32 %680, 1
  store i32 %681, i32* %11, align 4
  br label %48

682:                                              ; preds = %48
  store i32 0, i32* %3, align 4
  br label %683

683:                                              ; preds = %682, %36
  %684 = load i32, i32* %3, align 4
  ret i32 %684
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.abx500_chargalg* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @match_string(i8**, i32, i32) #1

declare dso_local i64 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i8* @psy_to_ux500_charger(%struct.power_supply*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
