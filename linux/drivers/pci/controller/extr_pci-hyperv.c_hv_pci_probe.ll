; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.hv_vmbus_device_id = type { i32 }
%struct.hv_pcibus_device = type { %struct.TYPE_5__, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hv_device* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hv_pcibus_init = common dso_local global i32 0, align 4
@HVPCI_DOM_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to use dom# 0x%hx or other numbers\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"PCI dom# 0x%hx has collision, using 0x%hx\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"hv_pci_%x\00", align 1
@pci_ring_size = common dso_local global i32 0, align 4
@hv_pci_onchannelcallback = common dso_local global i32 0, align 4
@PCI_CONFIG_MMIO_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Unable to map a virtual address for config space\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%pUL\00", align 1
@hv_pcibus_probed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.hv_vmbus_device_id*)* @hv_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_pci_probe(%struct.hv_device* %0, %struct.hv_vmbus_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.hv_vmbus_device_id*, align 8
  %6 = alloca %struct.hv_pcibus_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.hv_vmbus_device_id* %1, %struct.hv_vmbus_device_id** %5, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ugt i64 72, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i64 @get_zeroed_page(i32 %16)
  %18 = inttoptr i64 %17 to %struct.hv_pcibus_device*
  store %struct.hv_pcibus_device* %18, %struct.hv_pcibus_device** %6, align 8
  %19 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %20 = icmp ne %struct.hv_pcibus_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %268

24:                                               ; preds = %2
  %25 = load i32, i32* @hv_pcibus_init, align 4
  %26 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %27 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %29 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %36 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %34, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @hv_get_dom_num(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @HVPCI_DOM_INVALID, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %24
  %48 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %49 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %48, i32 0, i32 2
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %263

54:                                               ; preds = %24
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %60 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %59, i32 0, i32 2
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dev_info(i32* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %67 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %70 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %71 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %70, i32 0, i32 14
  store %struct.hv_device* %69, %struct.hv_device** %71, align 8
  %72 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %73 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %72, i32 0, i32 13
  %74 = call i32 @refcount_set(i32* %73, i32 1)
  %75 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %76 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %75, i32 0, i32 12
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %79 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %78, i32 0, i32 11
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %82 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %81, i32 0, i32 10
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %85 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %84, i32 0, i32 9
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %88 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %87, i32 0, i32 8
  %89 = call i32 @spin_lock_init(i32* %88)
  %90 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %91 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %90, i32 0, i32 7
  %92 = call i32 @spin_lock_init(i32* %91)
  %93 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %94 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %93, i32 0, i32 6
  %95 = call i32 @init_completion(i32* %94)
  %96 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %97 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %99)
  %101 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %102 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %104 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %64
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %10, align 4
  br label %257

110:                                              ; preds = %64
  %111 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %112 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @pci_ring_size, align 4
  %115 = load i32, i32* @pci_ring_size, align 4
  %116 = load i32, i32* @hv_pci_onchannelcallback, align 4
  %117 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %118 = call i32 @vmbus_open(i32 %113, i32 %114, i32 %115, i32* null, i32 0, i32 %116, %struct.hv_pcibus_device* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  br label %252

122:                                              ; preds = %110
  %123 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %124 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %125 = call i32 @hv_set_drvdata(%struct.hv_device* %123, %struct.hv_pcibus_device* %124)
  %126 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %127 = call i32 @hv_pci_protocol_negotiation(%struct.hv_device* %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %247

131:                                              ; preds = %122
  %132 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %133 = call i32 @hv_allocate_config_window(%struct.hv_pcibus_device* %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %247

137:                                              ; preds = %131
  %138 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %139 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %138, i32 0, i32 5
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @PCI_CONFIG_MMIO_LENGTH, align 4
  %144 = call i32 @ioremap(i32 %142, i32 %143)
  %145 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %146 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  %147 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %148 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %137
  %152 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %153 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %152, i32 0, i32 2
  %154 = call i32 (i32*, i8*, ...) @dev_err(i32* %153, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %10, align 4
  br label %244

157:                                              ; preds = %137
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %160 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %159, i32 0, i32 1
  %161 = call i8* @kasprintf(i32 %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_6__* %160)
  store i8* %161, i8** %9, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %157
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %10, align 4
  br label %239

167:                                              ; preds = %157
  %168 = load i8*, i8** %9, align 8
  %169 = call i32 @irq_domain_alloc_named_fwnode(i8* %168)
  %170 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %171 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  store i32 %169, i32* %172, align 4
  %173 = load i8*, i8** %9, align 8
  %174 = call i32 @kfree(i8* %173)
  %175 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %176 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %167
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %10, align 4
  br label %239

183:                                              ; preds = %167
  %184 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %185 = call i32 @hv_pcie_init_irq_domain(%struct.hv_pcibus_device* %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %233

189:                                              ; preds = %183
  %190 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %191 = call i32 @hv_pci_query_relations(%struct.hv_device* %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %228

195:                                              ; preds = %189
  %196 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %197 = call i32 @hv_pci_enter_d0(%struct.hv_device* %196)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %228

201:                                              ; preds = %195
  %202 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %203 = call i32 @hv_pci_allocate_bridge_windows(%struct.hv_pcibus_device* %202)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %228

207:                                              ; preds = %201
  %208 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %209 = call i32 @hv_send_resources_allocated(%struct.hv_device* %208)
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %10, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %225

213:                                              ; preds = %207
  %214 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %215 = call i32 @prepopulate_bars(%struct.hv_pcibus_device* %214)
  %216 = load i32, i32* @hv_pcibus_probed, align 4
  %217 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %218 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 4
  %219 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %220 = call i32 @create_root_hv_pci_bus(%struct.hv_pcibus_device* %219)
  store i32 %220, i32* %10, align 4
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %213
  br label %225

224:                                              ; preds = %213
  store i32 0, i32* %3, align 4
  br label %268

225:                                              ; preds = %223, %212
  %226 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %227 = call i32 @hv_pci_free_bridge_windows(%struct.hv_pcibus_device* %226)
  br label %228

228:                                              ; preds = %225, %206, %200, %194
  %229 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %230 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @irq_domain_remove(i32 %231)
  br label %233

233:                                              ; preds = %228, %188
  %234 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %235 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @irq_domain_free_fwnode(i32 %237)
  br label %239

239:                                              ; preds = %233, %180, %164
  %240 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %241 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @iounmap(i32 %242)
  br label %244

244:                                              ; preds = %239, %151
  %245 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %246 = call i32 @hv_free_config_window(%struct.hv_pcibus_device* %245)
  br label %247

247:                                              ; preds = %244, %136, %130
  %248 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %249 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @vmbus_close(i32 %250)
  br label %252

252:                                              ; preds = %247, %121
  %253 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %254 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @destroy_workqueue(i32 %255)
  br label %257

257:                                              ; preds = %252, %107
  %258 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %259 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @hv_put_dom_num(i32 %261)
  br label %263

263:                                              ; preds = %257, %47
  %264 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %6, align 8
  %265 = ptrtoint %struct.hv_pcibus_device* %264 to i64
  %266 = call i32 @free_page(i64 %265)
  %267 = load i32, i32* %10, align 4
  store i32 %267, i32* %3, align 4
  br label %268

268:                                              ; preds = %263, %224, %21
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @hv_get_dom_num(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32, i32) #1

declare dso_local i32 @vmbus_open(i32, i32, i32, i32*, i32, i32, %struct.hv_pcibus_device*) #1

declare dso_local i32 @hv_set_drvdata(%struct.hv_device*, %struct.hv_pcibus_device*) #1

declare dso_local i32 @hv_pci_protocol_negotiation(%struct.hv_device*) #1

declare dso_local i32 @hv_allocate_config_window(%struct.hv_pcibus_device*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @irq_domain_alloc_named_fwnode(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @hv_pcie_init_irq_domain(%struct.hv_pcibus_device*) #1

declare dso_local i32 @hv_pci_query_relations(%struct.hv_device*) #1

declare dso_local i32 @hv_pci_enter_d0(%struct.hv_device*) #1

declare dso_local i32 @hv_pci_allocate_bridge_windows(%struct.hv_pcibus_device*) #1

declare dso_local i32 @hv_send_resources_allocated(%struct.hv_device*) #1

declare dso_local i32 @prepopulate_bars(%struct.hv_pcibus_device*) #1

declare dso_local i32 @create_root_hv_pci_bus(%struct.hv_pcibus_device*) #1

declare dso_local i32 @hv_pci_free_bridge_windows(%struct.hv_pcibus_device*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

declare dso_local i32 @irq_domain_free_fwnode(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @hv_free_config_window(%struct.hv_pcibus_device*) #1

declare dso_local i32 @vmbus_close(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @hv_put_dom_num(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
