; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_linux.c_vbg_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_linux.c_vbg_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32, %struct.TYPE_3__, %struct.TYPE_3__, %struct.device*, %struct.vmmdev_memory* }
%struct.TYPE_3__ = type { i8*, i32*, i32 }
%struct.device = type { i32 }
%struct.vmmdev_memory = type { i32, i32 }
%struct.pci_dev = type { i32, %struct.device }
%struct.pci_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"vboxguest: Error enabling device: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"vboxguest: Error IO-port resource (0) is missing\0A\00", align 1
@DEVICE_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"vboxguest: Error could not claim IO resource\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"vboxguest: Error MMIO resource (1) is missing\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"vboxguest: Error could not claim MMIO resource\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"vboxguest: Error ioremap failed; MMIO addr=%pap size=%pap\0A\00", align 1
@VMMDEV_MEMORY_VERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [87 x i8] c"vboxguest: Bogus VMMDev memory; version=%08x (expected %08x) size=%d (expected <= %d)\0A\00", align 1
@MISC_DYNAMIC_MINOR = common dso_local global i8* null, align 8
@vbg_misc_device_fops = common dso_local global i32 0, align 4
@DEVICE_NAME_USER = common dso_local global i32 0, align 4
@vbg_misc_device_user_fops = common dso_local global i32 0, align 4
@VMMDEV_EVENT_MOUSE_POSITION_CHANGED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"vboxguest: Error creating input device: %d\0A\00", align 1
@vbg_core_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"vboxguest: Error requesting irq: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"vboxguest: Error misc_register %s failed: %d\0A\00", align 1
@vbg_gdev_mutex = common dso_local global i32 0, align 4
@vbg_gdev = common dso_local global %struct.vbg_dev* null, align 8
@.str.10 = private unnamed_addr constant [52 x i8] c"vboxguest: Error more then 1 vbox guest pci device\0A\00", align 1
@dev_attr_host_version = common dso_local global i32 0, align 4
@dev_attr_host_features = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [80 x i8] c"vboxguest: misc device minor %d, IRQ %d, I/O port %x, MMIO at %pap (size %pap)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @vbg_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmmdev_memory*, align 8
  %12 = alloca %struct.vbg_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.vbg_dev* @devm_kzalloc(%struct.device* %16, i32 72, i32 %17)
  store %struct.vbg_dev* %18, %struct.vbg_dev** %12, align 8
  %19 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %20 = icmp ne %struct.vbg_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %247

24:                                               ; preds = %2
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i32 @pci_enable_device(%struct.pci_dev* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %13, align 4
  %31 = call i32 (i8*, ...) @vbg_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %3, align 4
  br label %247

33:                                               ; preds = %24
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @pci_resource_start(%struct.pci_dev* %36, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = call i32 @pci_resource_len(%struct.pci_dev* %38, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42, %33
  %46 = call i32 (i8*, ...) @vbg_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %243

47:                                               ; preds = %42
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @DEVICE_NAME, align 4
  %52 = call i32* @devm_request_region(%struct.device* %48, i32 %49, i32 %50, i32 %51)
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = call i32 (i8*, ...) @vbg_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %243

58:                                               ; preds = %47
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = call i32 @pci_resource_start(%struct.pci_dev* %59, i32 1)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = call i32 @pci_resource_len(%struct.pci_dev* %61, i32 1)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65, %58
  %69 = call i32 (i8*, ...) @vbg_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %243

70:                                               ; preds = %65
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @DEVICE_NAME, align 4
  %75 = call i32* @devm_request_mem_region(%struct.device* %71, i32 %72, i32 %73, i32 %74)
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = call i32 (i8*, ...) @vbg_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %13, align 4
  br label %243

81:                                               ; preds = %70
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call %struct.vmmdev_memory* @devm_ioremap(%struct.device* %82, i32 %83, i32 %84)
  store %struct.vmmdev_memory* %85, %struct.vmmdev_memory** %11, align 8
  %86 = load %struct.vmmdev_memory*, %struct.vmmdev_memory** %11, align 8
  %87 = icmp ne %struct.vmmdev_memory* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = call i32 (i8*, ...) @vbg_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32* %9, i32* %10)
  br label %243

90:                                               ; preds = %81
  %91 = load %struct.vmmdev_memory*, %struct.vmmdev_memory** %11, align 8
  %92 = getelementptr inbounds %struct.vmmdev_memory, %struct.vmmdev_memory* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @VMMDEV_MEMORY_VERSION, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %107, label %96

96:                                               ; preds = %90
  %97 = load %struct.vmmdev_memory*, %struct.vmmdev_memory** %11, align 8
  %98 = getelementptr inbounds %struct.vmmdev_memory, %struct.vmmdev_memory* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 32
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = load %struct.vmmdev_memory*, %struct.vmmdev_memory** %11, align 8
  %103 = getelementptr inbounds %struct.vmmdev_memory, %struct.vmmdev_memory* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %101, %96, %90
  %108 = load %struct.vmmdev_memory*, %struct.vmmdev_memory** %11, align 8
  %109 = getelementptr inbounds %struct.vmmdev_memory, %struct.vmmdev_memory* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @VMMDEV_MEMORY_VERSION, align 4
  %112 = load %struct.vmmdev_memory*, %struct.vmmdev_memory** %11, align 8
  %113 = getelementptr inbounds %struct.vmmdev_memory, %struct.vmmdev_memory* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 (i8*, ...) @vbg_err(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.6, i64 0, i64 0), i32 %110, i32 %111, i32 %114, i32 %115)
  br label %243

117:                                              ; preds = %101
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %120 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.vmmdev_memory*, %struct.vmmdev_memory** %11, align 8
  %122 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %123 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %122, i32 0, i32 4
  store %struct.vmmdev_memory* %121, %struct.vmmdev_memory** %123, align 8
  %124 = load %struct.device*, %struct.device** %6, align 8
  %125 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %126 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %125, i32 0, i32 3
  store %struct.device* %124, %struct.device** %126, align 8
  %127 = load i8*, i8** @MISC_DYNAMIC_MINOR, align 8
  %128 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %129 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i8* %127, i8** %130, align 8
  %131 = load i32, i32* @DEVICE_NAME, align 4
  %132 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %133 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  %135 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %136 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i32* @vbg_misc_device_fops, i32** %137, align 8
  %138 = load i8*, i8** @MISC_DYNAMIC_MINOR, align 8
  %139 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %140 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  store i8* %138, i8** %141, align 8
  %142 = load i32, i32* @DEVICE_NAME_USER, align 4
  %143 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %144 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 8
  %146 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %147 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  store i32* @vbg_misc_device_user_fops, i32** %148, align 8
  %149 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %150 = load i32, i32* @VMMDEV_EVENT_MOUSE_POSITION_CHANGED, align 4
  %151 = call i32 @vbg_core_init(%struct.vbg_dev* %149, i32 %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %117
  br label %243

155:                                              ; preds = %117
  %156 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %157 = call i32 @vbg_create_input_device(%struct.vbg_dev* %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* %13, align 4
  %162 = call i32 (i8*, ...) @vbg_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %161)
  br label %240

163:                                              ; preds = %155
  %164 = load %struct.device*, %struct.device** %6, align 8
  %165 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %166 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @vbg_core_isr, align 4
  %169 = load i32, i32* @IRQF_SHARED, align 4
  %170 = load i32, i32* @DEVICE_NAME, align 4
  %171 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %172 = call i32 @devm_request_irq(%struct.device* %164, i32 %167, i32 %168, i32 %169, i32 %170, %struct.vbg_dev* %171)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = load i32, i32* %13, align 4
  %177 = call i32 (i8*, ...) @vbg_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %176)
  br label %240

178:                                              ; preds = %163
  %179 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %180 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %179, i32 0, i32 1
  %181 = call i32 @misc_register(%struct.TYPE_3__* %180)
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load i32, i32* @DEVICE_NAME, align 4
  %186 = load i32, i32* %13, align 4
  %187 = call i32 (i8*, ...) @vbg_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %185, i32 %186)
  br label %240

188:                                              ; preds = %178
  %189 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %190 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %189, i32 0, i32 2
  %191 = call i32 @misc_register(%struct.TYPE_3__* %190)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i32, i32* @DEVICE_NAME_USER, align 4
  %196 = load i32, i32* %13, align 4
  %197 = call i32 (i8*, ...) @vbg_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %195, i32 %196)
  br label %236

198:                                              ; preds = %188
  %199 = call i32 @mutex_lock(i32* @vbg_gdev_mutex)
  %200 = load %struct.vbg_dev*, %struct.vbg_dev** @vbg_gdev, align 8
  %201 = icmp ne %struct.vbg_dev* %200, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %198
  %203 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  store %struct.vbg_dev* %203, %struct.vbg_dev** @vbg_gdev, align 8
  br label %207

204:                                              ; preds = %198
  %205 = load i32, i32* @EBUSY, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %13, align 4
  br label %207

207:                                              ; preds = %204, %202
  %208 = call i32 @mutex_unlock(i32* @vbg_gdev_mutex)
  %209 = load i32, i32* %13, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = call i32 (i8*, ...) @vbg_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  br label %232

213:                                              ; preds = %207
  %214 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %215 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %216 = call i32 @pci_set_drvdata(%struct.pci_dev* %214, %struct.vbg_dev* %215)
  %217 = load %struct.device*, %struct.device** %6, align 8
  %218 = call i32 @device_create_file(%struct.device* %217, i32* @dev_attr_host_version)
  %219 = load %struct.device*, %struct.device** %6, align 8
  %220 = call i32 @device_create_file(%struct.device* %219, i32* @dev_attr_host_features)
  %221 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %222 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %226 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %229 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @vbg_info(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.11, i64 0, i64 0), i8* %224, i32 %227, i32 %230, i32* %9, i32* %10)
  store i32 0, i32* %3, align 4
  br label %247

232:                                              ; preds = %211
  %233 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %234 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %233, i32 0, i32 2
  %235 = call i32 @misc_deregister(%struct.TYPE_3__* %234)
  br label %236

236:                                              ; preds = %232, %194
  %237 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %238 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %237, i32 0, i32 1
  %239 = call i32 @misc_deregister(%struct.TYPE_3__* %238)
  br label %240

240:                                              ; preds = %236, %184, %175, %160
  %241 = load %struct.vbg_dev*, %struct.vbg_dev** %12, align 8
  %242 = call i32 @vbg_core_exit(%struct.vbg_dev* %241)
  br label %243

243:                                              ; preds = %240, %154, %107, %88, %77, %68, %54, %45
  %244 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %245 = call i32 @pci_disable_device(%struct.pci_dev* %244)
  %246 = load i32, i32* %13, align 4
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %243, %213, %29, %21
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local %struct.vbg_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @vbg_err(i8*, ...) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32* @devm_request_region(%struct.device*, i32, i32, i32) #1

declare dso_local i32* @devm_request_mem_region(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.vmmdev_memory* @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @vbg_core_init(%struct.vbg_dev*, i32) #1

declare dso_local i32 @vbg_create_input_device(%struct.vbg_dev*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.vbg_dev*) #1

declare dso_local i32 @misc_register(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.vbg_dev*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @vbg_info(i8*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @misc_deregister(%struct.TYPE_3__*) #1

declare dso_local i32 @vbg_core_exit(%struct.vbg_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
