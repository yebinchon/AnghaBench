; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_get_optimal_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_get_optimal_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__, %struct.regulation_constraints*, %struct.coupling_desc }
%struct.TYPE_2__ = type { i32 }
%struct.regulation_constraints = type { i32, i32, i32* }
%struct.coupling_desc = type { %struct.regulator_dev** }

@INT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PM_SUSPEND_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32*, i32*, i32*, i32, i32)* @regulator_get_optimal_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_get_optimal_voltage(%struct.regulator_dev* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.coupling_desc*, align 8
  %15 = alloca %struct.regulator_dev**, align 8
  %16 = alloca %struct.regulation_constraints*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %32 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %31, i32 0, i32 2
  store %struct.coupling_desc* %32, %struct.coupling_desc** %14, align 8
  %33 = load %struct.coupling_desc*, %struct.coupling_desc** %14, align 8
  %34 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %33, i32 0, i32 0
  %35 = load %struct.regulator_dev**, %struct.regulator_dev*** %34, align 8
  store %struct.regulator_dev** %35, %struct.regulator_dev*** %15, align 8
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %37 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %36, i32 0, i32 1
  %38 = load %struct.regulation_constraints*, %struct.regulation_constraints** %37, align 8
  store %struct.regulation_constraints* %38, %struct.regulation_constraints** %16, align 8
  store i32 0, i32* %17, align 4
  %39 = load i32, i32* @INT_MAX, align 4
  store i32 %39, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %40 = load i32, i32* @INT_MAX, align 4
  store i32 %40, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 -1, i32* %41, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %60

44:                                               ; preds = %6
  %45 = load %struct.regulation_constraints*, %struct.regulation_constraints** %16, align 8
  %46 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %17, align 4
  %48 = load %struct.regulation_constraints*, %struct.regulation_constraints** %16, align 8
  %49 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %18, align 4
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @regulator_check_consumers(%struct.regulator_dev* %51, i32* %17, i32* %18, i32 %52)
  store i32 %53, i32* %25, align 4
  %54 = load i32, i32* %25, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* %25, align 4
  store i32 %57, i32* %7, align 4
  br label %232

58:                                               ; preds = %44
  %59 = load i32, i32* %17, align 4
  store i32 %59, i32* %23, align 4
  store i32 1, i32* %27, align 4
  br label %184

60:                                               ; preds = %6
  store i32 0, i32* %24, align 4
  br label %61

61:                                               ; preds = %107, %60
  %62 = load i32, i32* %24, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %110

65:                                               ; preds = %61
  store i32 0, i32* %28, align 4
  %66 = load i32, i32* @INT_MAX, align 4
  store i32 %66, i32* %29, align 4
  %67 = load %struct.regulator_dev**, %struct.regulator_dev*** %15, align 8
  %68 = load i32, i32* %24, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %67, i64 %69
  %71 = load %struct.regulator_dev*, %struct.regulator_dev** %70, align 8
  %72 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @lockdep_assert_held_once(i32* %73)
  %75 = load %struct.regulator_dev**, %struct.regulator_dev*** %15, align 8
  %76 = load i32, i32* %24, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %75, i64 %77
  %79 = load %struct.regulator_dev*, %struct.regulator_dev** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @regulator_check_consumers(%struct.regulator_dev* %79, i32* %28, i32* %29, i32 %80)
  store i32 %81, i32* %25, align 4
  %82 = load i32, i32* %25, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %65
  %85 = load i32, i32* %25, align 4
  store i32 %85, i32* %7, align 4
  br label %232

86:                                               ; preds = %65
  %87 = load %struct.regulator_dev**, %struct.regulator_dev*** %15, align 8
  %88 = load i32, i32* %24, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %87, i64 %89
  %91 = load %struct.regulator_dev*, %struct.regulator_dev** %90, align 8
  %92 = call i32 @regulator_check_voltage(%struct.regulator_dev* %91, i32* %28, i32* %29)
  store i32 %92, i32* %25, align 4
  %93 = load i32, i32* %25, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* %25, align 4
  store i32 %96, i32* %7, align 4
  br label %232

97:                                               ; preds = %86
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %28, align 4
  %100 = call i32 @max(i32 %98, i32 %99)
  store i32 %100, i32* %21, align 4
  %101 = load i32, i32* %24, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* %28, align 4
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %29, align 4
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %103, %97
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %24, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %24, align 4
  br label %61

110:                                              ; preds = %61
  %111 = load %struct.regulation_constraints*, %struct.regulation_constraints** %16, align 8
  %112 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %26, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %26, align 4
  %119 = sub nsw i32 %117, %118
  %120 = call i32 @max(i32 %116, i32 %119)
  store i32 %120, i32* %22, align 4
  store i32 1, i32* %24, align 4
  br label %121

121:                                              ; preds = %152, %110
  %122 = load i32, i32* %24, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %155

125:                                              ; preds = %121
  %126 = load %struct.regulator_dev**, %struct.regulator_dev*** %15, align 8
  %127 = load i32, i32* %24, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %126, i64 %128
  %130 = load %struct.regulator_dev*, %struct.regulator_dev** %129, align 8
  %131 = call i64 @_regulator_is_enabled(%struct.regulator_dev* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %125
  br label %152

134:                                              ; preds = %125
  %135 = load %struct.regulator_dev**, %struct.regulator_dev*** %15, align 8
  %136 = load i32, i32* %24, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %135, i64 %137
  %139 = load %struct.regulator_dev*, %struct.regulator_dev** %138, align 8
  %140 = call i32 @regulator_get_voltage_rdev(%struct.regulator_dev* %139)
  store i32 %140, i32* %30, align 4
  %141 = load i32, i32* %30, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i32, i32* %30, align 4
  store i32 %144, i32* %7, align 4
  br label %232

145:                                              ; preds = %134
  %146 = load i32, i32* %30, align 4
  %147 = load i32, i32* %20, align 4
  %148 = call i32 @min(i32 %146, i32 %147)
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %30, align 4
  %150 = load i32, i32* %19, align 4
  %151 = call i32 @max(i32 %149, i32 %150)
  store i32 %151, i32* %19, align 4
  br label %152

152:                                              ; preds = %145, %133
  %153 = load i32, i32* %24, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %24, align 4
  br label %121

155:                                              ; preds = %121
  %156 = load i32, i32* %19, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* %22, align 4
  store i32 %159, i32* %23, align 4
  br label %171

160:                                              ; preds = %155
  %161 = load i32, i32* %22, align 4
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %26, align 4
  %164 = sub nsw i32 %162, %163
  %165 = call i32 @max(i32 %161, i32 %164)
  store i32 %165, i32* %23, align 4
  %166 = load i32, i32* %23, align 4
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* %26, align 4
  %169 = add nsw i32 %167, %168
  %170 = call i32 @min(i32 %166, i32 %169)
  store i32 %170, i32* %23, align 4
  br label %171

171:                                              ; preds = %160, %158
  %172 = load i32, i32* %23, align 4
  %173 = load i32, i32* %18, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %7, align 4
  br label %232

178:                                              ; preds = %171
  %179 = load i32, i32* %23, align 4
  %180 = load i32, i32* %22, align 4
  %181 = icmp eq i32 %179, %180
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %27, align 4
  %183 = load i32, i32* %23, align 4
  store i32 %183, i32* %17, align 4
  br label %184

184:                                              ; preds = %178, %58
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @PM_SUSPEND_ON, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %184
  %189 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %190 = load i32*, i32** %9, align 8
  %191 = call i32 @regulator_limit_voltage_step(%struct.regulator_dev* %189, i32* %190, i32* %17)
  store i32 %191, i32* %25, align 4
  %192 = load i32, i32* %25, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = load i32, i32* %25, align 4
  store i32 %195, i32* %7, align 4
  br label %232

196:                                              ; preds = %188
  %197 = load i32, i32* %25, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 0, i32* %27, align 4
  br label %200

200:                                              ; preds = %199, %196
  br label %201

201:                                              ; preds = %200, %184
  %202 = load i32, i32* %13, align 4
  %203 = icmp sgt i32 %202, 1
  br i1 %203, label %204, label %226

204:                                              ; preds = %201
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %208, label %226

208:                                              ; preds = %204
  %209 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %210 = call i64 @_regulator_is_enabled(%struct.regulator_dev* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %208
  %213 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %214 = call i32 @regulator_get_voltage_rdev(%struct.regulator_dev* %213)
  store i32 %214, i32* %25, align 4
  %215 = load i32, i32* %25, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = load i32, i32* %25, align 4
  store i32 %218, i32* %7, align 4
  br label %232

219:                                              ; preds = %212
  %220 = load i32, i32* %25, align 4
  %221 = load i32*, i32** %9, align 8
  store i32 %220, i32* %221, align 4
  br label %225

222:                                              ; preds = %208
  %223 = load i32, i32* %17, align 4
  %224 = load i32*, i32** %9, align 8
  store i32 %223, i32* %224, align 4
  br label %225

225:                                              ; preds = %222, %219
  br label %226

226:                                              ; preds = %225, %204, %201
  %227 = load i32, i32* %17, align 4
  %228 = load i32*, i32** %10, align 8
  store i32 %227, i32* %228, align 4
  %229 = load i32, i32* %18, align 4
  %230 = load i32*, i32** %11, align 8
  store i32 %229, i32* %230, align 4
  %231 = load i32, i32* %27, align 4
  store i32 %231, i32* %7, align 4
  br label %232

232:                                              ; preds = %226, %217, %194, %175, %143, %95, %84, %56
  %233 = load i32, i32* %7, align 4
  ret i32 %233
}

declare dso_local i32 @regulator_check_consumers(%struct.regulator_dev*, i32*, i32*, i32) #1

declare dso_local i32 @lockdep_assert_held_once(i32*) #1

declare dso_local i32 @regulator_check_voltage(%struct.regulator_dev*, i32*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @_regulator_is_enabled(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_get_voltage_rdev(%struct.regulator_dev*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @regulator_limit_voltage_step(%struct.regulator_dev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
