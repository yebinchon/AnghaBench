; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_plat.c_get_ssusb_rscs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_plat.c_get_ssusb_rscs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ssusb_mtk = type { i32, i32, i32, %struct.device*, i8*, i8**, i8*, i8*, i8*, i8*, i8*, %struct.otg_switch_mtk }
%struct.otg_switch_mtk = type { i8*, i8*, i8*, i8*, i8* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"vusb33\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to get vusb33\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"sys_ck\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get sys clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ref_ck\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"mcu_ck\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"dma_ck\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"failed to get phy-%d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"ippc\00", align 1
@USB_DR_MODE_UNKNOWN = common dso_local global i32 0, align 4
@USB_DR_MODE_OTG = common dso_local global i32 0, align 4
@USB_DR_MODE_PERIPHERAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"failed to parse uwk property\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"mediatek,u3p-dis-msk\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"failed to get vbus\0A\00", align 1
@USB_DR_MODE_HOST = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"mediatek,usb3-drd\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"enable-manual-drd\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"couldn't get extcon device\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"dr_mode: %d, is_u3_dr: %d, u3p_dis_msk: %x, drd: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.ssusb_mtk*)* @get_ssusb_rscs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ssusb_rscs(%struct.platform_device* %0, %struct.ssusb_mtk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ssusb_mtk*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.otg_switch_mtk*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.ssusb_mtk* %1, %struct.ssusb_mtk** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %17 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %16, i32 0, i32 11
  store %struct.otg_switch_mtk* %17, %struct.otg_switch_mtk** %7, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = call i8* @devm_regulator_get(%struct.device* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %23 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %22, i32 0, i32 10
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %25 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %24, i32 0, i32 10
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @IS_ERR(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %8, align 8
  %31 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %33 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %32, i32 0, i32 10
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @PTR_ERR(i8* %34)
  store i32 %35, i32* %3, align 4
  br label %310

36:                                               ; preds = %2
  %37 = load %struct.device*, %struct.device** %8, align 8
  %38 = call i8* @devm_clk_get(%struct.device* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %40 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %39, i32 0, i32 9
  store i8* %38, i8** %40, align 8
  %41 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %42 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %41, i32 0, i32 9
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @IS_ERR(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %50 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %49, i32 0, i32 9
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %3, align 4
  br label %310

53:                                               ; preds = %36
  %54 = load %struct.device*, %struct.device** %8, align 8
  %55 = call i8* @devm_clk_get_optional(%struct.device* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %57 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %56, i32 0, i32 8
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %59 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %58, i32 0, i32 8
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %65 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %64, i32 0, i32 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %3, align 4
  br label %310

68:                                               ; preds = %53
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = call i8* @devm_clk_get_optional(%struct.device* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %71 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %72 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %71, i32 0, i32 7
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %74 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %73, i32 0, i32 7
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %80 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %79, i32 0, i32 7
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %3, align 4
  br label %310

83:                                               ; preds = %68
  %84 = load %struct.device*, %struct.device** %8, align 8
  %85 = call i8* @devm_clk_get_optional(%struct.device* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %86 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %87 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %86, i32 0, i32 6
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %89 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %88, i32 0, i32 6
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @IS_ERR(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %83
  %94 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %95 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %94, i32 0, i32 6
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @PTR_ERR(i8* %96)
  store i32 %97, i32* %3, align 4
  br label %310

98:                                               ; preds = %83
  %99 = load %struct.device_node*, %struct.device_node** %6, align 8
  %100 = call i32 @of_count_phandle_with_args(%struct.device_node* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %101 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %102 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %104 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %98
  %108 = load %struct.device*, %struct.device** %8, align 8
  %109 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %110 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call i8** @devm_kcalloc(%struct.device* %108, i32 %111, i32 8, i32 %112)
  %114 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %115 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %114, i32 0, i32 5
  store i8** %113, i8*** %115, align 8
  %116 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %117 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %116, i32 0, i32 5
  %118 = load i8**, i8*** %117, align 8
  %119 = icmp ne i8** %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %107
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %310

123:                                              ; preds = %107
  br label %127

124:                                              ; preds = %98
  %125 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %126 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %123
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %167, %127
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %131 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %170

134:                                              ; preds = %128
  %135 = load %struct.device*, %struct.device** %8, align 8
  %136 = load %struct.device_node*, %struct.device_node** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i8* @devm_of_phy_get_by_index(%struct.device* %135, %struct.device_node* %136, i32 %137)
  %139 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %140 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %139, i32 0, i32 5
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8* %138, i8** %144, align 8
  %145 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %146 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %145, i32 0, i32 5
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @IS_ERR(i8* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %134
  %155 = load %struct.device*, %struct.device** %8, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %156)
  %158 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %159 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %158, i32 0, i32 5
  %160 = load i8**, i8*** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @PTR_ERR(i8* %164)
  store i32 %165, i32* %3, align 4
  br label %310

166:                                              ; preds = %134
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %128

170:                                              ; preds = %128
  %171 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %172 = load i32, i32* @IORESOURCE_MEM, align 4
  %173 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %171, i32 %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store %struct.resource* %173, %struct.resource** %9, align 8
  %174 = load %struct.device*, %struct.device** %8, align 8
  %175 = load %struct.resource*, %struct.resource** %9, align 8
  %176 = call i8* @devm_ioremap_resource(%struct.device* %174, %struct.resource* %175)
  %177 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %178 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %177, i32 0, i32 4
  store i8* %176, i8** %178, align 8
  %179 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %180 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %179, i32 0, i32 4
  %181 = load i8*, i8** %180, align 8
  %182 = call i64 @IS_ERR(i8* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %170
  %185 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %186 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %185, i32 0, i32 4
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @PTR_ERR(i8* %187)
  store i32 %188, i32* %3, align 4
  br label %310

189:                                              ; preds = %170
  %190 = load %struct.device*, %struct.device** %8, align 8
  %191 = call i32 @usb_get_dr_mode(%struct.device* %190)
  %192 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %193 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %195 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @USB_DR_MODE_UNKNOWN, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %189
  %200 = load i32, i32* @USB_DR_MODE_OTG, align 4
  %201 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %202 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %199, %189
  %204 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %205 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @USB_DR_MODE_PERIPHERAL, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  br label %292

210:                                              ; preds = %203
  %211 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %212 = load %struct.device_node*, %struct.device_node** %6, align 8
  %213 = call i32 @ssusb_wakeup_of_property_parse(%struct.ssusb_mtk* %211, %struct.device_node* %212)
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = load %struct.device*, %struct.device** %8, align 8
  %218 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %217, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %219 = load i32, i32* %11, align 4
  store i32 %219, i32* %3, align 4
  br label %310

220:                                              ; preds = %210
  %221 = load %struct.device_node*, %struct.device_node** %6, align 8
  %222 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %223 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %222, i32 0, i32 1
  %224 = call i32 @of_property_read_u32(%struct.device_node* %221, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32* %223)
  %225 = load %struct.device*, %struct.device** %8, align 8
  %226 = call i8* @devm_regulator_get(%struct.device* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %227 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %7, align 8
  %228 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %227, i32 0, i32 4
  store i8* %226, i8** %228, align 8
  %229 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %7, align 8
  %230 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %229, i32 0, i32 4
  %231 = load i8*, i8** %230, align 8
  %232 = call i64 @IS_ERR(i8* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %220
  %235 = load %struct.device*, %struct.device** %8, align 8
  %236 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %235, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %237 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %7, align 8
  %238 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %237, i32 0, i32 4
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @PTR_ERR(i8* %239)
  store i32 %240, i32* %3, align 4
  br label %310

241:                                              ; preds = %220
  %242 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %243 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @USB_DR_MODE_HOST, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  br label %292

248:                                              ; preds = %241
  %249 = load %struct.device_node*, %struct.device_node** %6, align 8
  %250 = call i8* @of_property_read_bool(%struct.device_node* %249, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %251 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %7, align 8
  %252 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %251, i32 0, i32 1
  store i8* %250, i8** %252, align 8
  %253 = load %struct.device_node*, %struct.device_node** %6, align 8
  %254 = call i8* @of_property_read_bool(%struct.device_node* %253, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %255 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %7, align 8
  %256 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %255, i32 0, i32 0
  store i8* %254, i8** %256, align 8
  %257 = load %struct.device_node*, %struct.device_node** %6, align 8
  %258 = call i8* @of_property_read_bool(%struct.device_node* %257, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %259 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %7, align 8
  %260 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %259, i32 0, i32 3
  store i8* %258, i8** %260, align 8
  %261 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %7, align 8
  %262 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %261, i32 0, i32 3
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %291, label %265

265:                                              ; preds = %248
  %266 = load %struct.device_node*, %struct.device_node** %6, align 8
  %267 = call i8* @of_property_read_bool(%struct.device_node* %266, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %291

269:                                              ; preds = %265
  %270 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %271 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %270, i32 0, i32 3
  %272 = load %struct.device*, %struct.device** %271, align 8
  %273 = call i8* @extcon_get_edev_by_phandle(%struct.device* %272, i32 0)
  %274 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %7, align 8
  %275 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %274, i32 0, i32 2
  store i8* %273, i8** %275, align 8
  %276 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %7, align 8
  %277 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %276, i32 0, i32 2
  %278 = load i8*, i8** %277, align 8
  %279 = call i64 @IS_ERR(i8* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %269
  %282 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %283 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %282, i32 0, i32 3
  %284 = load %struct.device*, %struct.device** %283, align 8
  %285 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %284, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %286 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %7, align 8
  %287 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %286, i32 0, i32 2
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @PTR_ERR(i8* %288)
  store i32 %289, i32* %3, align 4
  br label %310

290:                                              ; preds = %269
  br label %291

291:                                              ; preds = %290, %265, %248
  br label %292

292:                                              ; preds = %291, %247, %209
  %293 = load %struct.device*, %struct.device** %8, align 8
  %294 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %295 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %7, align 8
  %298 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %297, i32 0, i32 1
  %299 = load i8*, i8** %298, align 8
  %300 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %5, align 8
  %301 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.otg_switch_mtk*, %struct.otg_switch_mtk** %7, align 8
  %304 = getelementptr inbounds %struct.otg_switch_mtk, %struct.otg_switch_mtk* %303, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  %306 = icmp ne i8* %305, null
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)
  %309 = call i32 @dev_info(%struct.device* %293, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0), i32 %296, i8* %299, i32 %302, i8* %308)
  store i32 0, i32* %3, align 4
  br label %310

310:                                              ; preds = %292, %281, %234, %216, %184, %154, %120, %93, %78, %63, %46, %29
  %311 = load i32, i32* %3, align 4
  ret i32 %311
}

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i8* @devm_clk_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i8*) #1

declare dso_local i8** @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i8* @devm_of_phy_get_by_index(%struct.device*, %struct.device_node*, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @usb_get_dr_mode(%struct.device*) #1

declare dso_local i32 @ssusb_wakeup_of_property_parse(%struct.ssusb_mtk*, %struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i8* @extcon_get_edev_by_phandle(%struct.device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
