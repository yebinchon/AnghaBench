; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_attr_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_attr_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.TYPE_29__ = type { %struct.attribute }
%struct.TYPE_39__ = type { %struct.attribute }
%struct.TYPE_33__ = type { %struct.attribute }
%struct.TYPE_35__ = type { %struct.attribute }
%struct.TYPE_28__ = type { %struct.attribute }
%struct.TYPE_27__ = type { %struct.attribute }
%struct.TYPE_26__ = type { %struct.attribute }
%struct.TYPE_38__ = type { %struct.attribute }
%struct.TYPE_31__ = type { %struct.attribute }
%struct.TYPE_36__ = type { %struct.attribute }
%struct.TYPE_32__ = type { %struct.attribute }
%struct.TYPE_37__ = type { %struct.attribute }
%struct.TYPE_40__ = type { %struct.attribute }
%struct.TYPE_43__ = type { %struct.attribute }
%struct.TYPE_46__ = type { %struct.attribute }
%struct.TYPE_42__ = type { %struct.attribute }
%struct.TYPE_45__ = type { %struct.attribute }
%struct.TYPE_25__ = type { %struct.attribute }
%struct.TYPE_41__ = type { %struct.attribute }
%struct.TYPE_44__ = type { %struct.attribute }
%struct.TYPE_24__ = type { %struct.attribute }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.regulator_dev = type { i64, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32, i64, %struct.regulator_ops* }
%struct.regulator_ops = type { i64 (%struct.regulator_dev.0*)*, i64 (%struct.regulator_dev.1*)*, i64 (%struct.regulator_dev.2*, i32)*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.regulator_dev.0 = type opaque
%struct.regulator_dev.1 = type opaque
%struct.regulator_dev.2 = type opaque

@dev_attr_name = common dso_local global %struct.TYPE_30__ zeroinitializer, align 4
@dev_attr_num_users = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4
@dev_attr_type = common dso_local global %struct.TYPE_39__ zeroinitializer, align 4
@dev_attr_microvolts = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@dev_attr_microamps = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@dev_attr_opmode = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@dev_attr_state = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@dev_attr_status = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@dev_attr_bypass = common dso_local global %struct.TYPE_38__ zeroinitializer, align 4
@dev_attr_min_microvolts = common dso_local global %struct.TYPE_31__ zeroinitializer, align 4
@dev_attr_max_microvolts = common dso_local global %struct.TYPE_36__ zeroinitializer, align 4
@dev_attr_min_microamps = common dso_local global %struct.TYPE_32__ zeroinitializer, align 4
@dev_attr_max_microamps = common dso_local global %struct.TYPE_37__ zeroinitializer, align 4
@dev_attr_suspend_standby_state = common dso_local global %struct.TYPE_40__ zeroinitializer, align 4
@dev_attr_suspend_mem_state = common dso_local global %struct.TYPE_43__ zeroinitializer, align 4
@dev_attr_suspend_disk_state = common dso_local global %struct.TYPE_46__ zeroinitializer, align 4
@dev_attr_suspend_standby_microvolts = common dso_local global %struct.TYPE_42__ zeroinitializer, align 4
@dev_attr_suspend_mem_microvolts = common dso_local global %struct.TYPE_45__ zeroinitializer, align 4
@dev_attr_suspend_disk_microvolts = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@dev_attr_suspend_standby_mode = common dso_local global %struct.TYPE_41__ zeroinitializer, align 4
@dev_attr_suspend_mem_mode = common dso_local global %struct.TYPE_44__ zeroinitializer, align 4
@dev_attr_suspend_disk_mode = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @regulator_attr_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_attr_is_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.regulator_dev*, align 8
  %10 = alloca %struct.regulator_ops*, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.kobject*, %struct.kobject** %5, align 8
  %13 = call %struct.device* @kobj_to_dev(%struct.kobject* %12)
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.device*, %struct.device** %8, align 8
  %15 = call %struct.regulator_dev* @dev_to_rdev(%struct.device* %14)
  store %struct.regulator_dev* %15, %struct.regulator_dev** %9, align 8
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %17 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 2
  %20 = load %struct.regulator_ops*, %struct.regulator_ops** %19, align 8
  store %struct.regulator_ops* %20, %struct.regulator_ops** %10, align 8
  %21 = load %struct.attribute*, %struct.attribute** %6, align 8
  %22 = getelementptr inbounds %struct.attribute, %struct.attribute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.attribute*, %struct.attribute** %6, align 8
  %25 = icmp eq %struct.attribute* %24, getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @dev_attr_name, i32 0, i32 0)
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load %struct.attribute*, %struct.attribute** %6, align 8
  %28 = icmp eq %struct.attribute* %27, getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @dev_attr_num_users, i32 0, i32 0)
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.attribute*, %struct.attribute** %6, align 8
  %31 = icmp eq %struct.attribute* %30, getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @dev_attr_type, i32 0, i32 0)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26, %3
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %251

34:                                               ; preds = %29
  %35 = load %struct.attribute*, %struct.attribute** %6, align 8
  %36 = icmp eq %struct.attribute* %35, getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @dev_attr_microvolts, i32 0, i32 0)
  br i1 %36, label %37, label %93

37:                                               ; preds = %34
  %38 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %39 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %38, i32 0, i32 0
  %40 = load i64 (%struct.regulator_dev.0*)*, i64 (%struct.regulator_dev.0*)** %39, align 8
  %41 = icmp ne i64 (%struct.regulator_dev.0*)* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %44 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %43, i32 0, i32 0
  %45 = load i64 (%struct.regulator_dev.0*)*, i64 (%struct.regulator_dev.0*)** %44, align 8
  %46 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %47 = bitcast %struct.regulator_dev* %46 to %struct.regulator_dev.0*
  %48 = call i64 %45(%struct.regulator_dev.0* %47)
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %90, label %50

50:                                               ; preds = %42, %37
  %51 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %52 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %51, i32 0, i32 1
  %53 = load i64 (%struct.regulator_dev.1*)*, i64 (%struct.regulator_dev.1*)** %52, align 8
  %54 = icmp ne i64 (%struct.regulator_dev.1*)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %57 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %56, i32 0, i32 1
  %58 = load i64 (%struct.regulator_dev.1*)*, i64 (%struct.regulator_dev.1*)** %57, align 8
  %59 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %60 = bitcast %struct.regulator_dev* %59 to %struct.regulator_dev.1*
  %61 = call i64 %58(%struct.regulator_dev.1* %60)
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %90, label %63

63:                                               ; preds = %55, %50
  %64 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %65 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %64, i32 0, i32 2
  %66 = load i64 (%struct.regulator_dev.2*, i32)*, i64 (%struct.regulator_dev.2*, i32)** %65, align 8
  %67 = icmp ne i64 (%struct.regulator_dev.2*, i32)* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %70 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %69, i32 0, i32 2
  %71 = load i64 (%struct.regulator_dev.2*, i32)*, i64 (%struct.regulator_dev.2*, i32)** %70, align 8
  %72 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %73 = bitcast %struct.regulator_dev* %72 to %struct.regulator_dev.2*
  %74 = call i64 %71(%struct.regulator_dev.2* %73, i32 0)
  %75 = icmp sge i64 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %68, %63
  %77 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %78 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %77, i32 0, i32 1
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %85 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %84, i32 0, i32 1
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %83, %68, %55, %42
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %251

92:                                               ; preds = %83, %76
  store i32 0, i32* %4, align 4
  br label %251

93:                                               ; preds = %34
  %94 = load %struct.attribute*, %struct.attribute** %6, align 8
  %95 = icmp eq %struct.attribute* %94, getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @dev_attr_microamps, i32 0, i32 0)
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %98 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %97, i32 0, i32 12
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  br label %104

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i32 [ %102, %101 ], [ 0, %103 ]
  store i32 %105, i32* %4, align 4
  br label %251

106:                                              ; preds = %93
  %107 = load %struct.attribute*, %struct.attribute** %6, align 8
  %108 = icmp eq %struct.attribute* %107, getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @dev_attr_opmode, i32 0, i32 0)
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %111 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %110, i32 0, i32 11
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %11, align 4
  br label %117

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  store i32 %118, i32* %4, align 4
  br label %251

119:                                              ; preds = %106
  %120 = load %struct.attribute*, %struct.attribute** %6, align 8
  %121 = icmp eq %struct.attribute* %120, getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @dev_attr_state, i32 0, i32 0)
  br i1 %121, label %122, label %137

122:                                              ; preds = %119
  %123 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %124 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %129 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %128, i32 0, i32 10
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127, %122
  %133 = load i32, i32* %11, align 4
  br label %135

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 0, %134 ]
  store i32 %136, i32* %4, align 4
  br label %251

137:                                              ; preds = %119
  %138 = load %struct.attribute*, %struct.attribute** %6, align 8
  %139 = icmp eq %struct.attribute* %138, getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @dev_attr_status, i32 0, i32 0)
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %142 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %141, i32 0, i32 9
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* %11, align 4
  br label %148

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %147, %145
  %149 = phi i32 [ %146, %145 ], [ 0, %147 ]
  store i32 %149, i32* %4, align 4
  br label %251

150:                                              ; preds = %137
  %151 = load %struct.attribute*, %struct.attribute** %6, align 8
  %152 = icmp eq %struct.attribute* %151, getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @dev_attr_bypass, i32 0, i32 0)
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %155 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %154, i32 0, i32 8
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %11, align 4
  br label %161

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %158
  %162 = phi i32 [ %159, %158 ], [ 0, %160 ]
  store i32 %162, i32* %4, align 4
  br label %251

163:                                              ; preds = %150
  %164 = load %struct.attribute*, %struct.attribute** %6, align 8
  %165 = icmp eq %struct.attribute* %164, getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @dev_attr_min_microvolts, i32 0, i32 0)
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load %struct.attribute*, %struct.attribute** %6, align 8
  %168 = icmp eq %struct.attribute* %167, getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @dev_attr_max_microvolts, i32 0, i32 0)
  br i1 %168, label %169, label %184

169:                                              ; preds = %166, %163
  %170 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %171 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %170, i32 0, i32 7
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %176 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174, %169
  %180 = load i32, i32* %11, align 4
  br label %182

181:                                              ; preds = %174
  br label %182

182:                                              ; preds = %181, %179
  %183 = phi i32 [ %180, %179 ], [ 0, %181 ]
  store i32 %183, i32* %4, align 4
  br label %251

184:                                              ; preds = %166
  %185 = load %struct.attribute*, %struct.attribute** %6, align 8
  %186 = icmp eq %struct.attribute* %185, getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @dev_attr_min_microamps, i32 0, i32 0)
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = load %struct.attribute*, %struct.attribute** %6, align 8
  %189 = icmp eq %struct.attribute* %188, getelementptr inbounds (%struct.TYPE_37__, %struct.TYPE_37__* @dev_attr_max_microamps, i32 0, i32 0)
  br i1 %189, label %190, label %200

190:                                              ; preds = %187, %184
  %191 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %192 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i32, i32* %11, align 4
  br label %198

197:                                              ; preds = %190
  br label %198

198:                                              ; preds = %197, %195
  %199 = phi i32 [ %196, %195 ], [ 0, %197 ]
  store i32 %199, i32* %4, align 4
  br label %251

200:                                              ; preds = %187
  %201 = load %struct.attribute*, %struct.attribute** %6, align 8
  %202 = icmp eq %struct.attribute* %201, getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @dev_attr_suspend_standby_state, i32 0, i32 0)
  br i1 %202, label %209, label %203

203:                                              ; preds = %200
  %204 = load %struct.attribute*, %struct.attribute** %6, align 8
  %205 = icmp eq %struct.attribute* %204, getelementptr inbounds (%struct.TYPE_43__, %struct.TYPE_43__* @dev_attr_suspend_mem_state, i32 0, i32 0)
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load %struct.attribute*, %struct.attribute** %6, align 8
  %208 = icmp eq %struct.attribute* %207, getelementptr inbounds (%struct.TYPE_46__, %struct.TYPE_46__* @dev_attr_suspend_disk_state, i32 0, i32 0)
  br i1 %208, label %209, label %211

209:                                              ; preds = %206, %203, %200
  %210 = load i32, i32* %11, align 4
  store i32 %210, i32* %4, align 4
  br label %251

211:                                              ; preds = %206
  %212 = load %struct.attribute*, %struct.attribute** %6, align 8
  %213 = icmp eq %struct.attribute* %212, getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @dev_attr_suspend_standby_microvolts, i32 0, i32 0)
  br i1 %213, label %220, label %214

214:                                              ; preds = %211
  %215 = load %struct.attribute*, %struct.attribute** %6, align 8
  %216 = icmp eq %struct.attribute* %215, getelementptr inbounds (%struct.TYPE_45__, %struct.TYPE_45__* @dev_attr_suspend_mem_microvolts, i32 0, i32 0)
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = load %struct.attribute*, %struct.attribute** %6, align 8
  %219 = icmp eq %struct.attribute* %218, getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @dev_attr_suspend_disk_microvolts, i32 0, i32 0)
  br i1 %219, label %220, label %230

220:                                              ; preds = %217, %214, %211
  %221 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %222 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i32, i32* %11, align 4
  br label %228

227:                                              ; preds = %220
  br label %228

228:                                              ; preds = %227, %225
  %229 = phi i32 [ %226, %225 ], [ 0, %227 ]
  store i32 %229, i32* %4, align 4
  br label %251

230:                                              ; preds = %217
  %231 = load %struct.attribute*, %struct.attribute** %6, align 8
  %232 = icmp eq %struct.attribute* %231, getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @dev_attr_suspend_standby_mode, i32 0, i32 0)
  br i1 %232, label %239, label %233

233:                                              ; preds = %230
  %234 = load %struct.attribute*, %struct.attribute** %6, align 8
  %235 = icmp eq %struct.attribute* %234, getelementptr inbounds (%struct.TYPE_44__, %struct.TYPE_44__* @dev_attr_suspend_mem_mode, i32 0, i32 0)
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = load %struct.attribute*, %struct.attribute** %6, align 8
  %238 = icmp eq %struct.attribute* %237, getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dev_attr_suspend_disk_mode, i32 0, i32 0)
  br i1 %238, label %239, label %249

239:                                              ; preds = %236, %233, %230
  %240 = load %struct.regulator_ops*, %struct.regulator_ops** %10, align 8
  %241 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = load i32, i32* %11, align 4
  br label %247

246:                                              ; preds = %239
  br label %247

247:                                              ; preds = %246, %244
  %248 = phi i32 [ %245, %244 ], [ 0, %246 ]
  store i32 %248, i32* %4, align 4
  br label %251

249:                                              ; preds = %236
  %250 = load i32, i32* %11, align 4
  store i32 %250, i32* %4, align 4
  br label %251

251:                                              ; preds = %249, %247, %228, %209, %198, %182, %161, %148, %135, %117, %104, %92, %90, %32
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.regulator_dev* @dev_to_rdev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
