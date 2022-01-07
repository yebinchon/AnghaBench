; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_nhi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_nhi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.tb_nhi = type { i32, %struct.pci_dev*, %struct.tb_nhi_ops*, i32, i8*, i8*, i64 }
%struct.tb_nhi_ops = type { i32 (%struct.tb_nhi.0*)* }
%struct.tb_nhi.0 = type opaque
%struct.tb = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"firmware image not valid, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot enable PCI device, aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"thunderbolt\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot obtain PCI resources, aborting\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_HOP_COUNT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"unexpected hop count: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot enable MSI, aborting\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to set DMA mask\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"failed to determine connection manager, aborting\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"NHI initialized, starting thunderbolt\0A\00", align 1
@TB_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @nhi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhi_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.tb_nhi*, align 8
  %7 = alloca %struct.tb*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @nhi_imr_valid(%struct.pci_dev* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_warn(i32* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %233

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @pcim_enable_device(%struct.pci_dev* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %233

28:                                               ; preds = %18
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i32 @pcim_iomap_regions(%struct.pci_dev* %29, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %233

38:                                               ; preds = %28
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.tb_nhi* @devm_kzalloc(i32* %40, i32 56, i32 %41)
  store %struct.tb_nhi* %42, %struct.tb_nhi** %6, align 8
  %43 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %44 = icmp ne %struct.tb_nhi* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %233

48:                                               ; preds = %38
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %51 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %50, i32 0, i32 1
  store %struct.pci_dev* %49, %struct.pci_dev** %51, align 8
  %52 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %53 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.tb_nhi_ops*
  %56 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %57 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %56, i32 0, i32 2
  store %struct.tb_nhi_ops* %55, %struct.tb_nhi_ops** %57, align 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = call i64* @pcim_iomap_table(%struct.pci_dev* %58)
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %63 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %62, i32 0, i32 6
  store i64 %61, i64* %63, align 8
  %64 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %65 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @REG_HOP_COUNT, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @ioread32(i64 %68)
  %70 = and i32 %69, 1023
  %71 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %72 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %74 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 12
  br i1 %76, label %77, label %89

77:                                               ; preds = %48
  %78 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %79 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 32
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %86 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32*, i8*, ...) @dev_warn(i32* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %82, %77, %48
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %93 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @devm_kcalloc(i32* %91, i32 %94, i32 1, i32 %95)
  %97 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %98 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %102 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i8* @devm_kcalloc(i32* %100, i32 %103, i32 1, i32 %104)
  %106 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %107 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %109 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %108, i32 0, i32 5
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %89
  %113 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %114 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %112, %89
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %233

120:                                              ; preds = %112
  %121 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %122 = call i32 @nhi_init_msi(%struct.tb_nhi* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %127 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %126, i32 0, i32 0
  %128 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %233

130:                                              ; preds = %120
  %131 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %132 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %131, i32 0, i32 3
  %133 = call i32 @spin_lock_init(i32* %132)
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %134, i32 0, i32 0
  %136 = call i32 @DMA_BIT_MASK(i32 64)
  %137 = call i32 @dma_set_mask_and_coherent(i32* %135, i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %130
  %141 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 0
  %143 = call i32 @DMA_BIT_MASK(i32 32)
  %144 = call i32 @dma_set_mask_and_coherent(i32* %142, i32 %143)
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %140, %130
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %150 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %149, i32 0, i32 0
  %151 = call i32 @dev_err(i32* %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %3, align 4
  br label %233

153:                                              ; preds = %145
  %154 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %155 = call i32 @pci_set_master(%struct.pci_dev* %154)
  %156 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %157 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %156, i32 0, i32 2
  %158 = load %struct.tb_nhi_ops*, %struct.tb_nhi_ops** %157, align 8
  %159 = icmp ne %struct.tb_nhi_ops* %158, null
  br i1 %159, label %160, label %181

160:                                              ; preds = %153
  %161 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %162 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %161, i32 0, i32 2
  %163 = load %struct.tb_nhi_ops*, %struct.tb_nhi_ops** %162, align 8
  %164 = getelementptr inbounds %struct.tb_nhi_ops, %struct.tb_nhi_ops* %163, i32 0, i32 0
  %165 = load i32 (%struct.tb_nhi.0*)*, i32 (%struct.tb_nhi.0*)** %164, align 8
  %166 = icmp ne i32 (%struct.tb_nhi.0*)* %165, null
  br i1 %166, label %167, label %181

167:                                              ; preds = %160
  %168 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %169 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %168, i32 0, i32 2
  %170 = load %struct.tb_nhi_ops*, %struct.tb_nhi_ops** %169, align 8
  %171 = getelementptr inbounds %struct.tb_nhi_ops, %struct.tb_nhi_ops* %170, i32 0, i32 0
  %172 = load i32 (%struct.tb_nhi.0*)*, i32 (%struct.tb_nhi.0*)** %171, align 8
  %173 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %174 = bitcast %struct.tb_nhi* %173 to %struct.tb_nhi.0*
  %175 = call i32 %172(%struct.tb_nhi.0* %174)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %167
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %3, align 4
  br label %233

180:                                              ; preds = %167
  br label %181

181:                                              ; preds = %180, %160, %153
  %182 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %183 = call %struct.tb* @icm_probe(%struct.tb_nhi* %182)
  store %struct.tb* %183, %struct.tb** %7, align 8
  %184 = load %struct.tb*, %struct.tb** %7, align 8
  %185 = icmp ne %struct.tb* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %188 = call %struct.tb* @tb_probe(%struct.tb_nhi* %187)
  store %struct.tb* %188, %struct.tb** %7, align 8
  br label %189

189:                                              ; preds = %186, %181
  %190 = load %struct.tb*, %struct.tb** %7, align 8
  %191 = icmp ne %struct.tb* %190, null
  br i1 %191, label %200, label %192

192:                                              ; preds = %189
  %193 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %194 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %193, i32 0, i32 1
  %195 = load %struct.pci_dev*, %struct.pci_dev** %194, align 8
  %196 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %195, i32 0, i32 0
  %197 = call i32 @dev_err(i32* %196, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  %198 = load i32, i32* @ENODEV, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %3, align 4
  br label %233

200:                                              ; preds = %189
  %201 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %202 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %201, i32 0, i32 1
  %203 = load %struct.pci_dev*, %struct.pci_dev** %202, align 8
  %204 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %203, i32 0, i32 0
  %205 = call i32 @dev_dbg(i32* %204, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %206 = load %struct.tb*, %struct.tb** %7, align 8
  %207 = call i32 @tb_domain_add(%struct.tb* %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %200
  %211 = load %struct.tb*, %struct.tb** %7, align 8
  %212 = call i32 @tb_domain_put(%struct.tb* %211)
  %213 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %214 = call i32 @nhi_shutdown(%struct.tb_nhi* %213)
  %215 = load i32, i32* %8, align 4
  store i32 %215, i32* %3, align 4
  br label %233

216:                                              ; preds = %200
  %217 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %218 = load %struct.tb*, %struct.tb** %7, align 8
  %219 = call i32 @pci_set_drvdata(%struct.pci_dev* %217, %struct.tb* %218)
  %220 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %221 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %220, i32 0, i32 0
  %222 = call i32 @pm_runtime_allow(i32* %221)
  %223 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %224 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %223, i32 0, i32 0
  %225 = load i32, i32* @TB_AUTOSUSPEND_DELAY, align 4
  %226 = call i32 @pm_runtime_set_autosuspend_delay(i32* %224, i32 %225)
  %227 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %228 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %227, i32 0, i32 0
  %229 = call i32 @pm_runtime_use_autosuspend(i32* %228)
  %230 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %231 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %230, i32 0, i32 0
  %232 = call i32 @pm_runtime_put_autosuspend(i32* %231)
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %216, %210, %192, %178, %148, %125, %117, %45, %33, %23, %12
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @nhi_imr_valid(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i8*) #1

declare dso_local %struct.tb_nhi* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @nhi_init_msi(%struct.tb_nhi*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.tb* @icm_probe(%struct.tb_nhi*) #1

declare dso_local %struct.tb* @tb_probe(%struct.tb_nhi*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @tb_domain_add(%struct.tb*) #1

declare dso_local i32 @tb_domain_put(%struct.tb*) #1

declare dso_local i32 @nhi_shutdown(%struct.tb_nhi*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.tb*) #1

declare dso_local i32 @pm_runtime_allow(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
