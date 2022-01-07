; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_pch.c_pch_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_pch.c_pch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.pch_dev = type { i64, i32, %struct.TYPE_5__*, i32, i32, %struct.pci_dev*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not enable the pci device\0A\00", align 1
@IO_MEM_BAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not locate IO memory address\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"1588_regs\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"could not allocate register memory space\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Could not get virtual address\0A\00", align 1
@ptp_pch_caps = common dso_local global i32 0, align 4
@isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"failed to get irq %d\0A\00", align 1
@DEFAULT_ADDEND = common dso_local global i32 0, align 4
@PCH_TSE_TTIPEND = common dso_local global i32 0, align 4
@pch_param = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"00:00:00:00:00:00\00", align 1
@.str.7 = private unnamed_addr constant [87 x i8] c"Invalid station address parameter\0AModule loaded but station address not set correctly\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"probe failed(ret=0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pch_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pch_dev* @kzalloc(i32 48, i32 %9)
  store %struct.pch_dev* %10, %struct.pch_dev** %8, align 8
  %11 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %12 = icmp eq %struct.pch_dev* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %216

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @pci_enable_device(%struct.pci_dev* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %208

25:                                               ; preds = %16
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load i32, i32* @IO_MEM_BAR, align 4
  %28 = call i64 @pci_resource_start(%struct.pci_dev* %26, i32 %27)
  %29 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %30 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %32 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %25
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %205

41:                                               ; preds = %25
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* @IO_MEM_BAR, align 4
  %44 = call i32 @pci_resource_len(%struct.pci_dev* %42, i32 %43)
  %45 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %46 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %48 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %51 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @request_mem_region(i64 %49, i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %41
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %202

61:                                               ; preds = %41
  %62 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %63 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %66 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_5__* @ioremap(i64 %64, i32 %67)
  %69 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %70 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %69, i32 0, i32 2
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %70, align 8
  %71 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %72 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = icmp ne %struct.TYPE_5__* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %61
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  %78 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %194

81:                                               ; preds = %61
  %82 = load i32, i32* @ptp_pch_caps, align 4
  %83 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %84 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %86 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %85, i32 0, i32 7
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  %89 = call i32 @ptp_clock_register(i32* %86, i32* %88)
  %90 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %91 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %93 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @IS_ERR(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %81
  %98 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %99 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @PTR_ERR(i32 %100)
  store i32 %101, i32* %6, align 4
  br label %187

102:                                              ; preds = %81
  %103 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %104 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %103, i32 0, i32 4
  %105 = call i32 @spin_lock_init(i32* %104)
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IRQF_SHARED, align 4
  %110 = load i32, i32* @KBUILD_MODNAME, align 4
  %111 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %112 = call i32 @request_irq(i32 %108, i32* @isr, i32 %109, i32 %110, %struct.pch_dev* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %102
  %116 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 0
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32*, i8*, ...) @dev_err(i32* %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  br label %182

122:                                              ; preds = %102
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %127 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 8
  %128 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %129 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %130 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %129, i32 0, i32 5
  store %struct.pci_dev* %128, %struct.pci_dev** %130, align 8
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %133 = call i32 @pci_set_drvdata(%struct.pci_dev* %131, %struct.pch_dev* %132)
  %134 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %135 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %134, i32 0, i32 4
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @spin_lock_irqsave(i32* %135, i64 %136)
  %138 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %139 = call i32 @pch_reset(%struct.pch_dev* %138)
  %140 = load i32, i32* @DEFAULT_ADDEND, align 4
  %141 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %142 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %141, i32 0, i32 2
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = call i32 @iowrite32(i32 %140, i32* %144)
  %146 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %147 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %146, i32 0, i32 2
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = call i32 @iowrite32(i32 1, i32* %149)
  %151 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %152 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %151, i32 0, i32 2
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = call i32 @iowrite32(i32 0, i32* %154)
  %156 = load i32, i32* @PCH_TSE_TTIPEND, align 4
  %157 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %158 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %157, i32 0, i32 2
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = call i32 @iowrite32(i32 %156, i32* %160)
  %162 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %163 = call i32 @pch_eth_enable_set(%struct.pch_dev* %162)
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pch_param, i32 0, i32 0), align 4
  %165 = call i64 @strcmp(i32 %164, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %122
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pch_param, i32 0, i32 0), align 4
  %169 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %170 = call i64 @pch_set_station_address(i32 %168, %struct.pci_dev* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %174 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %173, i32 0, i32 0
  %175 = call i32 (i32*, i8*, ...) @dev_err(i32* %174, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.7, i64 0, i64 0))
  br label %176

176:                                              ; preds = %172, %167
  br label %177

177:                                              ; preds = %176, %122
  %178 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %179 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %178, i32 0, i32 4
  %180 = load i64, i64* %7, align 8
  %181 = call i32 @spin_unlock_irqrestore(i32* %179, i64 %180)
  store i32 0, i32* %3, align 4
  br label %216

182:                                              ; preds = %115
  %183 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %184 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @ptp_clock_unregister(i32 %185)
  br label %187

187:                                              ; preds = %182, %97
  %188 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %189 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %188, i32 0, i32 2
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = call i32 @iounmap(%struct.TYPE_5__* %190)
  %192 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %193 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %192, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %193, align 8
  br label %194

194:                                              ; preds = %187, %75
  %195 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %196 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %199 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @release_mem_region(i64 %197, i32 %200)
  br label %202

202:                                              ; preds = %194, %55
  %203 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %204 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %203, i32 0, i32 0
  store i64 0, i64* %204, align 8
  br label %205

205:                                              ; preds = %202, %35
  %206 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %207 = call i32 @pci_disable_device(%struct.pci_dev* %206)
  br label %208

208:                                              ; preds = %205, %21
  %209 = load %struct.pch_dev*, %struct.pch_dev** %8, align 8
  %210 = call i32 @kfree(%struct.pch_dev* %209)
  %211 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %212 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %211, i32 0, i32 0
  %213 = load i32, i32* %6, align 4
  %214 = call i32 (i32*, i8*, ...) @dev_err(i32* %212, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* %6, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %208, %177, %13
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local %struct.pch_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @request_mem_region(i64, i32, i8*) #1

declare dso_local %struct.TYPE_5__* @ioremap(i64, i32) #1

declare dso_local i32 @ptp_clock_register(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.pch_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.pch_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pch_reset(%struct.pch_dev*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pch_eth_enable_set(%struct.pch_dev*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @pch_set_station_address(i32, %struct.pci_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ptp_clock_unregister(i32) #1

declare dso_local i32 @iounmap(%struct.TYPE_5__*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.pch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
