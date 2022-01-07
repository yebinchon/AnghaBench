; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_cdns3-pci-wrap.c_cdns3_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_cdns3-pci-wrap.c_cdns3_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32, %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.platform_device_info = type { i64, i32, i32, %struct.resource*, i32, i32, %struct.TYPE_3__* }
%struct.resource = type { i8*, i8*, i8*, i8* }
%struct.cdns3_wrap = type { i64, i32, %struct.resource* }

@PCI_DEV_FN_HOST_DEVICE = common dso_local global i64 0, align 8
@PCI_DEV_FN_OTG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Enabling PCI device has failed %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Initialize Device resources\0A\00", align 1
@PCI_BAR_DEV = common dso_local global i32 0, align 4
@RES_DEV_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@IORESOURCE_MEM = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"USBSS-DEV physical base addr: %pa\0A\00", align 1
@PCI_BAR_HOST = common dso_local global i32 0, align 4
@RES_HOST_ID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"xhci\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"USBSS-XHCI physical base addr: %pa\0A\00", align 1
@RES_IRQ_HOST_ID = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@IORESOURCE_IRQ = common dso_local global i8* null, align 8
@RES_IRQ_PERIPHERAL_ID = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@PCI_BAR_OTG = common dso_local global i32 0, align 4
@RES_DRD_ID = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"USBSS-DRD physical base addr: %pa\0A\00", align 1
@RES_IRQ_OTG_ID = common dso_local global i64 0, align 8
@PLAT_DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cdns3_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.platform_device_info, align 8
  %7 = alloca %struct.cdns3_wrap*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %12 = icmp ne %struct.pci_device_id* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCI_DEV_FN_HOST_DEVICE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCI_DEV_FN_OTG, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %303

28:                                               ; preds = %19, %13
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call %struct.pci_dev* @cdns3_get_second_fun(%struct.pci_dev* %29)
  store %struct.pci_dev* %30, %struct.pci_dev** %9, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %32 = icmp ne %struct.pci_dev* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %303

40:                                               ; preds = %28
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = call i32 @pcim_enable_device(%struct.pci_dev* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @dev_err(%struct.TYPE_3__* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %3, align 4
  br label %303

51:                                               ; preds = %40
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @pci_set_master(%struct.pci_dev* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %55 = call i64 @pci_is_enabled(%struct.pci_dev* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %59 = call %struct.cdns3_wrap* @pci_get_drvdata(%struct.pci_dev* %58)
  store %struct.cdns3_wrap* %59, %struct.cdns3_wrap** %7, align 8
  br label %71

60:                                               ; preds = %51
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.cdns3_wrap* @kzalloc(i32 24, i32 %61)
  store %struct.cdns3_wrap* %62, %struct.cdns3_wrap** %7, align 8
  %63 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %64 = icmp ne %struct.cdns3_wrap* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = call i32 @pci_disable_device(%struct.pci_dev* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %303

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %57
  %72 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %73 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %72, i32 0, i32 2
  %74 = load %struct.resource*, %struct.resource** %73, align 8
  store %struct.resource* %74, %struct.resource** %8, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCI_DEV_FN_HOST_DEVICE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %188

80:                                               ; preds = %71
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 2
  %83 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_dbg(%struct.TYPE_3__* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = load i32, i32* @PCI_BAR_DEV, align 4
  %86 = call i8* @pci_resource_start(%struct.pci_dev* %84, i32 %85)
  %87 = load %struct.resource*, %struct.resource** %8, align 8
  %88 = load i64, i64* @RES_DEV_ID, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %87, i64 %88
  %90 = getelementptr inbounds %struct.resource, %struct.resource* %89, i32 0, i32 2
  store i8* %86, i8** %90, align 8
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = load i32, i32* @PCI_BAR_DEV, align 4
  %93 = call i8* @pci_resource_end(%struct.pci_dev* %91, i32 %92)
  %94 = load %struct.resource*, %struct.resource** %8, align 8
  %95 = load i64, i64* @RES_DEV_ID, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %94, i64 %95
  %97 = getelementptr inbounds %struct.resource, %struct.resource* %96, i32 0, i32 3
  store i8* %93, i8** %97, align 8
  %98 = load %struct.resource*, %struct.resource** %8, align 8
  %99 = load i64, i64* @RES_DEV_ID, align 8
  %100 = getelementptr inbounds %struct.resource, %struct.resource* %98, i64 %99
  %101 = getelementptr inbounds %struct.resource, %struct.resource* %100, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %101, align 8
  %102 = load i8*, i8** @IORESOURCE_MEM, align 8
  %103 = load %struct.resource*, %struct.resource** %8, align 8
  %104 = load i64, i64* @RES_DEV_ID, align 8
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %103, i64 %104
  %106 = getelementptr inbounds %struct.resource, %struct.resource* %105, i32 0, i32 1
  store i8* %102, i8** %106, align 8
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 2
  %109 = load %struct.resource*, %struct.resource** %8, align 8
  %110 = load i64, i64* @RES_DEV_ID, align 8
  %111 = getelementptr inbounds %struct.resource, %struct.resource* %109, i64 %110
  %112 = getelementptr inbounds %struct.resource, %struct.resource* %111, i32 0, i32 2
  %113 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_dbg(%struct.TYPE_3__* %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8** %112)
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = load i32, i32* @PCI_BAR_HOST, align 4
  %116 = call i8* @pci_resource_start(%struct.pci_dev* %114, i32 %115)
  %117 = load %struct.resource*, %struct.resource** %8, align 8
  %118 = load i64, i64* @RES_HOST_ID, align 8
  %119 = getelementptr inbounds %struct.resource, %struct.resource* %117, i64 %118
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %119, i32 0, i32 2
  store i8* %116, i8** %120, align 8
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = load i32, i32* @PCI_BAR_HOST, align 4
  %123 = call i8* @pci_resource_end(%struct.pci_dev* %121, i32 %122)
  %124 = load %struct.resource*, %struct.resource** %8, align 8
  %125 = load i64, i64* @RES_HOST_ID, align 8
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %124, i64 %125
  %127 = getelementptr inbounds %struct.resource, %struct.resource* %126, i32 0, i32 3
  store i8* %123, i8** %127, align 8
  %128 = load %struct.resource*, %struct.resource** %8, align 8
  %129 = load i64, i64* @RES_HOST_ID, align 8
  %130 = getelementptr inbounds %struct.resource, %struct.resource* %128, i64 %129
  %131 = getelementptr inbounds %struct.resource, %struct.resource* %130, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %131, align 8
  %132 = load i8*, i8** @IORESOURCE_MEM, align 8
  %133 = load %struct.resource*, %struct.resource** %8, align 8
  %134 = load i64, i64* @RES_HOST_ID, align 8
  %135 = getelementptr inbounds %struct.resource, %struct.resource* %133, i64 %134
  %136 = getelementptr inbounds %struct.resource, %struct.resource* %135, i32 0, i32 1
  store i8* %132, i8** %136, align 8
  %137 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %138 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %137, i32 0, i32 2
  %139 = load %struct.resource*, %struct.resource** %8, align 8
  %140 = load i64, i64* @RES_HOST_ID, align 8
  %141 = getelementptr inbounds %struct.resource, %struct.resource* %139, i64 %140
  %142 = getelementptr inbounds %struct.resource, %struct.resource* %141, i32 0, i32 2
  %143 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_dbg(%struct.TYPE_3__* %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8** %142)
  %144 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %148 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %147, i32 0, i32 2
  %149 = load %struct.resource*, %struct.resource** %148, align 8
  %150 = load i64, i64* @RES_IRQ_HOST_ID, align 8
  %151 = getelementptr inbounds %struct.resource, %struct.resource* %149, i64 %150
  %152 = getelementptr inbounds %struct.resource, %struct.resource* %151, i32 0, i32 2
  store i8* %146, i8** %152, align 8
  %153 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %154 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %153, i32 0, i32 2
  %155 = load %struct.resource*, %struct.resource** %154, align 8
  %156 = load i64, i64* @RES_IRQ_HOST_ID, align 8
  %157 = getelementptr inbounds %struct.resource, %struct.resource* %155, i64 %156
  %158 = getelementptr inbounds %struct.resource, %struct.resource* %157, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %158, align 8
  %159 = load i8*, i8** @IORESOURCE_IRQ, align 8
  %160 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %161 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %160, i32 0, i32 2
  %162 = load %struct.resource*, %struct.resource** %161, align 8
  %163 = load i64, i64* @RES_IRQ_HOST_ID, align 8
  %164 = getelementptr inbounds %struct.resource, %struct.resource* %162, i64 %163
  %165 = getelementptr inbounds %struct.resource, %struct.resource* %164, i32 0, i32 1
  store i8* %159, i8** %165, align 8
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %170 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %169, i32 0, i32 2
  %171 = load %struct.resource*, %struct.resource** %170, align 8
  %172 = load i64, i64* @RES_IRQ_PERIPHERAL_ID, align 8
  %173 = getelementptr inbounds %struct.resource, %struct.resource* %171, i64 %172
  %174 = getelementptr inbounds %struct.resource, %struct.resource* %173, i32 0, i32 2
  store i8* %168, i8** %174, align 8
  %175 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %176 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %175, i32 0, i32 2
  %177 = load %struct.resource*, %struct.resource** %176, align 8
  %178 = load i64, i64* @RES_IRQ_PERIPHERAL_ID, align 8
  %179 = getelementptr inbounds %struct.resource, %struct.resource* %177, i64 %178
  %180 = getelementptr inbounds %struct.resource, %struct.resource* %179, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %180, align 8
  %181 = load i8*, i8** @IORESOURCE_IRQ, align 8
  %182 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %183 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %182, i32 0, i32 2
  %184 = load %struct.resource*, %struct.resource** %183, align 8
  %185 = load i64, i64* @RES_IRQ_PERIPHERAL_ID, align 8
  %186 = getelementptr inbounds %struct.resource, %struct.resource* %184, i64 %185
  %187 = getelementptr inbounds %struct.resource, %struct.resource* %186, i32 0, i32 1
  store i8* %181, i8** %187, align 8
  br label %241

188:                                              ; preds = %71
  %189 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %190 = load i32, i32* @PCI_BAR_OTG, align 4
  %191 = call i8* @pci_resource_start(%struct.pci_dev* %189, i32 %190)
  %192 = load %struct.resource*, %struct.resource** %8, align 8
  %193 = load i64, i64* @RES_DRD_ID, align 8
  %194 = getelementptr inbounds %struct.resource, %struct.resource* %192, i64 %193
  %195 = getelementptr inbounds %struct.resource, %struct.resource* %194, i32 0, i32 2
  store i8* %191, i8** %195, align 8
  %196 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %197 = load i32, i32* @PCI_BAR_OTG, align 4
  %198 = call i8* @pci_resource_end(%struct.pci_dev* %196, i32 %197)
  %199 = load %struct.resource*, %struct.resource** %8, align 8
  %200 = load i64, i64* @RES_DRD_ID, align 8
  %201 = getelementptr inbounds %struct.resource, %struct.resource* %199, i64 %200
  %202 = getelementptr inbounds %struct.resource, %struct.resource* %201, i32 0, i32 3
  store i8* %198, i8** %202, align 8
  %203 = load %struct.resource*, %struct.resource** %8, align 8
  %204 = load i64, i64* @RES_DRD_ID, align 8
  %205 = getelementptr inbounds %struct.resource, %struct.resource* %203, i64 %204
  %206 = getelementptr inbounds %struct.resource, %struct.resource* %205, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %206, align 8
  %207 = load i8*, i8** @IORESOURCE_MEM, align 8
  %208 = load %struct.resource*, %struct.resource** %8, align 8
  %209 = load i64, i64* @RES_DRD_ID, align 8
  %210 = getelementptr inbounds %struct.resource, %struct.resource* %208, i64 %209
  %211 = getelementptr inbounds %struct.resource, %struct.resource* %210, i32 0, i32 1
  store i8* %207, i8** %211, align 8
  %212 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %213 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %212, i32 0, i32 2
  %214 = load %struct.resource*, %struct.resource** %8, align 8
  %215 = load i64, i64* @RES_DRD_ID, align 8
  %216 = getelementptr inbounds %struct.resource, %struct.resource* %214, i64 %215
  %217 = getelementptr inbounds %struct.resource, %struct.resource* %216, i32 0, i32 2
  %218 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_dbg(%struct.TYPE_3__* %213, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8** %217)
  %219 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %220 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %219, i32 0, i32 3
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %223 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %222, i32 0, i32 2
  %224 = load %struct.resource*, %struct.resource** %223, align 8
  %225 = load i64, i64* @RES_IRQ_OTG_ID, align 8
  %226 = getelementptr inbounds %struct.resource, %struct.resource* %224, i64 %225
  %227 = getelementptr inbounds %struct.resource, %struct.resource* %226, i32 0, i32 2
  store i8* %221, i8** %227, align 8
  %228 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %229 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %228, i32 0, i32 2
  %230 = load %struct.resource*, %struct.resource** %229, align 8
  %231 = load i64, i64* @RES_IRQ_OTG_ID, align 8
  %232 = getelementptr inbounds %struct.resource, %struct.resource* %230, i64 %231
  %233 = getelementptr inbounds %struct.resource, %struct.resource* %232, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %233, align 8
  %234 = load i8*, i8** @IORESOURCE_IRQ, align 8
  %235 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %236 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %235, i32 0, i32 2
  %237 = load %struct.resource*, %struct.resource** %236, align 8
  %238 = load i64, i64* @RES_IRQ_OTG_ID, align 8
  %239 = getelementptr inbounds %struct.resource, %struct.resource* %237, i64 %238
  %240 = getelementptr inbounds %struct.resource, %struct.resource* %239, i32 0, i32 1
  store i8* %234, i8** %240, align 8
  br label %241

241:                                              ; preds = %188, %80
  %242 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %243 = call i64 @pci_is_enabled(%struct.pci_dev* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %298

245:                                              ; preds = %241
  %246 = call i32 @memset(%struct.platform_device_info* %6, i32 0, i32 40)
  %247 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %248 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %6, i32 0, i32 6
  store %struct.TYPE_3__* %248, %struct.TYPE_3__** %249, align 8
  %250 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %251 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %6, i32 0, i32 5
  store i32 %253, i32* %254, align 4
  %255 = load i32, i32* @PLAT_DRIVER_NAME, align 4
  %256 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %6, i32 0, i32 4
  store i32 %255, i32* %256, align 8
  %257 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %258 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %6, i32 0, i32 0
  store i64 %259, i64* %260, align 8
  %261 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %262 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %265 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %264, i32 0, i32 0
  store i64 %263, i64* %265, align 8
  %266 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %267 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %266, i32 0, i32 2
  %268 = load %struct.resource*, %struct.resource** %267, align 8
  %269 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %6, i32 0, i32 3
  store %struct.resource* %268, %struct.resource** %269, align 8
  %270 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %271 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %270, i32 0, i32 2
  %272 = load %struct.resource*, %struct.resource** %271, align 8
  %273 = call i32 @ARRAY_SIZE(%struct.resource* %272)
  %274 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %6, i32 0, i32 2
  store i32 %273, i32* %274, align 4
  %275 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %276 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %6, i32 0, i32 1
  store i32 %277, i32* %278, align 8
  %279 = call i32 @platform_device_register_full(%struct.platform_device_info* %6)
  %280 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %281 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 8
  %282 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %283 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call i64 @IS_ERR(i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %245
  %288 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %289 = call i32 @pci_disable_device(%struct.pci_dev* %288)
  %290 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %291 = getelementptr inbounds %struct.cdns3_wrap, %struct.cdns3_wrap* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @PTR_ERR(i32 %292)
  store i32 %293, i32* %10, align 4
  %294 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %295 = call i32 @kfree(%struct.cdns3_wrap* %294)
  %296 = load i32, i32* %10, align 4
  store i32 %296, i32* %3, align 4
  br label %303

297:                                              ; preds = %245
  br label %298

298:                                              ; preds = %297, %241
  %299 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %300 = load %struct.cdns3_wrap*, %struct.cdns3_wrap** %7, align 8
  %301 = call i32 @pci_set_drvdata(%struct.pci_dev* %299, %struct.cdns3_wrap* %300)
  %302 = load i32, i32* %10, align 4
  store i32 %302, i32* %3, align 4
  br label %303

303:                                              ; preds = %298, %287, %65, %45, %37, %25
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

declare dso_local %struct.pci_dev* @cdns3_get_second_fun(%struct.pci_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_is_enabled(%struct.pci_dev*) #1

declare dso_local %struct.cdns3_wrap* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.cdns3_wrap* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i8* @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i32 @memset(%struct.platform_device_info*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i32 @platform_device_register_full(%struct.platform_device_info*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.cdns3_wrap*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.cdns3_wrap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
