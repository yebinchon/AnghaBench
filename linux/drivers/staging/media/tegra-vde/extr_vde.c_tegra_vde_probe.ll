; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.tegra_vde = type { i32, i64, %struct.TYPE_3__, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, %struct.device*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"sxe\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"bsev\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mbe\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ppe\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mce\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tfe\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ppb\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"vdma\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"frameid\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Could not get VDE clk %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Could not get VDE reset %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Could not get MC reset %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"sync-token\00", align 1
@tegra_vde_isr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"Could not request IRQ %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"iram\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Could not get IRAM pool\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c"Could not reserve IRAM\0A\00", align 1
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"tegra_vde\00", align 1
@tegra_vde_fops = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [32 x i8] c"Failed to initialize IOMMU: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Failed to register misc device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_vde_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_vde_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.tegra_vde*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.tegra_vde* @devm_kzalloc(%struct.device* %11, i32 168, i32 %12)
  store %struct.tegra_vde* %13, %struct.tegra_vde** %6, align 8
  %14 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %15 = icmp ne %struct.tegra_vde* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %447

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.tegra_vde* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %23, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %25, %struct.resource** %5, align 8
  %26 = load %struct.resource*, %struct.resource** %5, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %447

31:                                               ; preds = %19
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = call i8* @devm_ioremap_resource(%struct.device* %32, %struct.resource* %33)
  %35 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %36 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %35, i32 0, i32 19
  store i8* %34, i8** %36, align 8
  %37 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %38 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %37, i32 0, i32 19
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %44 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %43, i32 0, i32 19
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %2, align 4
  br label %447

47:                                               ; preds = %31
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %48, i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %50, %struct.resource** %5, align 8
  %51 = load %struct.resource*, %struct.resource** %5, align 8
  %52 = icmp ne %struct.resource* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %447

56:                                               ; preds = %47
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.resource*, %struct.resource** %5, align 8
  %59 = call i8* @devm_ioremap_resource(%struct.device* %57, %struct.resource* %58)
  %60 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %61 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %60, i32 0, i32 18
  store i8* %59, i8** %61, align 8
  %62 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %63 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %62, i32 0, i32 18
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @IS_ERR(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %69 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %68, i32 0, i32 18
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @PTR_ERR(i8* %70)
  store i32 %71, i32* %2, align 4
  br label %447

72:                                               ; preds = %56
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = load i32, i32* @IORESOURCE_MEM, align 4
  %75 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %73, i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %75, %struct.resource** %5, align 8
  %76 = load %struct.resource*, %struct.resource** %5, align 8
  %77 = icmp ne %struct.resource* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %447

81:                                               ; preds = %72
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load %struct.resource*, %struct.resource** %5, align 8
  %84 = call i8* @devm_ioremap_resource(%struct.device* %82, %struct.resource* %83)
  %85 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %86 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %85, i32 0, i32 17
  store i8* %84, i8** %86, align 8
  %87 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %88 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %87, i32 0, i32 17
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @IS_ERR(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %81
  %93 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %94 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %93, i32 0, i32 17
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %2, align 4
  br label %447

97:                                               ; preds = %81
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load i32, i32* @IORESOURCE_MEM, align 4
  %100 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %98, i32 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %100, %struct.resource** %5, align 8
  %101 = load %struct.resource*, %struct.resource** %5, align 8
  %102 = icmp ne %struct.resource* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %447

106:                                              ; preds = %97
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load %struct.resource*, %struct.resource** %5, align 8
  %109 = call i8* @devm_ioremap_resource(%struct.device* %107, %struct.resource* %108)
  %110 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %111 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %110, i32 0, i32 16
  store i8* %109, i8** %111, align 8
  %112 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %113 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %112, i32 0, i32 16
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @IS_ERR(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %119 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %118, i32 0, i32 16
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @PTR_ERR(i8* %120)
  store i32 %121, i32* %2, align 4
  br label %447

122:                                              ; preds = %106
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = load i32, i32* @IORESOURCE_MEM, align 4
  %125 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %123, i32 %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store %struct.resource* %125, %struct.resource** %5, align 8
  %126 = load %struct.resource*, %struct.resource** %5, align 8
  %127 = icmp ne %struct.resource* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %447

131:                                              ; preds = %122
  %132 = load %struct.device*, %struct.device** %4, align 8
  %133 = load %struct.resource*, %struct.resource** %5, align 8
  %134 = call i8* @devm_ioremap_resource(%struct.device* %132, %struct.resource* %133)
  %135 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %136 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %135, i32 0, i32 15
  store i8* %134, i8** %136, align 8
  %137 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %138 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %137, i32 0, i32 15
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @IS_ERR(i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %131
  %143 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %144 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %143, i32 0, i32 15
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @PTR_ERR(i8* %145)
  store i32 %146, i32* %2, align 4
  br label %447

147:                                              ; preds = %131
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = load i32, i32* @IORESOURCE_MEM, align 4
  %150 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %148, i32 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store %struct.resource* %150, %struct.resource** %5, align 8
  %151 = load %struct.resource*, %struct.resource** %5, align 8
  %152 = icmp ne %struct.resource* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %447

156:                                              ; preds = %147
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = load %struct.resource*, %struct.resource** %5, align 8
  %159 = call i8* @devm_ioremap_resource(%struct.device* %157, %struct.resource* %158)
  %160 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %161 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %160, i32 0, i32 14
  store i8* %159, i8** %161, align 8
  %162 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %163 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %162, i32 0, i32 14
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @IS_ERR(i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %156
  %168 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %169 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %168, i32 0, i32 14
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @PTR_ERR(i8* %170)
  store i32 %171, i32* %2, align 4
  br label %447

172:                                              ; preds = %156
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = load i32, i32* @IORESOURCE_MEM, align 4
  %175 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %173, i32 %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store %struct.resource* %175, %struct.resource** %5, align 8
  %176 = load %struct.resource*, %struct.resource** %5, align 8
  %177 = icmp ne %struct.resource* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %172
  %179 = load i32, i32* @ENODEV, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %2, align 4
  br label %447

181:                                              ; preds = %172
  %182 = load %struct.device*, %struct.device** %4, align 8
  %183 = load %struct.resource*, %struct.resource** %5, align 8
  %184 = call i8* @devm_ioremap_resource(%struct.device* %182, %struct.resource* %183)
  %185 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %186 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %185, i32 0, i32 13
  store i8* %184, i8** %186, align 8
  %187 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %188 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %187, i32 0, i32 13
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @IS_ERR(i8* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %181
  %193 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %194 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %193, i32 0, i32 13
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @PTR_ERR(i8* %195)
  store i32 %196, i32* %2, align 4
  br label %447

197:                                              ; preds = %181
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = load i32, i32* @IORESOURCE_MEM, align 4
  %200 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %198, i32 %199, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store %struct.resource* %200, %struct.resource** %5, align 8
  %201 = load %struct.resource*, %struct.resource** %5, align 8
  %202 = icmp ne %struct.resource* %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %197
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %2, align 4
  br label %447

206:                                              ; preds = %197
  %207 = load %struct.device*, %struct.device** %4, align 8
  %208 = load %struct.resource*, %struct.resource** %5, align 8
  %209 = call i8* @devm_ioremap_resource(%struct.device* %207, %struct.resource* %208)
  %210 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %211 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %210, i32 0, i32 12
  store i8* %209, i8** %211, align 8
  %212 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %213 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %212, i32 0, i32 12
  %214 = load i8*, i8** %213, align 8
  %215 = call i64 @IS_ERR(i8* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %206
  %218 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %219 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %218, i32 0, i32 12
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @PTR_ERR(i8* %220)
  store i32 %221, i32* %2, align 4
  br label %447

222:                                              ; preds = %206
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = load i32, i32* @IORESOURCE_MEM, align 4
  %225 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %223, i32 %224, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store %struct.resource* %225, %struct.resource** %5, align 8
  %226 = load %struct.resource*, %struct.resource** %5, align 8
  %227 = icmp ne %struct.resource* %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %222
  %229 = load i32, i32* @ENODEV, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %2, align 4
  br label %447

231:                                              ; preds = %222
  %232 = load %struct.device*, %struct.device** %4, align 8
  %233 = load %struct.resource*, %struct.resource** %5, align 8
  %234 = call i8* @devm_ioremap_resource(%struct.device* %232, %struct.resource* %233)
  %235 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %236 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %235, i32 0, i32 11
  store i8* %234, i8** %236, align 8
  %237 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %238 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %237, i32 0, i32 11
  %239 = load i8*, i8** %238, align 8
  %240 = call i64 @IS_ERR(i8* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %231
  %243 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %244 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %243, i32 0, i32 11
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @PTR_ERR(i8* %245)
  store i32 %246, i32* %2, align 4
  br label %447

247:                                              ; preds = %231
  %248 = load %struct.device*, %struct.device** %4, align 8
  %249 = call i8* @devm_clk_get(%struct.device* %248, i32* null)
  %250 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %251 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %250, i32 0, i32 10
  store i8* %249, i8** %251, align 8
  %252 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %253 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %252, i32 0, i32 10
  %254 = load i8*, i8** %253, align 8
  %255 = call i64 @IS_ERR(i8* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %247
  %258 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %259 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %258, i32 0, i32 10
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @PTR_ERR(i8* %260)
  store i32 %261, i32* %8, align 4
  %262 = load %struct.device*, %struct.device** %4, align 8
  %263 = load i32, i32* %8, align 4
  %264 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %262, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %263)
  %265 = load i32, i32* %8, align 4
  store i32 %265, i32* %2, align 4
  br label %447

266:                                              ; preds = %247
  %267 = load %struct.device*, %struct.device** %4, align 8
  %268 = call i8* @devm_reset_control_get(%struct.device* %267, i32* null)
  %269 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %270 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %269, i32 0, i32 9
  store i8* %268, i8** %270, align 8
  %271 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %272 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %271, i32 0, i32 9
  %273 = load i8*, i8** %272, align 8
  %274 = call i64 @IS_ERR(i8* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %266
  %277 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %278 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %277, i32 0, i32 9
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @PTR_ERR(i8* %279)
  store i32 %280, i32* %8, align 4
  %281 = load %struct.device*, %struct.device** %4, align 8
  %282 = load i32, i32* %8, align 4
  %283 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %281, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %282)
  %284 = load i32, i32* %8, align 4
  store i32 %284, i32* %2, align 4
  br label %447

285:                                              ; preds = %266
  %286 = load %struct.device*, %struct.device** %4, align 8
  %287 = call i8* @devm_reset_control_get_optional(%struct.device* %286, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %288 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %289 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %288, i32 0, i32 8
  store i8* %287, i8** %289, align 8
  %290 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %291 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %290, i32 0, i32 8
  %292 = load i8*, i8** %291, align 8
  %293 = call i64 @IS_ERR(i8* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %285
  %296 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %297 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %296, i32 0, i32 8
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 @PTR_ERR(i8* %298)
  store i32 %299, i32* %8, align 4
  %300 = load %struct.device*, %struct.device** %4, align 8
  %301 = load i32, i32* %8, align 4
  %302 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %300, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %301)
  %303 = load i32, i32* %8, align 4
  store i32 %303, i32* %2, align 4
  br label %447

304:                                              ; preds = %285
  %305 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %306 = call i32 @platform_get_irq_byname(%struct.platform_device* %305, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  store i32 %306, i32* %7, align 4
  %307 = load i32, i32* %7, align 4
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = load i32, i32* %7, align 4
  store i32 %310, i32* %2, align 4
  br label %447

311:                                              ; preds = %304
  %312 = load %struct.device*, %struct.device** %4, align 8
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* @tegra_vde_isr, align 4
  %315 = load %struct.device*, %struct.device** %4, align 8
  %316 = call i32 @dev_name(%struct.device* %315)
  %317 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %318 = call i32 @devm_request_irq(%struct.device* %312, i32 %313, i32 %314, i32 0, i32 %316, %struct.tegra_vde* %317)
  store i32 %318, i32* %8, align 4
  %319 = load i32, i32* %8, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %311
  %322 = load %struct.device*, %struct.device** %4, align 8
  %323 = load i32, i32* %8, align 4
  %324 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %322, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %323)
  %325 = load i32, i32* %8, align 4
  store i32 %325, i32* %2, align 4
  br label %447

326:                                              ; preds = %311
  %327 = load %struct.device*, %struct.device** %4, align 8
  %328 = getelementptr inbounds %struct.device, %struct.device* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @of_gen_pool_get(i32 %329, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %331 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %332 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %331, i32 0, i32 0
  store i32 %330, i32* %332, align 8
  %333 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %334 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %342, label %337

337:                                              ; preds = %326
  %338 = load %struct.device*, %struct.device** %4, align 8
  %339 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %338, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %340 = load i32, i32* @EPROBE_DEFER, align 4
  %341 = sub nsw i32 0, %340
  store i32 %341, i32* %2, align 4
  br label %447

342:                                              ; preds = %326
  %343 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %344 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %347 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @gen_pool_size(i32 %348)
  %350 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %351 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %350, i32 0, i32 7
  %352 = call i64 @gen_pool_dma_alloc(i32 %345, i32 %349, i32* %351)
  %353 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %354 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %353, i32 0, i32 1
  store i64 %352, i64* %354, align 8
  %355 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %356 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %364, label %359

359:                                              ; preds = %342
  %360 = load %struct.device*, %struct.device** %4, align 8
  %361 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %360, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %362 = load i32, i32* @ENOMEM, align 4
  %363 = sub nsw i32 0, %362
  store i32 %363, i32* %2, align 4
  br label %447

364:                                              ; preds = %342
  %365 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %366 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %365, i32 0, i32 6
  %367 = call i32 @INIT_LIST_HEAD(i32* %366)
  %368 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %369 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %368, i32 0, i32 5
  %370 = call i32 @mutex_init(i32* %369)
  %371 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %372 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %371, i32 0, i32 4
  %373 = call i32 @mutex_init(i32* %372)
  %374 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %375 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %374, i32 0, i32 3
  %376 = call i32 @init_completion(i32* %375)
  %377 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %378 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %379 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i32 0, i32 3
  store i32 %377, i32* %380, align 8
  %381 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %382 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %382, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %383, align 8
  %384 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %385 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 2
  store i32* @tegra_vde_fops, i32** %386, align 8
  %387 = load %struct.device*, %struct.device** %4, align 8
  %388 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %389 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %388, i32 0, i32 2
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 1
  store %struct.device* %387, %struct.device** %390, align 8
  %391 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %392 = call i32 @tegra_vde_iommu_init(%struct.tegra_vde* %391)
  store i32 %392, i32* %8, align 4
  %393 = load i32, i32* %8, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %364
  %396 = load %struct.device*, %struct.device** %4, align 8
  %397 = load i32, i32* %8, align 4
  %398 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %396, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i32 %397)
  br label %434

399:                                              ; preds = %364
  %400 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %401 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %400, i32 0, i32 2
  %402 = call i32 @misc_register(%struct.TYPE_3__* %401)
  store i32 %402, i32* %8, align 4
  %403 = load i32, i32* %8, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %409

405:                                              ; preds = %399
  %406 = load %struct.device*, %struct.device** %4, align 8
  %407 = load i32, i32* %8, align 4
  %408 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %406, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i32 %407)
  br label %431

409:                                              ; preds = %399
  %410 = load %struct.device*, %struct.device** %4, align 8
  %411 = call i32 @pm_runtime_enable(%struct.device* %410)
  %412 = load %struct.device*, %struct.device** %4, align 8
  %413 = call i32 @pm_runtime_use_autosuspend(%struct.device* %412)
  %414 = load %struct.device*, %struct.device** %4, align 8
  %415 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %414, i32 300)
  %416 = load %struct.device*, %struct.device** %4, align 8
  %417 = call i32 @pm_runtime_enabled(%struct.device* %416)
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %426, label %419

419:                                              ; preds = %409
  %420 = load %struct.device*, %struct.device** %4, align 8
  %421 = call i32 @tegra_vde_runtime_resume(%struct.device* %420)
  store i32 %421, i32* %8, align 4
  %422 = load i32, i32* %8, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %419
  br label %427

425:                                              ; preds = %419
  br label %426

426:                                              ; preds = %425, %409
  store i32 0, i32* %2, align 4
  br label %447

427:                                              ; preds = %424
  %428 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %429 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %428, i32 0, i32 2
  %430 = call i32 @misc_deregister(%struct.TYPE_3__* %429)
  br label %431

431:                                              ; preds = %427, %405
  %432 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %433 = call i32 @tegra_vde_iommu_deinit(%struct.tegra_vde* %432)
  br label %434

434:                                              ; preds = %431, %395
  %435 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %436 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %439 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %442 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = call i32 @gen_pool_size(i32 %443)
  %445 = call i32 @gen_pool_free(i32 %437, i64 %440, i32 %444)
  %446 = load i32, i32* %8, align 4
  store i32 %446, i32* %2, align 4
  br label %447

447:                                              ; preds = %434, %426, %359, %337, %321, %309, %295, %276, %257, %242, %228, %217, %203, %192, %178, %167, %153, %142, %128, %117, %103, %92, %78, %67, %53, %42, %28, %16
  %448 = load i32, i32* %2, align 4
  ret i32 %448
}

declare dso_local %struct.tegra_vde* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_vde*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @devm_reset_control_get(%struct.device*, i32*) #1

declare dso_local i8* @devm_reset_control_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.tegra_vde*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @of_gen_pool_get(i32, i8*, i32) #1

declare dso_local i64 @gen_pool_dma_alloc(i32, i32, i32*) #1

declare dso_local i32 @gen_pool_size(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @tegra_vde_iommu_init(%struct.tegra_vde*) #1

declare dso_local i32 @misc_register(%struct.TYPE_3__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @tegra_vde_runtime_resume(%struct.device*) #1

declare dso_local i32 @misc_deregister(%struct.TYPE_3__*) #1

declare dso_local i32 @tegra_vde_iommu_deinit(%struct.tegra_vde*) #1

declare dso_local i32 @gen_pool_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
