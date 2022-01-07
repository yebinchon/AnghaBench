; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_hwmon.c_thermal_add_hwmon_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_hwmon.c_thermal_add_hwmon_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, i32 }
%struct.thermal_hwmon_device = type { i32, i32, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_6__, %struct.thermal_zone_device*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_9__, i32 }
%struct.thermal_hwmon_temp = type { i32, i32, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_6__, %struct.thermal_zone_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THERMAL_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"temp%d_input\00", align 1
@temp_input_show = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"temp%d_crit\00", align 1
@temp_crit_show = common dso_local global i32 0, align 4
@thermal_hwmon_list_lock = common dso_local global i32 0, align 4
@thermal_hwmon_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thermal_add_hwmon_sysfs(%struct.thermal_zone_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca %struct.thermal_hwmon_device*, align 8
  %5 = alloca %struct.thermal_hwmon_temp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  store i32 1, i32* %6, align 4
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %9 = call %struct.thermal_hwmon_temp* @thermal_hwmon_lookup_by_type(%struct.thermal_zone_device* %8)
  %10 = bitcast %struct.thermal_hwmon_temp* %9 to %struct.thermal_hwmon_device*
  store %struct.thermal_hwmon_device* %10, %struct.thermal_hwmon_device** %4, align 8
  %11 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %12 = icmp ne %struct.thermal_hwmon_device* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %60

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.thermal_hwmon_temp* @kzalloc(i32 72, i32 %15)
  %17 = bitcast %struct.thermal_hwmon_temp* %16 to %struct.thermal_hwmon_device*
  store %struct.thermal_hwmon_device* %17, %struct.thermal_hwmon_device** %4, align 8
  %18 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %19 = icmp ne %struct.thermal_hwmon_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %210

23:                                               ; preds = %14
  %24 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %25 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %24, i32 0, i32 3
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %28 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %31 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @THERMAL_NAME_LENGTH, align 4
  %34 = call i32 @strlcpy(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %36 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @strreplace(i32 %37, i8 signext 45, i8 signext 95)
  %39 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %40 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %39, i32 0, i32 0
  %41 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %42 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %45 = bitcast %struct.thermal_hwmon_device* %44 to %struct.thermal_hwmon_temp*
  %46 = call i32 @hwmon_device_register_with_info(i32* %40, i32 %43, %struct.thermal_hwmon_temp* %45, i32* null, i32* null)
  %47 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %48 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %50 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %23
  %55 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %56 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %7, align 4
  br label %201

59:                                               ; preds = %23
  br label %60

60:                                               ; preds = %59, %13
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.thermal_hwmon_temp* @kzalloc(i32 72, i32 %61)
  store %struct.thermal_hwmon_temp* %62, %struct.thermal_hwmon_temp** %5, align 8
  %63 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %64 = icmp ne %struct.thermal_hwmon_temp* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %192

68:                                               ; preds = %60
  %69 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %70 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %71 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %70, i32 0, i32 7
  store %struct.thermal_zone_device* %69, %struct.thermal_zone_device** %71, align 8
  %72 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %73 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %77 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %81 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @snprintf(i32 %79, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %85 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %89 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i32 %87, i32* %92, align 4
  %93 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %94 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i32 292, i32* %97, align 8
  %98 = load i32, i32* @temp_input_show, align 4
  %99 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %100 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 8
  %103 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %104 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %106)
  %108 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %109 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %112 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = call i32 @device_create_file(i32 %110, %struct.TYPE_9__* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %68
  br label %189

118:                                              ; preds = %68
  %119 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %120 = call i64 @thermal_zone_crit_temp_valid(%struct.thermal_zone_device* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %166

122:                                              ; preds = %118
  %123 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %124 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %128 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @snprintf(i32 %126, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %132 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %136 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i32 %134, i32* %139, align 4
  %140 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %141 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i32 292, i32* %144, align 4
  %145 = load i32, i32* @temp_crit_show, align 4
  %146 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %147 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  store i32 %145, i32* %149, align 4
  %150 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %151 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %153)
  %155 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %156 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %159 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = call i32 @device_create_file(i32 %157, %struct.TYPE_9__* %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %122
  br label %181

165:                                              ; preds = %122
  br label %166

166:                                              ; preds = %165, %118
  %167 = call i32 @mutex_lock(i32* @thermal_hwmon_list_lock)
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %172 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %171, i32 0, i32 5
  %173 = call i32 @list_add_tail(i32* %172, i32* @thermal_hwmon_list)
  br label %174

174:                                              ; preds = %170, %166
  %175 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %176 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %175, i32 0, i32 4
  %177 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %178 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %177, i32 0, i32 3
  %179 = call i32 @list_add_tail(i32* %176, i32* %178)
  %180 = call i32 @mutex_unlock(i32* @thermal_hwmon_list_lock)
  store i32 0, i32* %2, align 4
  br label %210

181:                                              ; preds = %164
  %182 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %183 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %186 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = call i32 @device_remove_file(i32 %184, %struct.TYPE_9__* %187)
  br label %189

189:                                              ; preds = %181, %117
  %190 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %5, align 8
  %191 = call i32 @kfree(%struct.thermal_hwmon_temp* %190)
  br label %192

192:                                              ; preds = %189, %65
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %197 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @hwmon_device_unregister(i32 %198)
  br label %200

200:                                              ; preds = %195, %192
  br label %201

201:                                              ; preds = %200, %54
  %202 = load i32, i32* %6, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %4, align 8
  %206 = bitcast %struct.thermal_hwmon_device* %205 to %struct.thermal_hwmon_temp*
  %207 = call i32 @kfree(%struct.thermal_hwmon_temp* %206)
  br label %208

208:                                              ; preds = %204, %201
  %209 = load i32, i32* %7, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %208, %174, %20
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.thermal_hwmon_temp* @thermal_hwmon_lookup_by_type(%struct.thermal_zone_device*) #1

declare dso_local %struct.thermal_hwmon_temp* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @strreplace(i32, i8 signext, i8 signext) #1

declare dso_local i32 @hwmon_device_register_with_info(i32*, i32, %struct.thermal_hwmon_temp*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_8__*) #1

declare dso_local i32 @device_create_file(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @thermal_zone_crit_temp_valid(%struct.thermal_zone_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_remove_file(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.thermal_hwmon_temp*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
