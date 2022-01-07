; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.renesas_usb3 = type { i32, i32, %struct.TYPE_6__, i32*, i32, i32*, i32, i32, i32*, i32, i32, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }
%struct.resource = type { i32 }
%struct.renesas_usb3_priv = type { i32 }
%struct.soc_device_attribute = type { %struct.renesas_usb3_priv* }

@renesas_usb3_quirks_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@renesas_usb3_gadget_ops = common dso_local global i32 0, align 4
@udc_name = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@renesas_usb3_irq = common dso_local global i32 0, align 4
@renesas_usb3_extcon_work = common dso_local global i32 0, align 4
@renesas_usb3_cable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to register extcon\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@dev_attr_role = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@renesas_usb3_role_switch_desc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@renesas_usb3_role_work = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"probed%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" with phy\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @renesas_usb3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_usb3_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.renesas_usb3*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.renesas_usb3_priv*, align 8
  %9 = alloca %struct.soc_device_attribute*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @renesas_usb3_quirks_match, align 4
  %11 = call %struct.soc_device_attribute* @soc_device_match(i32 %10)
  store %struct.soc_device_attribute* %11, %struct.soc_device_attribute** %9, align 8
  %12 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %9, align 8
  %13 = icmp ne %struct.soc_device_attribute* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %9, align 8
  %16 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %15, i32 0, i32 0
  %17 = load %struct.renesas_usb3_priv*, %struct.renesas_usb3_priv** %16, align 8
  store %struct.renesas_usb3_priv* %17, %struct.renesas_usb3_priv** %8, align 8
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.renesas_usb3_priv* @of_device_get_match_data(i32* %20)
  store %struct.renesas_usb3_priv* %21, %struct.renesas_usb3_priv** %8, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @platform_get_irq(%struct.platform_device* %23, i32 0)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %280

29:                                               ; preds = %22
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.renesas_usb3* @devm_kzalloc(i32* %31, i32 88, i32 %32)
  store %struct.renesas_usb3* %33, %struct.renesas_usb3** %4, align 8
  %34 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %35 = icmp ne %struct.renesas_usb3* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %280

39:                                               ; preds = %29
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = call %struct.resource* @platform_get_resource(%struct.platform_device* %40, i32 %41, i32 0)
  store %struct.resource* %42, %struct.resource** %5, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.resource*, %struct.resource** %5, align 8
  %46 = call i32* @devm_ioremap_resource(i32* %44, %struct.resource* %45)
  %47 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %48 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %47, i32 0, i32 11
  store i32* %46, i32** %48, align 8
  %49 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %50 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %49, i32 0, i32 11
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @IS_ERR(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %39
  %55 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %56 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %55, i32 0, i32 11
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @PTR_ERR(i32* %57)
  store i32 %58, i32* %2, align 4
  br label %280

59:                                               ; preds = %39
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %62 = call i32 @platform_set_drvdata(%struct.platform_device* %60, %struct.renesas_usb3* %61)
  %63 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %64 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %63, i32 0, i32 10
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %67 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i32* @renesas_usb3_gadget_ops, i32** %68, align 8
  %69 = load i32, i32* @udc_name, align 4
  %70 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %71 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @USB_SPEED_SUPER, align 4
  %74 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %75 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %78 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.renesas_usb3_priv*, %struct.renesas_usb3_priv** %8, align 8
  %85 = call i32 @renesas_usb3_init_ep(%struct.renesas_usb3* %81, i32* %83, %struct.renesas_usb3_priv* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %59
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %280

90:                                               ; preds = %59
  %91 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.renesas_usb3_priv*, %struct.renesas_usb3_priv** %8, align 8
  %95 = call i32 @renesas_usb3_init_ram(%struct.renesas_usb3* %91, i32* %93, %struct.renesas_usb3_priv* %94)
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @renesas_usb3_irq, align 4
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @dev_name(i32* %101)
  %103 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %104 = call i32 @devm_request_irq(i32* %97, i32 %98, i32 %99, i32 0, i32 %102, %struct.renesas_usb3* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %90
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %280

109:                                              ; preds = %90
  %110 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %111 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %110, i32 0, i32 9
  %112 = load i32, i32* @renesas_usb3_extcon_work, align 4
  %113 = call i32 @INIT_WORK(i32* %111, i32 %112)
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load i32, i32* @renesas_usb3_cable, align 4
  %117 = call i32* @devm_extcon_dev_allocate(i32* %115, i32 %116)
  %118 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %119 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %118, i32 0, i32 8
  store i32* %117, i32** %119, align 8
  %120 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %121 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %120, i32 0, i32 8
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @IS_ERR(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %109
  %126 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %127 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %126, i32 0, i32 8
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @PTR_ERR(i32* %128)
  store i32 %129, i32* %2, align 4
  br label %280

130:                                              ; preds = %109
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %134 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %133, i32 0, i32 8
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @devm_extcon_dev_register(i32* %132, i32* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dev_err(i32* %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %280

144:                                              ; preds = %130
  %145 = load i32, i32* @GFP_KERNEL, align 4
  %146 = call i32 @__renesas_usb3_ep_alloc_request(i32 %145)
  %147 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %148 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %150 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %144
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %280

156:                                              ; preds = %144
  %157 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call i32 @renesas_usb3_dma_alloc_prd(%struct.renesas_usb3* %157, i32* %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  br label %274

164:                                              ; preds = %156
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i32* @devm_phy_optional_get(i32* %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %168 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %169 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %168, i32 0, i32 3
  store i32* %167, i32** %169, align 8
  %170 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %171 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = call i64 @IS_ERR(i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %164
  %176 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %177 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @PTR_ERR(i32* %178)
  store i32 %179, i32* %7, align 4
  br label %269

180:                                              ; preds = %164
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = call i32 @pm_runtime_enable(i32* %182)
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %187 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %186, i32 0, i32 2
  %188 = call i32 @usb_add_gadget_udc(i32* %185, %struct.TYPE_6__* %187)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  br label %269

192:                                              ; preds = %180
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = call i32 @device_create_file(i32* %194, i32* @dev_attr_role)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %265

199:                                              ; preds = %192
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = call i64 @device_property_read_bool(i32* %201, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %206 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %205, i32 0, i32 0
  store i32 1, i32* %206, align 8
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = call i32 @dev_fwnode(i32* %208)
  store i32 %209, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @renesas_usb3_role_switch_desc, i32 0, i32 0), align 4
  br label %210

210:                                              ; preds = %204, %199
  %211 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %212 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %211, i32 0, i32 7
  %213 = load i32, i32* @renesas_usb3_role_work, align 4
  %214 = call i32 @INIT_WORK(i32* %212, i32 %213)
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = call i32* @usb_role_switch_register(i32* %216, %struct.TYPE_5__* @renesas_usb3_role_switch_desc)
  %218 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %219 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %218, i32 0, i32 5
  store i32* %217, i32** %219, align 8
  %220 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %221 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %220, i32 0, i32 5
  %222 = load i32*, i32** %221, align 8
  %223 = call i64 @IS_ERR(i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %243, label %225

225:                                              ; preds = %210
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 0
  %228 = call i32 @usb_of_get_companion_dev(i32* %227)
  %229 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %230 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %229, i32 0, i32 6
  store i32 %228, i32* %230, align 8
  %231 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %232 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %225
  %236 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %237 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %236, i32 0, i32 5
  %238 = load i32*, i32** %237, align 8
  %239 = call i32 @usb_role_switch_unregister(i32* %238)
  %240 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %241 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %240, i32 0, i32 5
  store i32* null, i32** %241, align 8
  br label %242

242:                                              ; preds = %235, %225
  br label %246

243:                                              ; preds = %210
  %244 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %245 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %244, i32 0, i32 5
  store i32* null, i32** %245, align 8
  br label %246

246:                                              ; preds = %243, %242
  %247 = load %struct.renesas_usb3_priv*, %struct.renesas_usb3_priv** %8, align 8
  %248 = getelementptr inbounds %struct.renesas_usb3_priv, %struct.renesas_usb3_priv* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %251 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %250, i32 0, i32 4
  store i32 %249, i32* %251, align 8
  %252 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %253 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %254 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %253, i32 0, i32 0
  %255 = call i32 @renesas_usb3_debugfs_init(%struct.renesas_usb3* %252, i32* %254)
  %256 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %257 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %256, i32 0, i32 0
  %258 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %259 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %258, i32 0, i32 3
  %260 = load i32*, i32** %259, align 8
  %261 = icmp ne i32* %260, null
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %264 = call i32 @dev_info(i32* %257, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %263)
  store i32 0, i32* %2, align 4
  br label %280

265:                                              ; preds = %198
  %266 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %267 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %266, i32 0, i32 2
  %268 = call i32 @usb_del_gadget_udc(%struct.TYPE_6__* %267)
  br label %269

269:                                              ; preds = %265, %191, %175
  %270 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %271 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %272 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %271, i32 0, i32 0
  %273 = call i32 @renesas_usb3_dma_free_prd(%struct.renesas_usb3* %270, i32* %272)
  br label %274

274:                                              ; preds = %269, %163
  %275 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %276 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @__renesas_usb3_ep_free_request(i32 %277)
  %279 = load i32, i32* %7, align 4
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %274, %246, %153, %139, %125, %107, %88, %54, %36, %27
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local %struct.soc_device_attribute* @soc_device_match(i32) #1

declare dso_local %struct.renesas_usb3_priv* @of_device_get_match_data(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.renesas_usb3* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.renesas_usb3*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @renesas_usb3_init_ep(%struct.renesas_usb3*, i32*, %struct.renesas_usb3_priv*) #1

declare dso_local i32 @renesas_usb3_init_ram(%struct.renesas_usb3*, i32*, %struct.renesas_usb3_priv*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.renesas_usb3*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32* @devm_extcon_dev_allocate(i32*, i32) #1

declare dso_local i32 @devm_extcon_dev_register(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @__renesas_usb3_ep_alloc_request(i32) #1

declare dso_local i32 @renesas_usb3_dma_alloc_prd(%struct.renesas_usb3*, i32*) #1

declare dso_local i32* @devm_phy_optional_get(i32*, i8*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @usb_add_gadget_udc(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i64 @device_property_read_bool(i32*, i8*) #1

declare dso_local i32 @dev_fwnode(i32*) #1

declare dso_local i32* @usb_role_switch_register(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @usb_of_get_companion_dev(i32*) #1

declare dso_local i32 @usb_role_switch_unregister(i32*) #1

declare dso_local i32 @renesas_usb3_debugfs_init(%struct.renesas_usb3*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @usb_del_gadget_udc(%struct.TYPE_6__*) #1

declare dso_local i32 @renesas_usb3_dma_free_prd(%struct.renesas_usb3*, i32*) #1

declare dso_local i32 @__renesas_usb3_ep_free_request(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
