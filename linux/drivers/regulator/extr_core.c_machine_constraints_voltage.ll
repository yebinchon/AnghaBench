; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_machine_constraints_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_machine_constraints_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.regulator_ops* }
%struct.regulator_ops = type { i32 (%struct.regulator_dev.0*, i32)* }
%struct.regulator_dev.0 = type opaque
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.regulation_constraints = type { i32, i32 }

@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Setting %d-%duV\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to get the current voltage(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Bringing %duV into %d-%duV\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to apply %d-%duV constraint(%d)\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid voltage constraints\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"unsupportable voltage constraints %u-%uuV\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"override min_uV, %d -> %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"override max_uV, %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, %struct.regulation_constraints*)* @machine_constraints_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machine_constraints_voltage(%struct.regulator_dev* %0, %struct.regulation_constraints* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca %struct.regulation_constraints*, align 8
  %6 = alloca %struct.regulator_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store %struct.regulation_constraints* %1, %struct.regulation_constraints** %5, align 8
  %18 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %19 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.regulator_ops*, %struct.regulator_ops** %21, align 8
  store %struct.regulator_ops* %22, %struct.regulator_ops** %6, align 8
  %23 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %24 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %154

29:                                               ; preds = %2
  %30 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %31 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %154

36:                                               ; preds = %29
  %37 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %38 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %154

43:                                               ; preds = %36
  %44 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %45 = call i32 @regulator_get_voltage_rdev(%struct.regulator_dev* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @ENOTRECOVERABLE, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %43
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %52 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %53 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %58 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.regulator_dev*, i8*, i32, i32, ...) @rdev_info(%struct.regulator_dev* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %61)
  %63 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %65 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %70 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @_regulator_do_set_voltage(%struct.regulator_dev* %63, i32 %68, i32 %73)
  %75 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %76 = call i32 @regulator_get_voltage_rdev(%struct.regulator_dev* %75)
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %50, %43
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  br label %300

85:                                               ; preds = %77
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %90 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %88, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %85
  %96 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %97 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %8, align 4
  %101 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %102 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %95, %85
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %109 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %107, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %106
  %115 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %116 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %115, i32 0, i32 1
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %8, align 4
  %120 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %121 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %114, %106
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %153

133:                                              ; preds = %129, %125
  %134 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 (%struct.regulator_dev*, i8*, i32, i32, ...) @rdev_info(%struct.regulator_dev* %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %135, i32 %136, i32 %137)
  %139 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @_regulator_do_set_voltage(%struct.regulator_dev* %139, i32 %140, i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %133
  %146 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %146, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %3, align 4
  br label %300

152:                                              ; preds = %133
  br label %153

153:                                              ; preds = %152, %129
  br label %154

154:                                              ; preds = %153, %36, %29, %2
  %155 = load %struct.regulator_ops*, %struct.regulator_ops** %6, align 8
  %156 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %155, i32 0, i32 0
  %157 = load i32 (%struct.regulator_dev.0*, i32)*, i32 (%struct.regulator_dev.0*, i32)** %156, align 8
  %158 = icmp ne i32 (%struct.regulator_dev.0*, i32)* %157, null
  br i1 %158, label %159, label %299

159:                                              ; preds = %154
  %160 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %161 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %299

166:                                              ; preds = %159
  %167 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %168 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* @INT_MAX, align 4
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* @INT_MIN, align 4
  store i32 %173, i32* %14, align 4
  %174 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %175 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %15, align 4
  %177 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %178 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %16, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %193

182:                                              ; preds = %166
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %182
  store i32 1, i32* %15, align 4
  %186 = load i32, i32* @INT_MAX, align 4
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %15, align 4
  %188 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %189 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %16, align 4
  %191 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %192 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  br label %193

193:                                              ; preds = %185, %182, %166
  %194 = load i32, i32* %15, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load i32, i32* %16, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  br label %300

200:                                              ; preds = %196, %193
  %201 = load i32, i32* %15, align 4
  %202 = icmp sle i32 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %16, align 4
  %205 = icmp sle i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %15, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %206, %203, %200
  %211 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %212 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %211, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %3, align 4
  br label %300

215:                                              ; preds = %206
  store i32 0, i32* %12, align 4
  br label %216

216:                                              ; preds = %252, %215
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %11, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %255

220:                                              ; preds = %216
  %221 = load %struct.regulator_ops*, %struct.regulator_ops** %6, align 8
  %222 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %221, i32 0, i32 0
  %223 = load i32 (%struct.regulator_dev.0*, i32)*, i32 (%struct.regulator_dev.0*, i32)** %222, align 8
  %224 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %225 = bitcast %struct.regulator_dev* %224 to %struct.regulator_dev.0*
  %226 = load i32, i32* %12, align 4
  %227 = call i32 %223(%struct.regulator_dev.0* %225, i32 %226)
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %17, align 4
  %229 = icmp sle i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %220
  br label %252

231:                                              ; preds = %220
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* %15, align 4
  %234 = icmp sge i32 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %231
  %236 = load i32, i32* %17, align 4
  %237 = load i32, i32* %13, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = load i32, i32* %17, align 4
  store i32 %240, i32* %13, align 4
  br label %241

241:                                              ; preds = %239, %235, %231
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* %16, align 4
  %244 = icmp sle i32 %242, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %241
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %14, align 4
  %248 = icmp sgt i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = load i32, i32* %17, align 4
  store i32 %250, i32* %14, align 4
  br label %251

251:                                              ; preds = %249, %245, %241
  br label %252

252:                                              ; preds = %251, %230
  %253 = load i32, i32* %12, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %12, align 4
  br label %216

255:                                              ; preds = %216
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %13, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %266

259:                                              ; preds = %255
  %260 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* %14, align 4
  %263 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %260, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %261, i32 %262)
  %264 = load i32, i32* @EINVAL, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %3, align 4
  br label %300

266:                                              ; preds = %255
  %267 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %268 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %13, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %282

272:                                              ; preds = %266
  %273 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %274 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %275 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %13, align 4
  %278 = call i32 @rdev_dbg(%struct.regulator_dev* %273, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %276, i32 %277)
  %279 = load i32, i32* %13, align 4
  %280 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %281 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 4
  br label %282

282:                                              ; preds = %272, %266
  %283 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %284 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %14, align 4
  %287 = icmp sgt i32 %285, %286
  br i1 %287, label %288, label %298

288:                                              ; preds = %282
  %289 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %290 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %291 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %14, align 4
  %294 = call i32 @rdev_dbg(%struct.regulator_dev* %289, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %292, i32 %293)
  %295 = load i32, i32* %14, align 4
  %296 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %297 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 4
  br label %298

298:                                              ; preds = %288, %282
  br label %299

299:                                              ; preds = %298, %159, %154
  store i32 0, i32* %3, align 4
  br label %300

300:                                              ; preds = %299, %259, %210, %199, %145, %80
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local i32 @regulator_get_voltage_rdev(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_info(%struct.regulator_dev*, i8*, i32, i32, ...) #1

declare dso_local i32 @_regulator_do_set_voltage(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @rdev_err(%struct.regulator_dev*, i8*, ...) #1

declare dso_local i32 @rdev_dbg(%struct.regulator_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
