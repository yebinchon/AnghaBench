; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_slim_rproc.c_st_slim_rproc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_slim_rproc.c_st_slim_rproc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_slim_rproc = type { i64*, i8*, i8*, %struct.TYPE_2__*, %struct.rproc* }
%struct.TYPE_2__ = type { i32, i32, i8* }
%struct.rproc = type { i32, %struct.st_slim_rproc* }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"st,slim-rproc\00", align 1
@slim_rproc_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mem_names = common dso_local global i8** null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"devm_ioremap_resource failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"slimcore\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to ioremap slimcore IO\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"peripherals\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to ioremap peripherals IO\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to enable clocks\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"registration of slim remoteproc failed\0A\00", align 1
@ST_SLIM_MAX_CLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.st_slim_rproc* @st_slim_rproc_alloc(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca %struct.st_slim_rproc*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.st_slim_rproc*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.rproc*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.st_slim_rproc* @ERR_PTR(i32 %22)
  store %struct.st_slim_rproc* %23, %struct.st_slim_rproc** %3, align 8
  br label %230

24:                                               ; preds = %2
  %25 = load %struct.device_node*, %struct.device_node** %8, align 8
  %26 = call i32 @of_device_is_compatible(%struct.device_node* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.st_slim_rproc* @ERR_PTR(i32 %30)
  store %struct.st_slim_rproc* %31, %struct.st_slim_rproc** %3, align 8
  br label %230

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.device_node*, %struct.device_node** %8, align 8
  %35 = getelementptr inbounds %struct.device_node, %struct.device_node* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call %struct.rproc* @rproc_alloc(%struct.device* %33, i32 %36, i32* @slim_rproc_ops, i8* %37, i32 40)
  store %struct.rproc* %38, %struct.rproc** %9, align 8
  %39 = load %struct.rproc*, %struct.rproc** %9, align 8
  %40 = icmp ne %struct.rproc* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.st_slim_rproc* @ERR_PTR(i32 %43)
  store %struct.st_slim_rproc* %44, %struct.st_slim_rproc** %3, align 8
  br label %230

45:                                               ; preds = %32
  %46 = load %struct.rproc*, %struct.rproc** %9, align 8
  %47 = getelementptr inbounds %struct.rproc, %struct.rproc* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.rproc*, %struct.rproc** %9, align 8
  %49 = getelementptr inbounds %struct.rproc, %struct.rproc* %48, i32 0, i32 1
  %50 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %49, align 8
  store %struct.st_slim_rproc* %50, %struct.st_slim_rproc** %7, align 8
  %51 = load %struct.rproc*, %struct.rproc** %9, align 8
  %52 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %53 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %52, i32 0, i32 4
  store %struct.rproc* %51, %struct.rproc** %53, align 8
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %121, %45
  %55 = load i32, i32* %12, align 4
  %56 = load i8**, i8*** @mem_names, align 8
  %57 = call i32 @ARRAY_SIZE(i8** %56)
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %124

59:                                               ; preds = %54
  %60 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %61 = load i32, i32* @IORESOURCE_MEM, align 4
  %62 = load i8**, i8*** @mem_names, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %60, i32 %61, i8* %66)
  store %struct.resource* %67, %struct.resource** %10, align 8
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load %struct.resource*, %struct.resource** %10, align 8
  %70 = call i8* @devm_ioremap_resource(%struct.device* %68, %struct.resource* %69)
  %71 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %72 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i8* %70, i8** %77, align 8
  %78 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %79 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %78, i32 0, i32 3
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @IS_ERR(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %59
  %89 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %93 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @PTR_ERR(i8* %99)
  store i32 %100, i32* %11, align 4
  br label %225

101:                                              ; preds = %59
  %102 = load %struct.resource*, %struct.resource** %10, align 8
  %103 = getelementptr inbounds %struct.resource, %struct.resource* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %106 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %105, i32 0, i32 3
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i32 %104, i32* %111, align 4
  %112 = load %struct.resource*, %struct.resource** %10, align 8
  %113 = call i32 @resource_size(%struct.resource* %112)
  %114 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %115 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %114, i32 0, i32 3
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 8
  br label %121

121:                                              ; preds = %101
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %54

124:                                              ; preds = %54
  %125 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %126 = load i32, i32* @IORESOURCE_MEM, align 4
  %127 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %125, i32 %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %127, %struct.resource** %10, align 8
  %128 = load %struct.device*, %struct.device** %6, align 8
  %129 = load %struct.resource*, %struct.resource** %10, align 8
  %130 = call i8* @devm_ioremap_resource(%struct.device* %128, %struct.resource* %129)
  %131 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %132 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  %133 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %134 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @IS_ERR(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %124
  %139 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 @dev_err(%struct.device* %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %142 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %143 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @PTR_ERR(i8* %144)
  store i32 %145, i32* %11, align 4
  br label %225

146:                                              ; preds = %124
  %147 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %148 = load i32, i32* @IORESOURCE_MEM, align 4
  %149 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %147, i32 %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store %struct.resource* %149, %struct.resource** %10, align 8
  %150 = load %struct.device*, %struct.device** %6, align 8
  %151 = load %struct.resource*, %struct.resource** %10, align 8
  %152 = call i8* @devm_ioremap_resource(%struct.device* %150, %struct.resource* %151)
  %153 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %154 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %156 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @IS_ERR(i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %146
  %161 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call i32 @dev_err(%struct.device* %162, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %164 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %165 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @PTR_ERR(i8* %166)
  store i32 %167, i32* %11, align 4
  br label %225

168:                                              ; preds = %146
  %169 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %170 = load %struct.device*, %struct.device** %6, align 8
  %171 = call i32 @slim_clk_get(%struct.st_slim_rproc* %169, %struct.device* %170)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %225

175:                                              ; preds = %168
  %176 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %177 = call i32 @slim_clk_enable(%struct.st_slim_rproc* %176)
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load %struct.device*, %struct.device** %6, align 8
  %182 = call i32 @dev_err(%struct.device* %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %196

183:                                              ; preds = %175
  %184 = load %struct.rproc*, %struct.rproc** %9, align 8
  %185 = call i32 @rproc_add(%struct.rproc* %184)
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load %struct.device*, %struct.device** %6, align 8
  %190 = call i32 @dev_err(%struct.device* %189, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %193

191:                                              ; preds = %183
  %192 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  store %struct.st_slim_rproc* %192, %struct.st_slim_rproc** %3, align 8
  br label %230

193:                                              ; preds = %188
  %194 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %195 = call i32 @slim_clk_disable(%struct.st_slim_rproc* %194)
  br label %196

196:                                              ; preds = %193, %180
  store i32 0, i32* %12, align 4
  br label %197

197:                                              ; preds = %221, %196
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @ST_SLIM_MAX_CLK, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %197
  %202 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %203 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br label %210

210:                                              ; preds = %201, %197
  %211 = phi i1 [ false, %197 ], [ %209, %201 ]
  br i1 %211, label %212, label %224

212:                                              ; preds = %210
  %213 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %7, align 8
  %214 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @clk_put(i64 %219)
  br label %221

221:                                              ; preds = %212
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %12, align 4
  br label %197

224:                                              ; preds = %210
  br label %225

225:                                              ; preds = %224, %174, %160, %138, %88
  %226 = load %struct.rproc*, %struct.rproc** %9, align 8
  %227 = call i32 @rproc_free(%struct.rproc* %226)
  %228 = load i32, i32* %11, align 4
  %229 = call %struct.st_slim_rproc* @ERR_PTR(i32 %228)
  store %struct.st_slim_rproc* %229, %struct.st_slim_rproc** %3, align 8
  br label %230

230:                                              ; preds = %225, %191, %41, %28, %20
  %231 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %3, align 8
  ret %struct.st_slim_rproc* %231
}

declare dso_local %struct.st_slim_rproc* @ERR_PTR(i32) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local %struct.rproc* @rproc_alloc(%struct.device*, i32, i32*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @slim_clk_get(%struct.st_slim_rproc*, %struct.device*) #1

declare dso_local i32 @slim_clk_enable(%struct.st_slim_rproc*) #1

declare dso_local i32 @rproc_add(%struct.rproc*) #1

declare dso_local i32 @slim_clk_disable(%struct.st_slim_rproc*) #1

declare dso_local i32 @clk_put(i64) #1

declare dso_local i32 @rproc_free(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
