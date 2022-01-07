; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-st.c_st_dwc3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-st.c_st_dwc3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.st_dwc3 = type { %struct.regmap*, %struct.regmap*, i32, i32, %struct.regmap*, %struct.regmap*, %struct.device* }
%struct.regmap = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"reg-glue\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"syscfg-reg\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"glue-logic addr 0x%pK, syscfg-reg offset 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"could not get power controller\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"softreset\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"could not get reset controller\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"dwc3\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to find dwc3 core node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"failed to add dwc3 core\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"failed to find dwc3 core device\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"drd initialisation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_dwc3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_dwc3_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.st_dwc3*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %7, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.st_dwc3* @devm_kzalloc(%struct.device* %17, i32 48, i32 %18)
  store %struct.st_dwc3* %19, %struct.st_dwc3** %4, align 8
  %20 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %21 = icmp ne %struct.st_dwc3* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %196

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %26, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %28, %struct.resource** %5, align 8
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = call %struct.regmap* @devm_ioremap_resource(%struct.device* %29, %struct.resource* %30)
  %32 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %33 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %32, i32 0, i32 4
  store %struct.regmap* %31, %struct.regmap** %33, align 8
  %34 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %35 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %34, i32 0, i32 4
  %36 = load %struct.regmap*, %struct.regmap** %35, align 8
  %37 = call i64 @IS_ERR(%struct.regmap* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %41 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %40, i32 0, i32 4
  %42 = load %struct.regmap*, %struct.regmap** %41, align 8
  %43 = call i32 @PTR_ERR(%struct.regmap* %42)
  store i32 %43, i32* %2, align 4
  br label %196

44:                                               ; preds = %25
  %45 = load %struct.device_node*, %struct.device_node** %7, align 8
  %46 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.regmap* %46, %struct.regmap** %10, align 8
  %47 = load %struct.regmap*, %struct.regmap** %10, align 8
  %48 = call i64 @IS_ERR(%struct.regmap* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.regmap*, %struct.regmap** %10, align 8
  %52 = call i32 @PTR_ERR(%struct.regmap* %51)
  store i32 %52, i32* %2, align 4
  br label %196

53:                                               ; preds = %44
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %56 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %55, i32 0, i32 6
  store %struct.device* %54, %struct.device** %56, align 8
  %57 = load %struct.regmap*, %struct.regmap** %10, align 8
  %58 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %59 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %58, i32 0, i32 5
  store %struct.regmap* %57, %struct.regmap** %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load i32, i32* @IORESOURCE_MEM, align 4
  %62 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %60, i32 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %62, %struct.resource** %5, align 8
  %63 = load %struct.resource*, %struct.resource** %5, align 8
  %64 = icmp ne %struct.resource* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* @ENXIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  br label %192

68:                                               ; preds = %53
  %69 = load %struct.resource*, %struct.resource** %5, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %73 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %77 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %76, i32 0, i32 4
  %78 = load %struct.regmap*, %struct.regmap** %77, align 8
  %79 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %80 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_vdbg(%struct.device* %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), %struct.regmap* %78, i32 %81)
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = call %struct.regmap* @devm_reset_control_get_exclusive(%struct.device* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %85 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %86 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %85, i32 0, i32 0
  store %struct.regmap* %84, %struct.regmap** %86, align 8
  %87 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %88 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %87, i32 0, i32 0
  %89 = load %struct.regmap*, %struct.regmap** %88, align 8
  %90 = call i64 @IS_ERR(%struct.regmap* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %68
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %96 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %97 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %96, i32 0, i32 0
  %98 = load %struct.regmap*, %struct.regmap** %97, align 8
  %99 = call i32 @PTR_ERR(%struct.regmap* %98)
  store i32 %99, i32* %11, align 4
  br label %192

100:                                              ; preds = %68
  %101 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %102 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %101, i32 0, i32 0
  %103 = load %struct.regmap*, %struct.regmap** %102, align 8
  %104 = call i32 @reset_control_deassert(%struct.regmap* %103)
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = call %struct.regmap* @devm_reset_control_get_shared(%struct.device* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %107 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %108 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %107, i32 0, i32 1
  store %struct.regmap* %106, %struct.regmap** %108, align 8
  %109 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %110 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %109, i32 0, i32 1
  %111 = load %struct.regmap*, %struct.regmap** %110, align 8
  %112 = call i64 @IS_ERR(%struct.regmap* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %100
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %118 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %119 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %118, i32 0, i32 1
  %120 = load %struct.regmap*, %struct.regmap** %119, align 8
  %121 = call i32 @PTR_ERR(%struct.regmap* %120)
  store i32 %121, i32* %11, align 4
  br label %187

122:                                              ; preds = %100
  %123 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %124 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %123, i32 0, i32 1
  %125 = load %struct.regmap*, %struct.regmap** %124, align 8
  %126 = call i32 @reset_control_deassert(%struct.regmap* %125)
  %127 = load %struct.device_node*, %struct.device_node** %7, align 8
  %128 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store %struct.device_node* %128, %struct.device_node** %8, align 8
  %129 = load %struct.device_node*, %struct.device_node** %8, align 8
  %130 = icmp ne %struct.device_node* %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %122
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @dev_err(%struct.device* %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %135 = load i32, i32* @ENODEV, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %11, align 4
  br label %179

137:                                              ; preds = %122
  %138 = load %struct.device_node*, %struct.device_node** %7, align 8
  %139 = load %struct.device*, %struct.device** %6, align 8
  %140 = call i32 @of_platform_populate(%struct.device_node* %138, i32* null, i32* null, %struct.device* %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load %struct.device*, %struct.device** %6, align 8
  %145 = call i32 @dev_err(%struct.device* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %179

146:                                              ; preds = %137
  %147 = load %struct.device_node*, %struct.device_node** %8, align 8
  %148 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %147)
  store %struct.platform_device* %148, %struct.platform_device** %9, align 8
  %149 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %150 = icmp ne %struct.platform_device* %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load %struct.device*, %struct.device** %6, align 8
  %153 = call i32 @dev_err(%struct.device* %152, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %11, align 4
  br label %179

156:                                              ; preds = %146
  %157 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = call i32 @usb_get_dr_mode(%struct.device* %158)
  %160 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %161 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.device_node*, %struct.device_node** %8, align 8
  %163 = call i32 @of_node_put(%struct.device_node* %162)
  %164 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %165 = call i32 @of_dev_put(%struct.platform_device* %164)
  %166 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %167 = call i32 @st_dwc3_drd_init(%struct.st_dwc3* %166)
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %156
  %171 = load %struct.device*, %struct.device** %6, align 8
  %172 = call i32 @dev_err(%struct.device* %171, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %182

173:                                              ; preds = %156
  %174 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %175 = call i32 @st_dwc3_init(%struct.st_dwc3* %174)
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %178 = call i32 @platform_set_drvdata(%struct.platform_device* %176, %struct.st_dwc3* %177)
  store i32 0, i32* %2, align 4
  br label %196

179:                                              ; preds = %151, %143, %131
  %180 = load %struct.device_node*, %struct.device_node** %8, align 8
  %181 = call i32 @of_node_put(%struct.device_node* %180)
  br label %182

182:                                              ; preds = %179, %170
  %183 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %184 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %183, i32 0, i32 1
  %185 = load %struct.regmap*, %struct.regmap** %184, align 8
  %186 = call i32 @reset_control_assert(%struct.regmap* %185)
  br label %187

187:                                              ; preds = %182, %114
  %188 = load %struct.st_dwc3*, %struct.st_dwc3** %4, align 8
  %189 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %188, i32 0, i32 0
  %190 = load %struct.regmap*, %struct.regmap** %189, align 8
  %191 = call i32 @reset_control_assert(%struct.regmap* %190)
  br label %192

192:                                              ; preds = %187, %92, %65
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = call i32 @platform_device_put(%struct.platform_device* %193)
  %195 = load i32, i32* %11, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %192, %173, %50, %39, %22
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.st_dwc3* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.regmap* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_vdbg(%struct.device*, i8*, %struct.regmap*, i32) #1

declare dso_local %struct.regmap* @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @reset_control_deassert(%struct.regmap*) #1

declare dso_local %struct.regmap* @devm_reset_control_get_shared(%struct.device*, i8*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32*, i32*, %struct.device*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @usb_get_dr_mode(%struct.device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_dev_put(%struct.platform_device*) #1

declare dso_local i32 @st_dwc3_drd_init(%struct.st_dwc3*) #1

declare dso_local i32 @st_dwc3_init(%struct.st_dwc3*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.st_dwc3*) #1

declare dso_local i32 @reset_control_assert(%struct.regmap*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
