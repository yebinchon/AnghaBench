; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd-pci.c_usb_hcd_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd-pci.c_usb_hcd_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64, i32 }
%struct.pci_device_id = type { i64 }
%struct.hc_driver = type { i32, i32 }
%struct.usb_hcd = type { i32, %struct.TYPE_2__, i8*, i8*, i32* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HCD_MASK = common dso_local global i32 0, align 4
@HCD_USB3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Found HC with no IRQ. Check BIOS/PCI %s setup!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HCD_USB11 = common dso_local global i32 0, align 4
@HCD_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"controller already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"error mapping memory\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"no i/o regions available\0A\00", align 1
@CL_EHCI = common dso_local global i64 0, align 8
@companions_rwsem = common dso_local global i32 0, align 4
@ehci_pre_add = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@ehci_post_add = common dso_local global i32 0, align 4
@non_ehci_add = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"init %s fail, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hcd_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.hc_driver*, align 8
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = call i64 (...) @usb_disabled()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %294

16:                                               ; preds = %2
  %17 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %18 = icmp ne %struct.pci_device_id* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %294

22:                                               ; preds = %16
  %23 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.hc_driver*
  store %struct.hc_driver* %26, %struct.hc_driver** %6, align 8
  %27 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %28 = icmp ne %struct.hc_driver* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %294

32:                                               ; preds = %22
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i64 @pci_enable_device(%struct.pci_dev* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %294

39:                                               ; preds = %32
  %40 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %41 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HCD_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @HCD_USB3, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 2
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @pci_name(%struct.pci_dev* %55)
  %57 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %284

60:                                               ; preds = %47
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %39
  %65 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 2
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @pci_name(%struct.pci_dev* %68)
  %70 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %65, i32* %67, i32 %69)
  store %struct.usb_hcd* %70, %struct.usb_hcd** %7, align 8
  %71 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %72 = icmp ne %struct.usb_hcd* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  br label %284

76:                                               ; preds = %64
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = call i64 @usb_hcd_amd_remote_wakeup_quirk(%struct.pci_dev* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %82 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @HCD_USB11, align 4
  %85 = load i32, i32* @HCD_USB3, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %80, %76
  %90 = phi i1 [ false, %76 ], [ %88, %80 ]
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %94 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %96 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @HCD_MEMORY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %152

101:                                              ; preds = %89
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = call i8* @pci_resource_start(%struct.pci_dev* %102, i32 0)
  %104 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %105 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = call i8* @pci_resource_len(%struct.pci_dev* %106, i32 0)
  %108 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %109 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 2
  %112 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %113 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %116 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %119 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @devm_request_mem_region(i32* %111, i8* %114, i8* %117, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %101
  %124 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 2
  %126 = call i32 @dev_dbg(i32* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* @EBUSY, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %8, align 4
  br label %281

129:                                              ; preds = %101
  %130 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %131 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %130, i32 0, i32 2
  %132 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %133 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %136 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = call i32* @devm_ioremap_nocache(i32* %131, i8* %134, i8* %137)
  %139 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %140 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %139, i32 0, i32 4
  store i32* %138, i32** %140, align 8
  %141 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %142 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %129
  %146 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %147 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %146, i32 0, i32 2
  %148 = call i32 @dev_dbg(i32* %147, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i32, i32* @EFAULT, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %8, align 4
  br label %281

151:                                              ; preds = %129
  br label %205

152:                                              ; preds = %89
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %191, %152
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %194

157:                                              ; preds = %153
  %158 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @pci_resource_flags(%struct.pci_dev* %158, i32 %159)
  %161 = load i32, i32* @IORESOURCE_IO, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %157
  br label %191

165:                                              ; preds = %157
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i8* @pci_resource_start(%struct.pci_dev* %166, i32 %167)
  %169 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %170 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %169, i32 0, i32 3
  store i8* %168, i8** %170, align 8
  %171 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %172 = load i32, i32* %10, align 4
  %173 = call i8* @pci_resource_len(%struct.pci_dev* %171, i32 %172)
  %174 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %175 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %174, i32 0, i32 2
  store i8* %173, i8** %175, align 8
  %176 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %177 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %176, i32 0, i32 2
  %178 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %179 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %178, i32 0, i32 3
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %182 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %185 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @devm_request_region(i32* %177, i8* %180, i8* %183, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %165
  br label %194

190:                                              ; preds = %165
  br label %191

191:                                              ; preds = %190, %164
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %10, align 4
  br label %153

194:                                              ; preds = %189, %153
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %200 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %199, i32 0, i32 2
  %201 = call i32 @dev_dbg(i32* %200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %202 = load i32, i32* @EBUSY, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %8, align 4
  br label %281

204:                                              ; preds = %194
  br label %205

205:                                              ; preds = %204, %151
  %206 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %207 = call i32 @pci_set_master(%struct.pci_dev* %206)
  %208 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %209 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @CL_EHCI, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %239

213:                                              ; preds = %205
  %214 = call i32 @down_write(i32* @companions_rwsem)
  %215 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %216 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %215, i32 0, i32 2
  %217 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %218 = call i32 @dev_set_drvdata(i32* %216, %struct.usb_hcd* %217)
  %219 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %220 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %221 = load i32, i32* @ehci_pre_add, align 4
  %222 = call i32 @for_each_companion(%struct.pci_dev* %219, %struct.usb_hcd* %220, i32 %221)
  %223 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* @IRQF_SHARED, align 4
  %226 = call i32 @usb_add_hcd(%struct.usb_hcd* %223, i32 %224, i32 %225)
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %213
  %230 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %231 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %230, i32 0, i32 2
  %232 = call i32 @dev_set_drvdata(i32* %231, %struct.usb_hcd* null)
  br label %233

233:                                              ; preds = %229, %213
  %234 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %235 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %236 = load i32, i32* @ehci_post_add, align 4
  %237 = call i32 @for_each_companion(%struct.pci_dev* %234, %struct.usb_hcd* %235, i32 %236)
  %238 = call i32 @up_write(i32* @companions_rwsem)
  br label %262

239:                                              ; preds = %205
  %240 = call i32 @down_read(i32* @companions_rwsem)
  %241 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %242 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %241, i32 0, i32 2
  %243 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %244 = call i32 @dev_set_drvdata(i32* %242, %struct.usb_hcd* %243)
  %245 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @IRQF_SHARED, align 4
  %248 = call i32 @usb_add_hcd(%struct.usb_hcd* %245, i32 %246, i32 %247)
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %8, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %239
  %252 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %253 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %252, i32 0, i32 2
  %254 = call i32 @dev_set_drvdata(i32* %253, %struct.usb_hcd* null)
  br label %260

255:                                              ; preds = %239
  %256 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %257 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %258 = load i32, i32* @non_ehci_add, align 4
  %259 = call i32 @for_each_companion(%struct.pci_dev* %256, %struct.usb_hcd* %257, i32 %258)
  br label %260

260:                                              ; preds = %255, %251
  %261 = call i32 @up_read(i32* @companions_rwsem)
  br label %262

262:                                              ; preds = %260, %233
  %263 = load i32, i32* %8, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %262
  br label %281

266:                                              ; preds = %262
  %267 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %268 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @device_wakeup_enable(i32 %270)
  %272 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %273 = call i64 @pci_dev_run_wake(%struct.pci_dev* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %266
  %276 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %277 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %276, i32 0, i32 2
  %278 = call i32 @pm_runtime_put_noidle(i32* %277)
  br label %279

279:                                              ; preds = %275, %266
  %280 = load i32, i32* %8, align 4
  store i32 %280, i32* %3, align 4
  br label %294

281:                                              ; preds = %265, %198, %145, %123
  %282 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %283 = call i32 @usb_put_hcd(%struct.usb_hcd* %282)
  br label %284

284:                                              ; preds = %281, %73, %52
  %285 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %286 = call i32 @pci_disable_device(%struct.pci_dev* %285)
  %287 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %288 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %287, i32 0, i32 2
  %289 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %290 = call i32 @pci_name(%struct.pci_dev* %289)
  %291 = load i32, i32* %8, align 4
  %292 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %288, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %290, i32 %291)
  %293 = load i32, i32* %8, align 4
  store i32 %293, i32* %3, align 4
  br label %294

294:                                              ; preds = %284, %279, %36, %29, %19, %13
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, i32*, i32) #1

declare dso_local i64 @usb_hcd_amd_remote_wakeup_quirk(%struct.pci_dev*) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i8* @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @devm_request_mem_region(i32*, i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32* @devm_ioremap_nocache(i32*, i8*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i64 @devm_request_region(i32*, i8*, i8*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.usb_hcd*) #1

declare dso_local i32 @for_each_companion(%struct.pci_dev*, %struct.usb_hcd*, i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i64 @pci_dev_run_wake(%struct.pci_dev*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
