; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_as3711_bl.c_as3711_backlight_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_as3711_bl.c_as3711_backlight_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.as3711_bl_pdata = type { i32, i64, i32, i64, i64, i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"backlight node not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"su1-dev\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"su1-max-uA\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"su2-dev\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"su2-max-uA\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"su2-feedback-voltage\00", align 1
@AS3711_SU2_VOLTAGE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"su2-feedback-curr1\00", align 1
@AS3711_SU2_CURR1 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"su2-feedback-curr2\00", align 1
@AS3711_SU2_CURR2 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"su2-feedback-curr3\00", align 1
@AS3711_SU2_CURR3 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"su2-feedback-curr-auto\00", align 1
@AS3711_SU2_CURR_AUTO = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"su2-fbprot-lx-sd4\00", align 1
@AS3711_SU2_LX_SD4 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"su2-fbprot-gpio2\00", align 1
@AS3711_SU2_GPIO2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"su2-fbprot-gpio3\00", align 1
@AS3711_SU2_GPIO3 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"su2-fbprot-gpio4\00", align 1
@AS3711_SU2_GPIO4 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"su2-auto-curr1\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"su2-auto-curr2\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"su2-auto-curr3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @as3711_backlight_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3711_backlight_parse_dt(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.as3711_bl_pdata*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.as3711_bl_pdata* @dev_get_platdata(%struct.device* %9)
  store %struct.as3711_bl_pdata* %10, %struct.as3711_bl_pdata** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.device_node* @of_get_child_by_name(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %228

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %26, %struct.device_node** %6, align 8
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load %struct.device_node*, %struct.device_node** %6, align 8
  %31 = call i32 @of_node_put(%struct.device_node* %30)
  %32 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %33 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %36 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %35, i32 0, i32 1
  %37 = call i32 @of_property_read_u32(%struct.device_node* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %39 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %29
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %224

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %24
  %51 = load %struct.device_node*, %struct.device_node** %5, align 8
  %52 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.device_node* %52, %struct.device_node** %6, align 8
  %53 = load %struct.device_node*, %struct.device_node** %6, align 8
  %54 = icmp ne %struct.device_node* %53, null
  br i1 %54, label %55, label %221

55:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  %56 = load %struct.device_node*, %struct.device_node** %6, align 8
  %57 = call i32 @of_node_put(%struct.device_node* %56)
  %58 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %59 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  %60 = load %struct.device_node*, %struct.device_node** %5, align 8
  %61 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %62 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %61, i32 0, i32 3
  %63 = call i32 @of_property_read_u32(%struct.device_node* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64* %62)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %65 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %55
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %224

75:                                               ; preds = %71
  %76 = load %struct.device_node*, %struct.device_node** %5, align 8
  %77 = call i64 @of_find_property(%struct.device_node* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i64, i64* @AS3711_SU2_VOLTAGE, align 8
  %81 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %82 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %81, i32 0, i32 4
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %79, %75
  %86 = load %struct.device_node*, %struct.device_node** %5, align 8
  %87 = call i64 @of_find_property(%struct.device_node* %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i64, i64* @AS3711_SU2_CURR1, align 8
  %91 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %92 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %89, %85
  %96 = load %struct.device_node*, %struct.device_node** %5, align 8
  %97 = call i64 @of_find_property(%struct.device_node* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* null)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i64, i64* @AS3711_SU2_CURR2, align 8
  %101 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %102 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %99, %95
  %106 = load %struct.device_node*, %struct.device_node** %5, align 8
  %107 = call i64 @of_find_property(%struct.device_node* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32* null)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i64, i64* @AS3711_SU2_CURR3, align 8
  %111 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %112 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %111, i32 0, i32 4
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %109, %105
  %116 = load %struct.device_node*, %struct.device_node** %5, align 8
  %117 = call i64 @of_find_property(%struct.device_node* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32* null)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i64, i64* @AS3711_SU2_CURR_AUTO, align 8
  %121 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %122 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %121, i32 0, i32 4
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %119, %115
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %7, align 4
  br label %224

131:                                              ; preds = %125
  store i32 0, i32* %8, align 4
  %132 = load %struct.device_node*, %struct.device_node** %5, align 8
  %133 = call i64 @of_find_property(%struct.device_node* %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32* null)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load i32, i32* @AS3711_SU2_LX_SD4, align 4
  %137 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %138 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %137, i32 0, i32 8
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %135, %131
  %142 = load %struct.device_node*, %struct.device_node** %5, align 8
  %143 = call i64 @of_find_property(%struct.device_node* %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32* null)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i32, i32* @AS3711_SU2_GPIO2, align 4
  %147 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %148 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %147, i32 0, i32 8
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %145, %141
  %152 = load %struct.device_node*, %struct.device_node** %5, align 8
  %153 = call i64 @of_find_property(%struct.device_node* %152, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32* null)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %151
  %156 = load i32, i32* @AS3711_SU2_GPIO3, align 4
  %157 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %158 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %157, i32 0, i32 8
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %155, %151
  %162 = load %struct.device_node*, %struct.device_node** %5, align 8
  %163 = call i64 @of_find_property(%struct.device_node* %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32* null)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = load i32, i32* @AS3711_SU2_GPIO4, align 4
  %167 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %168 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %167, i32 0, i32 8
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %165, %161
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 1
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %7, align 4
  br label %224

177:                                              ; preds = %171
  store i32 0, i32* %8, align 4
  %178 = load %struct.device_node*, %struct.device_node** %5, align 8
  %179 = call i64 @of_find_property(%struct.device_node* %178, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32* null)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %183 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %182, i32 0, i32 5
  store i32 1, i32* %183, align 8
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %181, %177
  %187 = load %struct.device_node*, %struct.device_node** %5, align 8
  %188 = call i64 @of_find_property(%struct.device_node* %187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32* null)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %192 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %191, i32 0, i32 6
  store i32 1, i32* %192, align 4
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %190, %186
  %196 = load %struct.device_node*, %struct.device_node** %5, align 8
  %197 = call i64 @of_find_property(%struct.device_node* %196, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32* null)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %201 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %200, i32 0, i32 7
  store i32 1, i32* %201, align 8
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %204

204:                                              ; preds = %199, %195
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %210 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @AS3711_SU2_CURR_AUTO, align 8
  %213 = icmp ne i64 %211, %212
  %214 = zext i1 %213 to i32
  %215 = xor i32 %208, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %204
  %218 = load i32, i32* @EINVAL, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %7, align 4
  br label %224

220:                                              ; preds = %204
  br label %221

221:                                              ; preds = %220, %50
  %222 = load %struct.device_node*, %struct.device_node** %5, align 8
  %223 = call i32 @of_node_put(%struct.device_node* %222)
  store i32 0, i32* %2, align 4
  br label %228

224:                                              ; preds = %217, %174, %128, %74, %48
  %225 = load %struct.device_node*, %struct.device_node** %5, align 8
  %226 = call i32 @of_node_put(%struct.device_node* %225)
  %227 = load i32, i32* %7, align 4
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %224, %221, %19
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local %struct.as3711_bl_pdata* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
