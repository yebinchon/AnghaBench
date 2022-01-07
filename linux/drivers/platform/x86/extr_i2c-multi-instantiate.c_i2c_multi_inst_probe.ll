; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_i2c-multi-instantiate.c_i2c_multi_inst_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_i2c-multi-instantiate.c_i2c_multi_inst_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_multi_inst_data = type { i32, i32* }
%struct.acpi_device_id = type { i64 }
%struct.i2c_inst_data = type { i8*, i32, i32 }
%struct.i2c_board_info = type { i8*, i32, i32 }
%struct.acpi_device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Error ACPI match data is missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@clients = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-%s.%d\00", align 1
@IRQ_RESOURCE_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Error requesting irq at index %d: %d\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Error creating i2c-client, idx %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Error finding driver, idx %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_multi_inst_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_multi_inst_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i2c_multi_inst_data*, align 8
  %5 = alloca %struct.acpi_device_id*, align 8
  %6 = alloca %struct.i2c_inst_data*, align 8
  %7 = alloca %struct.i2c_board_info, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.acpi_device*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = bitcast %struct.i2c_board_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = call %struct.acpi_device_id* @acpi_match_device(i32 %20, %struct.device* %21)
  store %struct.acpi_device_id* %22, %struct.acpi_device_id** %5, align 8
  %23 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %24 = icmp ne %struct.acpi_device_id* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %8, align 8
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %232

30:                                               ; preds = %1
  %31 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.i2c_inst_data*
  store %struct.i2c_inst_data* %34, %struct.i2c_inst_data** %6, align 8
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %35)
  store %struct.acpi_device* %36, %struct.acpi_device** %9, align 8
  %37 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  %38 = call i32 @i2c_multi_inst_count_resources(%struct.acpi_device* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %2, align 4
  br label %232

43:                                               ; preds = %30
  %44 = load %struct.device*, %struct.device** %8, align 8
  %45 = load %struct.i2c_multi_inst_data*, %struct.i2c_multi_inst_data** %4, align 8
  %46 = load i32, i32* @clients, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @struct_size(%struct.i2c_multi_inst_data* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.i2c_multi_inst_data* @devm_kmalloc(%struct.device* %44, i32 %48, i32 %49)
  store %struct.i2c_multi_inst_data* %50, %struct.i2c_multi_inst_data** %4, align 8
  %51 = load %struct.i2c_multi_inst_data*, %struct.i2c_multi_inst_data** %4, align 8
  %52 = icmp ne %struct.i2c_multi_inst_data* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %232

56:                                               ; preds = %43
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.i2c_multi_inst_data*, %struct.i2c_multi_inst_data** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_multi_inst_data, %struct.i2c_multi_inst_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %197, %56
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.i2c_multi_inst_data*, %struct.i2c_multi_inst_data** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_multi_inst_data, %struct.i2c_multi_inst_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.i2c_inst_data*, %struct.i2c_inst_data** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %67, i64 %69
  %71 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br label %74

74:                                               ; preds = %66, %60
  %75 = phi i1 [ false, %60 ], [ %73, %66 ]
  br i1 %75, label %76, label %200

76:                                               ; preds = %74
  %77 = call i32 @memset(%struct.i2c_board_info* %7, i32 0, i32 16)
  %78 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.i2c_inst_data*, %struct.i2c_inst_data** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %80, i64 %82
  %84 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @I2C_NAME_SIZE, align 4
  %87 = call i32 @strlcpy(i32 %79, i8* %85, i32 %86)
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %89 = load %struct.device*, %struct.device** %8, align 8
  %90 = call i8* @dev_name(%struct.device* %89)
  %91 = load %struct.i2c_inst_data*, %struct.i2c_inst_data** %6, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %91, i64 %93
  %95 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @snprintf(i8* %88, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %90, i8* %96, i32 %97)
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %100 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 0
  store i8* %99, i8** %100, align 8
  %101 = load %struct.i2c_inst_data*, %struct.i2c_inst_data** %6, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %101, i64 %103
  %105 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IRQ_RESOURCE_TYPE, align 4
  %108 = and i32 %106, %107
  switch i32 %108, label %157 [
    i32 128, label %109
    i32 129, label %133
  ]

109:                                              ; preds = %76
  %110 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  %111 = load %struct.i2c_inst_data*, %struct.i2c_inst_data** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %111, i64 %113
  %115 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @acpi_dev_gpio_irq_get(%struct.acpi_device* %110, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %109
  %121 = load %struct.device*, %struct.device** %8, align 8
  %122 = load %struct.i2c_inst_data*, %struct.i2c_inst_data** %6, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %122, i64 %124
  %126 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %128)
  br label %216

130:                                              ; preds = %109
  %131 = load i32, i32* %12, align 4
  %132 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 1
  store i32 %131, i32* %132, align 8
  br label %159

133:                                              ; preds = %76
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = load %struct.i2c_inst_data*, %struct.i2c_inst_data** %6, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %135, i64 %137
  %139 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @platform_get_irq(%struct.platform_device* %134, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %133
  %145 = load %struct.device*, %struct.device** %8, align 8
  %146 = load %struct.i2c_inst_data*, %struct.i2c_inst_data** %6, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %146, i64 %148
  %150 = getelementptr inbounds %struct.i2c_inst_data, %struct.i2c_inst_data* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @dev_dbg(%struct.device* %145, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32 %152)
  br label %216

154:                                              ; preds = %133
  %155 = load i32, i32* %12, align 4
  %156 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 1
  store i32 %155, i32* %156, align 8
  br label %159

157:                                              ; preds = %76
  %158 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 1
  store i32 0, i32* %158, align 8
  br label %159

159:                                              ; preds = %157, %154, %130
  %160 = load %struct.device*, %struct.device** %8, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @i2c_acpi_new_device(%struct.device* %160, i32 %161, %struct.i2c_board_info* %7)
  %163 = load %struct.i2c_multi_inst_data*, %struct.i2c_multi_inst_data** %4, align 8
  %164 = getelementptr inbounds %struct.i2c_multi_inst_data, %struct.i2c_multi_inst_data* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %162, i32* %168, align 4
  %169 = load %struct.i2c_multi_inst_data*, %struct.i2c_multi_inst_data** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_multi_inst_data, %struct.i2c_multi_inst_data* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @IS_ERR(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %159
  %179 = load %struct.i2c_multi_inst_data*, %struct.i2c_multi_inst_data** %4, align 8
  %180 = getelementptr inbounds %struct.i2c_multi_inst_data, %struct.i2c_multi_inst_data* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @PTR_ERR(i32 %185)
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @EPROBE_DEFER, align 4
  %189 = sub nsw i32 0, %188
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %178
  %192 = load %struct.device*, %struct.device** %8, align 8
  %193 = load i32, i32* %11, align 4
  %194 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %192, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %191, %178
  br label %216

196:                                              ; preds = %159
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %11, align 4
  br label %60

200:                                              ; preds = %74
  %201 = load i32, i32* %11, align 4
  %202 = load %struct.i2c_multi_inst_data*, %struct.i2c_multi_inst_data** %4, align 8
  %203 = getelementptr inbounds %struct.i2c_multi_inst_data, %struct.i2c_multi_inst_data* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %200
  %207 = load %struct.device*, %struct.device** %8, align 8
  %208 = load i32, i32* %11, align 4
  %209 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %207, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* @ENODEV, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %12, align 4
  br label %216

212:                                              ; preds = %200
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = load %struct.i2c_multi_inst_data*, %struct.i2c_multi_inst_data** %4, align 8
  %215 = call i32 @platform_set_drvdata(%struct.platform_device* %213, %struct.i2c_multi_inst_data* %214)
  store i32 0, i32* %2, align 4
  br label %232

216:                                              ; preds = %206, %195, %144, %120
  br label %217

217:                                              ; preds = %221, %216
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %11, align 4
  %220 = icmp sge i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %217
  %222 = load %struct.i2c_multi_inst_data*, %struct.i2c_multi_inst_data** %4, align 8
  %223 = getelementptr inbounds %struct.i2c_multi_inst_data, %struct.i2c_multi_inst_data* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @i2c_unregister_device(i32 %228)
  br label %217

230:                                              ; preds = %217
  %231 = load i32, i32* %12, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %230, %212, %53, %41, %25
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.device*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #2

declare dso_local i32 @i2c_multi_inst_count_resources(%struct.acpi_device*) #2

declare dso_local %struct.i2c_multi_inst_data* @devm_kmalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @struct_size(%struct.i2c_multi_inst_data*, i32, i32) #2

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #2

declare dso_local i8* @dev_name(%struct.device*) #2

declare dso_local i32 @acpi_dev_gpio_irq_get(%struct.acpi_device*, i32) #2

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #2

declare dso_local i32 @i2c_acpi_new_device(%struct.device*, i32, %struct.i2c_board_info*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_multi_inst_data*) #2

declare dso_local i32 @i2c_unregister_device(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
