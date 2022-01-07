; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-palmas.c_palmas_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-palmas.c_palmas_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.palmas_pctrl_chip_info = type { i32, i64*, i32, i32, %struct.palmas_pingroup* }
%struct.palmas_pingroup = type { i32*, i32, %struct.palmas_pin_info** }
%struct.palmas_pin_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Pinconf is not supported for pin-id %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Pinconf is not supported for pin %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"PULL control not supported for pin %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Reg 0x%02x read failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"OD control not supported for pin %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Properties not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @palmas_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.palmas_pctrl_chip_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.palmas_pingroup*, align 8
  %11 = alloca %struct.palmas_pin_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %20 = call %struct.palmas_pctrl_chip_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %19)
  store %struct.palmas_pctrl_chip_info* %20, %struct.palmas_pctrl_chip_info** %8, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @pinconf_to_config_param(i64 %22)
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %18, align 4
  br label %24

24:                                               ; preds = %45, %3
  %25 = load i32, i32* %18, align 4
  %26 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %27 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %32 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %31, i32 0, i32 4
  %33 = load %struct.palmas_pingroup*, %struct.palmas_pingroup** %32, align 8
  %34 = load i32, i32* %18, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.palmas_pingroup, %struct.palmas_pingroup* %33, i64 %35
  %37 = getelementptr inbounds %struct.palmas_pingroup, %struct.palmas_pingroup* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %48

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %18, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %18, align 4
  br label %24

48:                                               ; preds = %43, %24
  %49 = load i32, i32* %18, align 4
  %50 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %51 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %56 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ENOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %312

62:                                               ; preds = %48
  %63 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %64 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %63, i32 0, i32 4
  %65 = load %struct.palmas_pingroup*, %struct.palmas_pingroup** %64, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.palmas_pingroup, %struct.palmas_pingroup* %65, i64 %67
  store %struct.palmas_pingroup* %68, %struct.palmas_pingroup** %10, align 8
  %69 = load %struct.palmas_pingroup*, %struct.palmas_pingroup** %10, align 8
  %70 = getelementptr inbounds %struct.palmas_pingroup, %struct.palmas_pingroup* %69, i32 0, i32 2
  %71 = load %struct.palmas_pin_info**, %struct.palmas_pin_info*** %70, align 8
  %72 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %73 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %18, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.palmas_pin_info*, %struct.palmas_pin_info** %71, i64 %78
  %80 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %79, align 8
  store %struct.palmas_pin_info* %80, %struct.palmas_pin_info** %11, align 8
  %81 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %82 = icmp ne %struct.palmas_pin_info* %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %62
  %84 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %85 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.palmas_pingroup*, %struct.palmas_pingroup** %10, align 8
  %88 = getelementptr inbounds %struct.palmas_pingroup, %struct.palmas_pingroup* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @ENOTSUPP, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %312

93:                                               ; preds = %62
  %94 = load i32, i32* %9, align 4
  switch i32 %94, label %300 [
    i32 131, label %95
    i32 129, label %95
    i32 130, label %95
    i32 128, label %204
  ]

95:                                               ; preds = %93, %93, %93
  %96 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %97 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = icmp ne %struct.TYPE_3__* %98, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %95
  %101 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %102 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.palmas_pingroup*, %struct.palmas_pingroup** %10, align 8
  %105 = getelementptr inbounds %struct.palmas_pingroup, %struct.palmas_pingroup* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, ...) @dev_err(i32 %103, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @ENOTSUPP, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %312

110:                                              ; preds = %95
  %111 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %112 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %111, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %14, align 4
  %116 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %117 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %15, align 4
  %121 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %122 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @palmas_read(i32 %123, i32 %124, i32 %125, i32* %12)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %110
  %130 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %131 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 (i32, i8*, ...) @dev_err(i32 %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %4, align 4
  br label %312

137:                                              ; preds = %110
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %140 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %139, i32 0, i32 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %138, %143
  store i32 %144, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %145 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %146 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %145, i32 0, i32 1
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %137
  %152 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %153 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %152, i32 0, i32 1
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %16, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = load i32, i32* %9, align 4
  %161 = icmp eq i32 %160, 131
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store i32 1, i32* %17, align 4
  br label %203

163:                                              ; preds = %159, %151, %137
  %164 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %165 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %164, i32 0, i32 1
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %163
  %171 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %172 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %171, i32 0, i32 1
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %16, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %170
  %179 = load i32, i32* %9, align 4
  %180 = icmp eq i32 %179, 129
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i32 1, i32* %17, align 4
  br label %202

182:                                              ; preds = %178, %170, %163
  %183 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %184 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %183, i32 0, i32 1
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %182
  %190 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %191 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %190, i32 0, i32 1
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %189
  %198 = load i32, i32* %9, align 4
  %199 = icmp eq i32 %198, 130
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  store i32 1, i32* %17, align 4
  br label %201

201:                                              ; preds = %200, %197, %189, %182
  br label %202

202:                                              ; preds = %201, %181
  br label %203

203:                                              ; preds = %202, %162
  br label %307

204:                                              ; preds = %93
  %205 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %206 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %205, i32 0, i32 0
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = icmp ne %struct.TYPE_4__* %207, null
  br i1 %208, label %219, label %209

209:                                              ; preds = %204
  %210 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %211 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.palmas_pingroup*, %struct.palmas_pingroup** %10, align 8
  %214 = getelementptr inbounds %struct.palmas_pingroup, %struct.palmas_pingroup* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i32 (i32, i8*, ...) @dev_err(i32 %212, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* @ENOTSUPP, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %4, align 4
  br label %312

219:                                              ; preds = %204
  %220 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %221 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %220, i32 0, i32 0
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %14, align 4
  %225 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %226 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %225, i32 0, i32 0
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %15, align 4
  %230 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %231 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @palmas_read(i32 %232, i32 %233, i32 %234, i32* %12)
  store i32 %235, i32* %13, align 4
  %236 = load i32, i32* %13, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %219
  %239 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %240 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %15, align 4
  %243 = load i32, i32* %13, align 4
  %244 = call i32 (i32, i8*, ...) @dev_err(i32 %241, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %242, i32 %243)
  %245 = load i32, i32* %13, align 4
  store i32 %245, i32* %4, align 4
  br label %312

246:                                              ; preds = %219
  %247 = load i32, i32* %12, align 4
  %248 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %249 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %248, i32 0, i32 0
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = and i32 %247, %252
  store i32 %253, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %254 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %255 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %254, i32 0, i32 0
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = icmp sge i32 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %246
  %261 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %262 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %261, i32 0, i32 0
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %16, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %260
  store i32 0, i32* %17, align 4
  br label %286

269:                                              ; preds = %260, %246
  %270 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %271 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %270, i32 0, i32 0
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = icmp sge i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %269
  %277 = load %struct.palmas_pin_info*, %struct.palmas_pin_info** %11, align 8
  %278 = getelementptr inbounds %struct.palmas_pin_info, %struct.palmas_pin_info* %277, i32 0, i32 0
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %16, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %276
  store i32 1, i32* %17, align 4
  br label %285

285:                                              ; preds = %284, %276, %269
  br label %286

286:                                              ; preds = %285, %268
  %287 = load i32, i32* %17, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %286
  %290 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %291 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.palmas_pingroup*, %struct.palmas_pingroup** %10, align 8
  %294 = getelementptr inbounds %struct.palmas_pingroup, %struct.palmas_pingroup* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = call i32 (i32, i8*, ...) @dev_err(i32 %292, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %295)
  %297 = load i32, i32* @ENOTSUPP, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %4, align 4
  br label %312

299:                                              ; preds = %286
  br label %307

300:                                              ; preds = %93
  %301 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %8, align 8
  %302 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = call i32 (i32, i8*, ...) @dev_err(i32 %303, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %305 = load i32, i32* @ENOTSUPP, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %4, align 4
  br label %312

307:                                              ; preds = %299, %203
  %308 = load i32, i32* %9, align 4
  %309 = load i32, i32* %17, align 4
  %310 = call i64 @pinconf_to_config_packed(i32 %308, i32 %309)
  %311 = load i64*, i64** %7, align 8
  store i64 %310, i64* %311, align 8
  store i32 0, i32* %4, align 4
  br label %312

312:                                              ; preds = %307, %300, %289, %238, %209, %129, %100, %83, %54
  %313 = load i32, i32* %4, align 4
  ret i32 %313
}

declare dso_local %struct.palmas_pctrl_chip_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @palmas_read(i32, i32, i32, i32*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
