; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_set_machine_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_set_machine_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, i32*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.regulator_ops* }
%struct.regulator_ops = type { i32 (%struct.regulator_dev.0*, i64)*, i32 (%struct.regulator_dev.1*, i64)*, i32 (%struct.regulator_dev.2*, i64)*, i32 (%struct.regulator_dev.3*)*, i32 (%struct.regulator_dev.4*)*, i32 (%struct.regulator_dev.5*)*, i32 (%struct.regulator_dev.6*, i32)* }
%struct.regulator_dev.0 = type opaque
%struct.regulator_dev.1 = type opaque
%struct.regulator_dev.2 = type opaque
%struct.regulator_dev.3 = type opaque
%struct.regulator_dev.4 = type opaque
%struct.regulator_dev.5 = type opaque
%struct.regulator_dev.6 = type opaque
%struct.regulation_constraints = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to set input limit\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to set suspend state\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"no set_mode operation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to set initial mode: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to set ramp_delay\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to set pull down\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to set soft start\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"failed to set over current protection\0A\00", align 1
@REGULATOR_ACTIVE_DISCHARGE_ENABLE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to set active discharge\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"failed to enable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, %struct.regulation_constraints*)* @set_machine_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_machine_constraints(%struct.regulator_dev* %0, %struct.regulation_constraints* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca %struct.regulation_constraints*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store %struct.regulation_constraints* %1, %struct.regulation_constraints** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.regulator_ops*, %struct.regulator_ops** %12, align 8
  store %struct.regulator_ops* %13, %struct.regulator_ops** %7, align 8
  %14 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %15 = icmp ne %struct.regulation_constraints* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_7__* @kmemdup(%struct.regulation_constraints* %17, i32 4, i32 %18)
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %21 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %20, i32 0, i32 2
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %21, align 8
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.TYPE_7__* @kzalloc(i32 4, i32 %23)
  %25 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %26 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %25, i32 0, i32 2
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %26, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %29 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %365

35:                                               ; preds = %27
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %37 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %38 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %37, i32 0, i32 2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = call i32 @machine_constraints_voltage(%struct.regulator_dev* %36, %struct.TYPE_7__* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %365

45:                                               ; preds = %35
  %46 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %47 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %48 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i32 @machine_constraints_current(%struct.regulator_dev* %46, %struct.TYPE_7__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %365

55:                                               ; preds = %45
  %56 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %57 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %56, i32 0, i32 2
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 11
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %55
  %63 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %64 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %63, i32 0, i32 0
  %65 = load i32 (%struct.regulator_dev.0*, i64)*, i32 (%struct.regulator_dev.0*, i64)** %64, align 8
  %66 = icmp ne i32 (%struct.regulator_dev.0*, i64)* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %69 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %68, i32 0, i32 0
  %70 = load i32 (%struct.regulator_dev.0*, i64)*, i32 (%struct.regulator_dev.0*, i64)** %69, align 8
  %71 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %72 = bitcast %struct.regulator_dev* %71 to %struct.regulator_dev.0*
  %73 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %74 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 11
  %77 = load i64, i64* %76, align 8
  %78 = call i32 %70(%struct.regulator_dev.0* %72, i64 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %67
  %82 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %83 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %365

85:                                               ; preds = %67
  br label %86

86:                                               ; preds = %85, %62, %55
  %87 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %88 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %87, i32 0, i32 2
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %86
  %94 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %95 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %96 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 10
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @suspend_set_state(%struct.regulator_dev* %94, i64 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %93
  %104 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %105 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %365

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %86
  %109 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %110 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %109, i32 0, i32 2
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 9
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %145

115:                                              ; preds = %108
  %116 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %117 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %116, i32 0, i32 1
  %118 = load i32 (%struct.regulator_dev.1*, i64)*, i32 (%struct.regulator_dev.1*, i64)** %117, align 8
  %119 = icmp ne i32 (%struct.regulator_dev.1*, i64)* %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %122 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %365

125:                                              ; preds = %115
  %126 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %127 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %126, i32 0, i32 1
  %128 = load i32 (%struct.regulator_dev.1*, i64)*, i32 (%struct.regulator_dev.1*, i64)** %127, align 8
  %129 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %130 = bitcast %struct.regulator_dev* %129 to %struct.regulator_dev.1*
  %131 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %132 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %131, i32 0, i32 2
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 9
  %135 = load i64, i64* %134, align 8
  %136 = call i32 %128(%struct.regulator_dev.1* %130, i64 %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %125
  %140 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %3, align 4
  br label %365

144:                                              ; preds = %125
  br label %156

145:                                              ; preds = %108
  %146 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %147 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %146, i32 0, i32 2
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 8
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %154 = call i32 @drms_uA_update(%struct.regulator_dev* %153)
  br label %155

155:                                              ; preds = %152, %145
  br label %156

156:                                              ; preds = %155, %144
  %157 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %158 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %157, i32 0, i32 2
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %156
  %164 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %165 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %164, i32 0, i32 2
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 7
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %194

170:                                              ; preds = %163, %156
  %171 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %172 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %171, i32 0, i32 2
  %173 = load i32 (%struct.regulator_dev.2*, i64)*, i32 (%struct.regulator_dev.2*, i64)** %172, align 8
  %174 = icmp ne i32 (%struct.regulator_dev.2*, i64)* %173, null
  br i1 %174, label %175, label %194

175:                                              ; preds = %170
  %176 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %177 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %176, i32 0, i32 2
  %178 = load i32 (%struct.regulator_dev.2*, i64)*, i32 (%struct.regulator_dev.2*, i64)** %177, align 8
  %179 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %180 = bitcast %struct.regulator_dev* %179 to %struct.regulator_dev.2*
  %181 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %182 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %181, i32 0, i32 2
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = call i32 %178(%struct.regulator_dev.2* %180, i64 %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %175
  %190 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %191 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %190, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %192 = load i32, i32* %6, align 4
  store i32 %192, i32* %3, align 4
  br label %365

193:                                              ; preds = %175
  br label %194

194:                                              ; preds = %193, %170, %163
  %195 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %196 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %195, i32 0, i32 2
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %220

201:                                              ; preds = %194
  %202 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %203 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %202, i32 0, i32 3
  %204 = load i32 (%struct.regulator_dev.3*)*, i32 (%struct.regulator_dev.3*)** %203, align 8
  %205 = icmp ne i32 (%struct.regulator_dev.3*)* %204, null
  br i1 %205, label %206, label %220

206:                                              ; preds = %201
  %207 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %208 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %207, i32 0, i32 3
  %209 = load i32 (%struct.regulator_dev.3*)*, i32 (%struct.regulator_dev.3*)** %208, align 8
  %210 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %211 = bitcast %struct.regulator_dev* %210 to %struct.regulator_dev.3*
  %212 = call i32 %209(%struct.regulator_dev.3* %211)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %206
  %216 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %217 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %218 = load i32, i32* %6, align 4
  store i32 %218, i32* %3, align 4
  br label %365

219:                                              ; preds = %206
  br label %220

220:                                              ; preds = %219, %201, %194
  %221 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %222 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %221, i32 0, i32 2
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %246

227:                                              ; preds = %220
  %228 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %229 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %228, i32 0, i32 4
  %230 = load i32 (%struct.regulator_dev.4*)*, i32 (%struct.regulator_dev.4*)** %229, align 8
  %231 = icmp ne i32 (%struct.regulator_dev.4*)* %230, null
  br i1 %231, label %232, label %246

232:                                              ; preds = %227
  %233 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %234 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %233, i32 0, i32 4
  %235 = load i32 (%struct.regulator_dev.4*)*, i32 (%struct.regulator_dev.4*)** %234, align 8
  %236 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %237 = bitcast %struct.regulator_dev* %236 to %struct.regulator_dev.4*
  %238 = call i32 %235(%struct.regulator_dev.4* %237)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %232
  %242 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %243 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %242, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %244 = load i32, i32* %6, align 4
  store i32 %244, i32* %3, align 4
  br label %365

245:                                              ; preds = %232
  br label %246

246:                                              ; preds = %245, %227, %220
  %247 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %248 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %247, i32 0, i32 2
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %272

253:                                              ; preds = %246
  %254 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %255 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %254, i32 0, i32 5
  %256 = load i32 (%struct.regulator_dev.5*)*, i32 (%struct.regulator_dev.5*)** %255, align 8
  %257 = icmp ne i32 (%struct.regulator_dev.5*)* %256, null
  br i1 %257, label %258, label %272

258:                                              ; preds = %253
  %259 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %260 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %259, i32 0, i32 5
  %261 = load i32 (%struct.regulator_dev.5*)*, i32 (%struct.regulator_dev.5*)** %260, align 8
  %262 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %263 = bitcast %struct.regulator_dev* %262 to %struct.regulator_dev.5*
  %264 = call i32 %261(%struct.regulator_dev.5* %263)
  store i32 %264, i32* %6, align 4
  %265 = load i32, i32* %6, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %258
  %268 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %269 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %268, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %270 = load i32, i32* %6, align 4
  store i32 %270, i32* %3, align 4
  br label %365

271:                                              ; preds = %258
  br label %272

272:                                              ; preds = %271, %253, %246
  %273 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %274 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %273, i32 0, i32 2
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %308

279:                                              ; preds = %272
  %280 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %281 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %280, i32 0, i32 6
  %282 = load i32 (%struct.regulator_dev.6*, i32)*, i32 (%struct.regulator_dev.6*, i32)** %281, align 8
  %283 = icmp ne i32 (%struct.regulator_dev.6*, i32)* %282, null
  br i1 %283, label %284, label %308

284:                                              ; preds = %279
  %285 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %286 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %285, i32 0, i32 2
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @REGULATOR_ACTIVE_DISCHARGE_ENABLE, align 8
  %291 = icmp eq i64 %289, %290
  %292 = zext i1 %291 to i64
  %293 = select i1 %291, i32 1, i32 0
  store i32 %293, i32* %8, align 4
  %294 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %295 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %294, i32 0, i32 6
  %296 = load i32 (%struct.regulator_dev.6*, i32)*, i32 (%struct.regulator_dev.6*, i32)** %295, align 8
  %297 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %298 = bitcast %struct.regulator_dev* %297 to %struct.regulator_dev.6*
  %299 = load i32, i32* %8, align 4
  %300 = call i32 %296(%struct.regulator_dev.6* %298, i32 %299)
  store i32 %300, i32* %6, align 4
  %301 = load i32, i32* %6, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %284
  %304 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %305 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %304, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %306 = load i32, i32* %6, align 4
  store i32 %306, i32* %3, align 4
  br label %365

307:                                              ; preds = %284
  br label %308

308:                                              ; preds = %307, %279, %272
  %309 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %310 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %309, i32 0, i32 2
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %322, label %315

315:                                              ; preds = %308
  %316 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %317 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %316, i32 0, i32 2
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %362

322:                                              ; preds = %315, %308
  %323 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %324 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %323, i32 0, i32 1
  %325 = load i32*, i32** %324, align 8
  %326 = icmp ne i32* %325, null
  br i1 %326, label %327, label %343

327:                                              ; preds = %322
  %328 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %329 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  %331 = call i32 @regulator_enable(i32* %330)
  store i32 %331, i32* %6, align 4
  %332 = load i32, i32* %6, align 4
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %342

334:                                              ; preds = %327
  %335 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %336 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = call i32 @_regulator_put(i32* %337)
  %339 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %340 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %339, i32 0, i32 1
  store i32* null, i32** %340, align 8
  %341 = load i32, i32* %6, align 4
  store i32 %341, i32* %3, align 4
  br label %365

342:                                              ; preds = %327
  br label %343

343:                                              ; preds = %342, %322
  %344 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %345 = call i32 @_regulator_do_enable(%struct.regulator_dev* %344)
  store i32 %345, i32* %6, align 4
  %346 = load i32, i32* %6, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %357

348:                                              ; preds = %343
  %349 = load i32, i32* %6, align 4
  %350 = load i32, i32* @EINVAL, align 4
  %351 = sub nsw i32 0, %350
  %352 = icmp ne i32 %349, %351
  br i1 %352, label %353, label %357

353:                                              ; preds = %348
  %354 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %355 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %354, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %356 = load i32, i32* %6, align 4
  store i32 %356, i32* %3, align 4
  br label %365

357:                                              ; preds = %348, %343
  %358 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %359 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %359, align 8
  br label %362

362:                                              ; preds = %357, %315
  %363 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %364 = call i32 @print_constraints(%struct.regulator_dev* %363)
  store i32 0, i32* %3, align 4
  br label %365

365:                                              ; preds = %362, %353, %334, %303, %267, %241, %215, %189, %139, %120, %103, %81, %53, %43, %32
  %366 = load i32, i32* %3, align 4
  ret i32 %366
}

declare dso_local %struct.TYPE_7__* @kmemdup(%struct.regulation_constraints*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @kzalloc(i32, i32) #1

declare dso_local i32 @machine_constraints_voltage(%struct.regulator_dev*, %struct.TYPE_7__*) #1

declare dso_local i32 @machine_constraints_current(%struct.regulator_dev*, %struct.TYPE_7__*) #1

declare dso_local i32 @rdev_err(%struct.regulator_dev*, i8*, ...) #1

declare dso_local i32 @suspend_set_state(%struct.regulator_dev*, i64) #1

declare dso_local i32 @drms_uA_update(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @_regulator_put(i32*) #1

declare dso_local i32 @_regulator_do_enable(%struct.regulator_dev*) #1

declare dso_local i32 @print_constraints(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
