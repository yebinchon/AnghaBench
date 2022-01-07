; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_bind_con_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_bind_con_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con_driver = type { i8*, i32, i32, i32, %struct.consw* }
%struct.consw = type { %struct.module*, i32 (...)* }
%struct.module = type { i32 }
%struct.TYPE_4__ = type { %struct.vc_data* }
%struct.vc_data = type { i32, i64, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.vc_data*)* }

@ENODEV = common dso_local global i32 0, align 4
@MAX_NR_CON_DRIVER = common dso_local global i32 0, align 4
@registered_con_driver = common dso_local global %struct.con_driver* null, align 8
@CON_DRIVER_FLAG_INIT = common dso_local global i32 0, align 4
@conswitchp = common dso_local global %struct.consw* null, align 8
@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@con_driver_map = common dso_local global %struct.consw** null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Console: switching \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"consoles %d-%d \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"to %s %s %dx%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"colour\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.consw*, i32, i32, i32)* @do_bind_con_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_bind_con_driver(%struct.consw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.consw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.module*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.con_driver*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.vc_data*, align 8
  %19 = alloca %struct.vc_data*, align 8
  store %struct.consw* %0, %struct.consw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.consw*, %struct.consw** %6, align 8
  %21 = getelementptr inbounds %struct.consw, %struct.consw* %20, i32 0, i32 0
  %22 = load %struct.module*, %struct.module** %21, align 8
  store %struct.module* %22, %struct.module** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %16, align 4
  %25 = load %struct.module*, %struct.module** %10, align 8
  %26 = call i32 @try_module_get(%struct.module* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %243

31:                                               ; preds = %4
  %32 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %52, %31
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @MAX_NR_CON_DRIVER, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.con_driver*, %struct.con_driver** @registered_con_driver, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %38, i64 %40
  store %struct.con_driver* %41, %struct.con_driver** %12, align 8
  %42 = load %struct.con_driver*, %struct.con_driver** %12, align 8
  %43 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %42, i32 0, i32 4
  %44 = load %struct.consw*, %struct.consw** %43, align 8
  %45 = load %struct.consw*, %struct.consw** %6, align 8
  %46 = icmp eq %struct.consw* %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load %struct.con_driver*, %struct.con_driver** %12, align 8
  %49 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %11, align 8
  store i32 0, i32* %16, align 4
  br label %55

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %33

55:                                               ; preds = %47, %33
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %239

59:                                               ; preds = %55
  %60 = load %struct.con_driver*, %struct.con_driver** %12, align 8
  %61 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CON_DRIVER_FLAG_INIT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %59
  %67 = load %struct.consw*, %struct.consw** %6, align 8
  %68 = getelementptr inbounds %struct.consw, %struct.consw* %67, i32 0, i32 1
  %69 = load i32 (...)*, i32 (...)** %68, align 8
  %70 = call i32 (...) %69()
  %71 = load i32, i32* @CON_DRIVER_FLAG_INIT, align 4
  %72 = load %struct.con_driver*, %struct.con_driver** %12, align 8
  %73 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %66, %59
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load %struct.consw*, %struct.consw** @conswitchp, align 8
  %81 = icmp ne %struct.consw* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.consw*, %struct.consw** @conswitchp, align 8
  %84 = getelementptr inbounds %struct.consw, %struct.consw* %83, i32 0, i32 0
  %85 = load %struct.module*, %struct.module** %84, align 8
  %86 = call i32 @module_put(%struct.module* %85)
  br label %87

87:                                               ; preds = %82, %79
  %88 = load %struct.module*, %struct.module** %10, align 8
  %89 = call i32 @__module_get(%struct.module* %88)
  %90 = load %struct.consw*, %struct.consw** %6, align 8
  store %struct.consw* %90, %struct.consw** @conswitchp, align 8
  br label %91

91:                                               ; preds = %87, %76
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.con_driver*, %struct.con_driver** %12, align 8
  %94 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @max(i32 %92, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.con_driver*, %struct.con_driver** %12, align 8
  %99 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @min(i32 %97, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %186, %91
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %189

107:                                              ; preds = %103
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.vc_data*, %struct.vc_data** %112, align 8
  store %struct.vc_data* %113, %struct.vc_data** %18, align 8
  %114 = load %struct.consw**, %struct.consw*** @con_driver_map, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.consw*, %struct.consw** %114, i64 %116
  %118 = load %struct.consw*, %struct.consw** %117, align 8
  %119 = icmp ne %struct.consw* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %107
  %121 = load %struct.consw**, %struct.consw*** @con_driver_map, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.consw*, %struct.consw** %121, i64 %123
  %125 = load %struct.consw*, %struct.consw** %124, align 8
  %126 = getelementptr inbounds %struct.consw, %struct.consw* %125, i32 0, i32 0
  %127 = load %struct.module*, %struct.module** %126, align 8
  %128 = call i32 @module_put(%struct.module* %127)
  br label %129

129:                                              ; preds = %120, %107
  %130 = load %struct.module*, %struct.module** %10, align 8
  %131 = call i32 @__module_get(%struct.module* %130)
  %132 = load %struct.consw*, %struct.consw** %6, align 8
  %133 = load %struct.consw**, %struct.consw*** @con_driver_map, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.consw*, %struct.consw** %133, i64 %135
  store %struct.consw* %132, %struct.consw** %136, align 8
  %137 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %138 = icmp ne %struct.vc_data* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %129
  %140 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %141 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %140, i32 0, i32 5
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = icmp ne %struct.TYPE_3__* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %139, %129
  br label %186

145:                                              ; preds = %139
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %14, align 4
  %147 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %148 = call i64 @con_is_visible(%struct.vc_data* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* %15, align 4
  %152 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %153 = call i32 @save_screen(%struct.vc_data* %152)
  br label %154

154:                                              ; preds = %150, %145
  %155 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %156 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %17, align 4
  %158 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %159 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %158, i32 0, i32 5
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)** %161, align 8
  %163 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %164 = call i32 %162(%struct.vc_data* %163)
  %165 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %166 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %169 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @visual_init(%struct.vc_data* %170, i32 %171, i32 0)
  %173 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %174 = call i32 @set_origin(%struct.vc_data* %173)
  %175 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %176 = call i32 @update_attr(%struct.vc_data* %175)
  %177 = load i32, i32* %17, align 4
  %178 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %179 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %177, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %154
  %183 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %184 = call i32 @clear_buffer_attributes(%struct.vc_data* %183)
  br label %185

185:                                              ; preds = %182, %154
  br label %186

186:                                              ; preds = %185, %144
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %13, align 4
  br label %103

189:                                              ; preds = %103
  %190 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  %198 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %195, i32 %197)
  br label %199

199:                                              ; preds = %193, %189
  %200 = load i32, i32* %14, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %235

202:                                              ; preds = %199
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load %struct.vc_data*, %struct.vc_data** %207, align 8
  store %struct.vc_data* %208, %struct.vc_data** %19, align 8
  %209 = load %struct.vc_data*, %struct.vc_data** %19, align 8
  %210 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %215 = load i8*, i8** %11, align 8
  %216 = load %struct.vc_data*, %struct.vc_data** %19, align 8
  %217 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.vc_data*, %struct.vc_data** %19, align 8
  %220 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %214, i8* %215, i32 %218, i32 %221)
  %223 = load i32, i32* %15, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %202
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %227 = load i32, i32* %15, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load %struct.vc_data*, %struct.vc_data** %230, align 8
  store %struct.vc_data* %231, %struct.vc_data** %19, align 8
  %232 = load %struct.vc_data*, %struct.vc_data** %19, align 8
  %233 = call i32 @update_screen(%struct.vc_data* %232)
  br label %234

234:                                              ; preds = %225, %202
  br label %238

235:                                              ; preds = %199
  %236 = load i8*, i8** %11, align 8
  %237 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %236)
  br label %238

238:                                              ; preds = %235, %234
  store i32 0, i32* %16, align 4
  br label %239

239:                                              ; preds = %238, %58
  %240 = load %struct.module*, %struct.module** %10, align 8
  %241 = call i32 @module_put(%struct.module* %240)
  %242 = load i32, i32* %16, align 4
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %239, %28
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i32 @module_put(%struct.module*) #1

declare dso_local i32 @__module_get(%struct.module*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @con_is_visible(%struct.vc_data*) #1

declare dso_local i32 @save_screen(%struct.vc_data*) #1

declare dso_local i32 @visual_init(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @set_origin(%struct.vc_data*) #1

declare dso_local i32 @update_attr(%struct.vc_data*) #1

declare dso_local i32 @clear_buffer_attributes(%struct.vc_data*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @update_screen(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
