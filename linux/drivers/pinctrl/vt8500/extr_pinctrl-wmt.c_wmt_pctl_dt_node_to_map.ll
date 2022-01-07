; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_pctl_dt_node_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_pctl_dt_node_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { i32 }
%struct.property = type { i32 }
%struct.wmt_pinctrl_data = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"wm,pins\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"missing wmt,pins property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"wm,function\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"wm,pull\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"neither wm,function nor wm,pull specified\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"wm,function must have 1 or %d entries\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"wm,pull must have 1 or %d entries\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"invalid wm,pins value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*)* @wmt_pctl_dt_node_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_pctl_dt_node_to_map(%struct.pinctrl_dev* %0, %struct.device_node* %1, %struct.pinctrl_map** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pinctrl_map**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pinctrl_map*, align 8
  %11 = alloca %struct.pinctrl_map*, align 8
  %12 = alloca %struct.property*, align 8
  %13 = alloca %struct.property*, align 8
  %14 = alloca %struct.property*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.wmt_pinctrl_data*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.pinctrl_map** %2, %struct.pinctrl_map*** %8, align 8
  store i32* %3, i32** %9, align 8
  %25 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %26 = call %struct.wmt_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %25)
  store %struct.wmt_pinctrl_data* %26, %struct.wmt_pinctrl_data** %24, align 8
  %27 = load %struct.device_node*, %struct.device_node** %7, align 8
  %28 = call %struct.property* @of_find_property(%struct.device_node* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %28, %struct.property** %12, align 8
  %29 = load %struct.property*, %struct.property** %12, align 8
  %30 = icmp ne %struct.property* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %4
  %32 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %24, align 8
  %33 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %235

38:                                               ; preds = %4
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = call %struct.property* @of_find_property(%struct.device_node* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store %struct.property* %40, %struct.property** %13, align 8
  %41 = load %struct.device_node*, %struct.device_node** %7, align 8
  %42 = call %struct.property* @of_find_property(%struct.device_node* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store %struct.property* %42, %struct.property** %14, align 8
  %43 = load %struct.property*, %struct.property** %13, align 8
  %44 = icmp ne %struct.property* %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %38
  %46 = load %struct.property*, %struct.property** %14, align 8
  %47 = icmp ne %struct.property* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %24, align 8
  %50 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %235

55:                                               ; preds = %45, %38
  %56 = load %struct.property*, %struct.property** %12, align 8
  %57 = getelementptr inbounds %struct.property, %struct.property* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %59, 4
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %18, align 4
  %62 = load %struct.property*, %struct.property** %13, align 8
  %63 = icmp ne %struct.property* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.property*, %struct.property** %13, align 8
  %66 = getelementptr inbounds %struct.property, %struct.property* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %68, 4
  br label %71

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %64
  %72 = phi i64 [ %69, %64 ], [ 0, %70 ]
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %19, align 4
  %74 = load %struct.property*, %struct.property** %14, align 8
  %75 = icmp ne %struct.property* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.property*, %struct.property** %14, align 8
  %78 = getelementptr inbounds %struct.property, %struct.property* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %80, 4
  br label %83

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %76
  %84 = phi i64 [ %81, %76 ], [ 0, %82 ]
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %24, align 8
  %94 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %18, align 4
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %235

100:                                              ; preds = %88, %83
  %101 = load i32, i32* %20, align 4
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %24, align 8
  %109 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %18, align 4
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %235

115:                                              ; preds = %103, %100
  store i32 0, i32* %21, align 4
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %21, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %20, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %21, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %21, align 4
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %21, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call %struct.pinctrl_map* @kcalloc(i32 %130, i32 4, i32 %131)
  store %struct.pinctrl_map* %132, %struct.pinctrl_map** %10, align 8
  store %struct.pinctrl_map* %132, %struct.pinctrl_map** %11, align 8
  %133 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %134 = icmp ne %struct.pinctrl_map* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %127
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %235

138:                                              ; preds = %127
  store i32 0, i32* %22, align 4
  br label %139

139:                                              ; preds = %217, %138
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %220

143:                                              ; preds = %139
  %144 = load %struct.device_node*, %struct.device_node** %7, align 8
  %145 = load i32, i32* %22, align 4
  %146 = call i32 @of_property_read_u32_index(%struct.device_node* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %145, i32* %15)
  store i32 %146, i32* %23, align 4
  %147 = load i32, i32* %23, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %227

150:                                              ; preds = %143
  %151 = load i32, i32* %15, align 4
  %152 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %24, align 8
  %153 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %154, 32
  %156 = icmp sge i32 %151, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %24, align 8
  %159 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i8*, ...) @dev_err(i32 %160, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %23, align 4
  br label %227

164:                                              ; preds = %150
  %165 = load i32, i32* %19, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %164
  %168 = load %struct.device_node*, %struct.device_node** %7, align 8
  %169 = load i32, i32* %19, align 4
  %170 = icmp sgt i32 %169, 1
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* %22, align 4
  br label %174

173:                                              ; preds = %167
  br label %174

174:                                              ; preds = %173, %171
  %175 = phi i32 [ %172, %171 ], [ 0, %173 ]
  %176 = call i32 @of_property_read_u32_index(%struct.device_node* %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32* %16)
  store i32 %176, i32* %23, align 4
  %177 = load i32, i32* %23, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %227

180:                                              ; preds = %174
  %181 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %24, align 8
  %182 = load %struct.device_node*, %struct.device_node** %7, align 8
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %16, align 4
  %185 = call i32 @wmt_pctl_dt_node_to_map_func(%struct.wmt_pinctrl_data* %181, %struct.device_node* %182, i32 %183, i32 %184, %struct.pinctrl_map** %11)
  store i32 %185, i32* %23, align 4
  %186 = load i32, i32* %23, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  br label %227

189:                                              ; preds = %180
  br label %190

190:                                              ; preds = %189, %164
  %191 = load i32, i32* %20, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %216

193:                                              ; preds = %190
  %194 = load %struct.device_node*, %struct.device_node** %7, align 8
  %195 = load i32, i32* %20, align 4
  %196 = icmp sgt i32 %195, 1
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, i32* %22, align 4
  br label %200

199:                                              ; preds = %193
  br label %200

200:                                              ; preds = %199, %197
  %201 = phi i32 [ %198, %197 ], [ 0, %199 ]
  %202 = call i32 @of_property_read_u32_index(%struct.device_node* %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %201, i32* %17)
  store i32 %202, i32* %23, align 4
  %203 = load i32, i32* %23, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  br label %227

206:                                              ; preds = %200
  %207 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %24, align 8
  %208 = load %struct.device_node*, %struct.device_node** %7, align 8
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %17, align 4
  %211 = call i32 @wmt_pctl_dt_node_to_map_pull(%struct.wmt_pinctrl_data* %207, %struct.device_node* %208, i32 %209, i32 %210, %struct.pinctrl_map** %11)
  store i32 %211, i32* %23, align 4
  %212 = load i32, i32* %23, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  br label %227

215:                                              ; preds = %206
  br label %216

216:                                              ; preds = %215, %190
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %22, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %22, align 4
  br label %139

220:                                              ; preds = %139
  %221 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %222 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  store %struct.pinctrl_map* %221, %struct.pinctrl_map** %222, align 8
  %223 = load i32, i32* %18, align 4
  %224 = load i32, i32* %21, align 4
  %225 = mul nsw i32 %223, %224
  %226 = load i32*, i32** %9, align 8
  store i32 %225, i32* %226, align 4
  store i32 0, i32* %5, align 4
  br label %235

227:                                              ; preds = %214, %205, %188, %179, %157, %149
  %228 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %229 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %230 = load i32, i32* %18, align 4
  %231 = load i32, i32* %21, align 4
  %232 = mul nsw i32 %230, %231
  %233 = call i32 @wmt_pctl_dt_free_map(%struct.pinctrl_dev* %228, %struct.pinctrl_map* %229, i32 %232)
  %234 = load i32, i32* %23, align 4
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %227, %220, %135, %107, %92, %48, %31
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local %struct.wmt_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.pinctrl_map* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @wmt_pctl_dt_node_to_map_func(%struct.wmt_pinctrl_data*, %struct.device_node*, i32, i32, %struct.pinctrl_map**) #1

declare dso_local i32 @wmt_pctl_dt_node_to_map_pull(%struct.wmt_pinctrl_data*, %struct.device_node*, i32, i32, %struct.pinctrl_map**) #1

declare dso_local i32 @wmt_pctl_dt_free_map(%struct.pinctrl_dev*, %struct.pinctrl_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
