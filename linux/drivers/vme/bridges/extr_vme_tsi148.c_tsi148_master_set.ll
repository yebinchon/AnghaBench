; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_master_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_master_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { i32, i32, i32, %struct.vme_bridge* }
%struct.vme_bridge = type { i32, %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64 }
%struct.pci_bus_region = type { i64 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid VME Window alignment\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Size must be non-zero for enabled windows\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unable to allocate memory for resource\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Invalid PCI base alignment\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Invalid PCI bound alignment\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Invalid VME Offset alignment\0A\00", align 1
@TSI148_LCSR_OT = common dso_local global i64* null, align 8
@TSI148_LCSR_OFFSET_OTAT = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_EN = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_2eSSTM_M = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_2eSSTM_160 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_2eSSTM_267 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_2eSSTM_320 = common dso_local global i32 0, align 4
@VME_BLT = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_TM_M = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_TM_BLT = common dso_local global i32 0, align 4
@VME_MBLT = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_TM_MBLT = common dso_local global i32 0, align 4
@VME_2eVME = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_TM_2eVME = common dso_local global i32 0, align 4
@VME_2eSST = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_TM_2eSST = common dso_local global i32 0, align 4
@VME_2eSSTB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Currently not setting Broadcast Select Registers\0A\00", align 1
@TSI148_LCSR_OTAT_TM_2eSSTB = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_DBW_M = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_DBW_16 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_DBW_32 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Invalid data width\0A\00", align 1
@TSI148_LCSR_OTAT_AMODE_M = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_A16 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_A24 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_A32 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_A64 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_CRCSR = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_USER1 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_USER2 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_USER3 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_USER4 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@VME_SUPER = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_SUP = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_PGM = common dso_local global i32 0, align 4
@TSI148_LCSR_OFFSET_OTSAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTSAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTEAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTEAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTOFU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTOFL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_master_resource*, i32, i64, i64, i32, i32, i32)* @tsi148_master_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_master_set(%struct.vme_master_resource* %0, i32 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vme_master_resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.vme_bridge*, align 8
  %29 = alloca %struct.tsi148_driver*, align 8
  %30 = alloca %struct.pci_bus_region, align 8
  %31 = alloca %struct.pci_dev*, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %32 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %33 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %32, i32 0, i32 3
  %34 = load %struct.vme_bridge*, %struct.vme_bridge** %33, align 8
  store %struct.vme_bridge* %34, %struct.vme_bridge** %28, align 8
  %35 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %36 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %35, i32 0, i32 1
  %37 = load %struct.tsi148_driver*, %struct.tsi148_driver** %36, align 8
  store %struct.tsi148_driver* %37, %struct.tsi148_driver** %29, align 8
  %38 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %39 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.pci_dev* @to_pci_dev(i32 %40)
  store %struct.pci_dev* %41, %struct.pci_dev** %31, align 8
  %42 = load i64, i64* %11, align 8
  %43 = and i64 %42, 65535
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %7
  %46 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %47 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %16, align 4
  br label %487

52:                                               ; preds = %7
  %53 = load i64, i64* %12, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %60 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %16, align 4
  br label %487

65:                                               ; preds = %55, %52
  %66 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %67 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %66, i32 0, i32 1
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @tsi148_alloc_resource(%struct.vme_master_resource* %69, i64 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %65
  %75 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %76 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %79 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %486

82:                                               ; preds = %65
  %83 = load i64, i64* %12, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i64 0, i64* %27, align 8
  store i64 0, i64* %25, align 8
  store i64 0, i64* %26, align 8
  br label %102

86:                                               ; preds = %82
  %87 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %91 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %90, i32 0, i32 2
  %92 = call i32 @pcibios_resource_to_bus(i32 %89, %struct.pci_bus_region* %30, i32* %91)
  %93 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %30, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %27, align 8
  %95 = load i64, i64* %27, align 8
  %96 = load i64, i64* %12, align 8
  %97 = sub i64 %96, 65536
  %98 = add i64 %95, %97
  store i64 %98, i64* %25, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %27, align 8
  %101 = sub i64 %99, %100
  store i64 %101, i64* %26, align 8
  br label %102

102:                                              ; preds = %86, %85
  %103 = load i64, i64* %27, align 8
  %104 = call i32 @reg_split(i64 %103, i32* %20, i32* %19)
  %105 = load i64, i64* %25, align 8
  %106 = call i32 @reg_split(i64 %105, i32* %22, i32* %21)
  %107 = load i64, i64* %26, align 8
  %108 = call i32 @reg_split(i64 %107, i32* %24, i32* %23)
  %109 = load i32, i32* %19, align 4
  %110 = and i32 %109, 65535
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %102
  %113 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %114 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %113, i32 0, i32 1
  %115 = call i32 @spin_unlock(i32* %114)
  %116 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %117 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %16, align 4
  br label %483

122:                                              ; preds = %102
  %123 = load i32, i32* %21, align 4
  %124 = and i32 %123, 65535
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %122
  %127 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %128 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %127, i32 0, i32 1
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %131 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %16, align 4
  br label %483

136:                                              ; preds = %122
  %137 = load i32, i32* %23, align 4
  %138 = and i32 %137, 65535
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %136
  %141 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %142 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %141, i32 0, i32 1
  %143 = call i32 @spin_unlock(i32* %142)
  %144 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %145 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @dev_err(i32 %146, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %16, align 4
  br label %483

150:                                              ; preds = %136
  %151 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %152 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %17, align 4
  %154 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %155 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %158 = load i32, i32* %17, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %156, %161
  %163 = load i64, i64* @TSI148_LCSR_OFFSET_OTAT, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @ioread32be(i64 %164)
  store i32 %165, i32* %18, align 4
  %166 = load i32, i32* @TSI148_LCSR_OTAT_EN, align 4
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %18, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %18, align 4
  %171 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %172 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %175 = load i32, i32* %17, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %173, %178
  %180 = load i64, i64* @TSI148_LCSR_OFFSET_OTAT, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @iowrite32be(i32 %170, i64 %181)
  %183 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_M, align 4
  %184 = xor i32 %183, -1
  %185 = load i32, i32* %18, align 4
  %186 = and i32 %185, %184
  store i32 %186, i32* %18, align 4
  %187 = load i32, i32* %14, align 4
  %188 = and i32 %187, 143
  switch i32 %188, label %201 [
    i32 141, label %189
    i32 140, label %193
    i32 139, label %197
  ]

189:                                              ; preds = %150
  %190 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_160, align 4
  %191 = load i32, i32* %18, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %18, align 4
  br label %201

193:                                              ; preds = %150
  %194 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_267, align 4
  %195 = load i32, i32* %18, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %18, align 4
  br label %201

197:                                              ; preds = %150
  %198 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_320, align 4
  %199 = load i32, i32* %18, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %18, align 4
  br label %201

201:                                              ; preds = %150, %197, %193, %189
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* @VME_BLT, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %201
  %207 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %208 = xor i32 %207, -1
  %209 = load i32, i32* %18, align 4
  %210 = and i32 %209, %208
  store i32 %210, i32* %18, align 4
  %211 = load i32, i32* @TSI148_LCSR_OTAT_TM_BLT, align 4
  %212 = load i32, i32* %18, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %18, align 4
  br label %214

214:                                              ; preds = %206, %201
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* @VME_MBLT, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %18, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %18, align 4
  %224 = load i32, i32* @TSI148_LCSR_OTAT_TM_MBLT, align 4
  %225 = load i32, i32* %18, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %18, align 4
  br label %227

227:                                              ; preds = %219, %214
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* @VME_2eVME, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %227
  %233 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %234 = xor i32 %233, -1
  %235 = load i32, i32* %18, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %18, align 4
  %237 = load i32, i32* @TSI148_LCSR_OTAT_TM_2eVME, align 4
  %238 = load i32, i32* %18, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %18, align 4
  br label %240

240:                                              ; preds = %232, %227
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* @VME_2eSST, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %247 = xor i32 %246, -1
  %248 = load i32, i32* %18, align 4
  %249 = and i32 %248, %247
  store i32 %249, i32* %18, align 4
  %250 = load i32, i32* @TSI148_LCSR_OTAT_TM_2eSST, align 4
  %251 = load i32, i32* %18, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %18, align 4
  br label %253

253:                                              ; preds = %245, %240
  %254 = load i32, i32* %14, align 4
  %255 = load i32, i32* @VME_2eSSTB, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %253
  %259 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %260 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @dev_warn(i32 %261, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %263 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %264 = xor i32 %263, -1
  %265 = load i32, i32* %18, align 4
  %266 = and i32 %265, %264
  store i32 %266, i32* %18, align 4
  %267 = load i32, i32* @TSI148_LCSR_OTAT_TM_2eSSTB, align 4
  %268 = load i32, i32* %18, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %18, align 4
  br label %270

270:                                              ; preds = %258, %253
  %271 = load i32, i32* @TSI148_LCSR_OTAT_DBW_M, align 4
  %272 = xor i32 %271, -1
  %273 = load i32, i32* %18, align 4
  %274 = and i32 %273, %272
  store i32 %274, i32* %18, align 4
  %275 = load i32, i32* %15, align 4
  switch i32 %275, label %284 [
    i32 133, label %276
    i32 132, label %280
  ]

276:                                              ; preds = %270
  %277 = load i32, i32* @TSI148_LCSR_OTAT_DBW_16, align 4
  %278 = load i32, i32* %18, align 4
  %279 = or i32 %278, %277
  store i32 %279, i32* %18, align 4
  br label %294

280:                                              ; preds = %270
  %281 = load i32, i32* @TSI148_LCSR_OTAT_DBW_32, align 4
  %282 = load i32, i32* %18, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %18, align 4
  br label %294

284:                                              ; preds = %270
  %285 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %286 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %285, i32 0, i32 1
  %287 = call i32 @spin_unlock(i32* %286)
  %288 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %289 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @dev_err(i32 %290, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %292 = load i32, i32* @EINVAL, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %16, align 4
  br label %482

294:                                              ; preds = %280, %276
  %295 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %296 = xor i32 %295, -1
  %297 = load i32, i32* %18, align 4
  %298 = and i32 %297, %296
  store i32 %298, i32* %18, align 4
  %299 = load i32, i32* %13, align 4
  switch i32 %299, label %336 [
    i32 138, label %300
    i32 137, label %304
    i32 136, label %308
    i32 135, label %312
    i32 134, label %316
    i32 131, label %320
    i32 130, label %324
    i32 129, label %328
    i32 128, label %332
  ]

300:                                              ; preds = %294
  %301 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_A16, align 4
  %302 = load i32, i32* %18, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %18, align 4
  br label %346

304:                                              ; preds = %294
  %305 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_A24, align 4
  %306 = load i32, i32* %18, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %18, align 4
  br label %346

308:                                              ; preds = %294
  %309 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_A32, align 4
  %310 = load i32, i32* %18, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %18, align 4
  br label %346

312:                                              ; preds = %294
  %313 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_A64, align 4
  %314 = load i32, i32* %18, align 4
  %315 = or i32 %314, %313
  store i32 %315, i32* %18, align 4
  br label %346

316:                                              ; preds = %294
  %317 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_CRCSR, align 4
  %318 = load i32, i32* %18, align 4
  %319 = or i32 %318, %317
  store i32 %319, i32* %18, align 4
  br label %346

320:                                              ; preds = %294
  %321 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_USER1, align 4
  %322 = load i32, i32* %18, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %18, align 4
  br label %346

324:                                              ; preds = %294
  %325 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_USER2, align 4
  %326 = load i32, i32* %18, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %18, align 4
  br label %346

328:                                              ; preds = %294
  %329 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_USER3, align 4
  %330 = load i32, i32* %18, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* %18, align 4
  br label %346

332:                                              ; preds = %294
  %333 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_USER4, align 4
  %334 = load i32, i32* %18, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %18, align 4
  br label %346

336:                                              ; preds = %294
  %337 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %338 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %337, i32 0, i32 1
  %339 = call i32 @spin_unlock(i32* %338)
  %340 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %341 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @dev_err(i32 %342, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %344 = load i32, i32* @EINVAL, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %16, align 4
  br label %481

346:                                              ; preds = %332, %328, %324, %320, %316, %312, %308, %304, %300
  %347 = load i32, i32* %18, align 4
  %348 = and i32 %347, -49
  store i32 %348, i32* %18, align 4
  %349 = load i32, i32* %14, align 4
  %350 = load i32, i32* @VME_SUPER, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %346
  %354 = load i32, i32* @TSI148_LCSR_OTAT_SUP, align 4
  %355 = load i32, i32* %18, align 4
  %356 = or i32 %355, %354
  store i32 %356, i32* %18, align 4
  br label %357

357:                                              ; preds = %353, %346
  %358 = load i32, i32* %14, align 4
  %359 = load i32, i32* @VME_PROG, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %357
  %363 = load i32, i32* @TSI148_LCSR_OTAT_PGM, align 4
  %364 = load i32, i32* %18, align 4
  %365 = or i32 %364, %363
  store i32 %365, i32* %18, align 4
  br label %366

366:                                              ; preds = %362, %357
  %367 = load i32, i32* %20, align 4
  %368 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %369 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %372 = load i32, i32* %17, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds i64, i64* %371, i64 %373
  %375 = load i64, i64* %374, align 8
  %376 = add nsw i64 %370, %375
  %377 = load i64, i64* @TSI148_LCSR_OFFSET_OTSAU, align 8
  %378 = add nsw i64 %376, %377
  %379 = call i32 @iowrite32be(i32 %367, i64 %378)
  %380 = load i32, i32* %19, align 4
  %381 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %382 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %385 = load i32, i32* %17, align 4
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds i64, i64* %384, i64 %386
  %388 = load i64, i64* %387, align 8
  %389 = add nsw i64 %383, %388
  %390 = load i64, i64* @TSI148_LCSR_OFFSET_OTSAL, align 8
  %391 = add nsw i64 %389, %390
  %392 = call i32 @iowrite32be(i32 %380, i64 %391)
  %393 = load i32, i32* %22, align 4
  %394 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %395 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %398 = load i32, i32* %17, align 4
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds i64, i64* %397, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = add nsw i64 %396, %401
  %403 = load i64, i64* @TSI148_LCSR_OFFSET_OTEAU, align 8
  %404 = add nsw i64 %402, %403
  %405 = call i32 @iowrite32be(i32 %393, i64 %404)
  %406 = load i32, i32* %21, align 4
  %407 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %408 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %411 = load i32, i32* %17, align 4
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds i64, i64* %410, i64 %412
  %414 = load i64, i64* %413, align 8
  %415 = add nsw i64 %409, %414
  %416 = load i64, i64* @TSI148_LCSR_OFFSET_OTEAL, align 8
  %417 = add nsw i64 %415, %416
  %418 = call i32 @iowrite32be(i32 %406, i64 %417)
  %419 = load i32, i32* %24, align 4
  %420 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %421 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %424 = load i32, i32* %17, align 4
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds i64, i64* %423, i64 %425
  %427 = load i64, i64* %426, align 8
  %428 = add nsw i64 %422, %427
  %429 = load i64, i64* @TSI148_LCSR_OFFSET_OTOFU, align 8
  %430 = add nsw i64 %428, %429
  %431 = call i32 @iowrite32be(i32 %419, i64 %430)
  %432 = load i32, i32* %23, align 4
  %433 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %434 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %437 = load i32, i32* %17, align 4
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds i64, i64* %436, i64 %438
  %440 = load i64, i64* %439, align 8
  %441 = add nsw i64 %435, %440
  %442 = load i64, i64* @TSI148_LCSR_OFFSET_OTOFL, align 8
  %443 = add nsw i64 %441, %442
  %444 = call i32 @iowrite32be(i32 %432, i64 %443)
  %445 = load i32, i32* %18, align 4
  %446 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %447 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %450 = load i32, i32* %17, align 4
  %451 = zext i32 %450 to i64
  %452 = getelementptr inbounds i64, i64* %449, i64 %451
  %453 = load i64, i64* %452, align 8
  %454 = add nsw i64 %448, %453
  %455 = load i64, i64* @TSI148_LCSR_OFFSET_OTAT, align 8
  %456 = add nsw i64 %454, %455
  %457 = call i32 @iowrite32be(i32 %445, i64 %456)
  %458 = load i32, i32* %10, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %464

460:                                              ; preds = %366
  %461 = load i32, i32* @TSI148_LCSR_OTAT_EN, align 4
  %462 = load i32, i32* %18, align 4
  %463 = or i32 %462, %461
  store i32 %463, i32* %18, align 4
  br label %464

464:                                              ; preds = %460, %366
  %465 = load i32, i32* %18, align 4
  %466 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %467 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %470 = load i32, i32* %17, align 4
  %471 = zext i32 %470 to i64
  %472 = getelementptr inbounds i64, i64* %469, i64 %471
  %473 = load i64, i64* %472, align 8
  %474 = add nsw i64 %468, %473
  %475 = load i64, i64* @TSI148_LCSR_OFFSET_OTAT, align 8
  %476 = add nsw i64 %474, %475
  %477 = call i32 @iowrite32be(i32 %465, i64 %476)
  %478 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %479 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %478, i32 0, i32 1
  %480 = call i32 @spin_unlock(i32* %479)
  store i32 0, i32* %8, align 4
  br label %489

481:                                              ; preds = %336
  br label %482

482:                                              ; preds = %481, %284
  br label %483

483:                                              ; preds = %482, %140, %126, %112
  %484 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %485 = call i32 @tsi148_free_resource(%struct.vme_master_resource* %484)
  br label %486

486:                                              ; preds = %483, %74
  br label %487

487:                                              ; preds = %486, %58, %45
  %488 = load i32, i32* %16, align 4
  store i32 %488, i32* %8, align 4
  br label %489

489:                                              ; preds = %487, %464
  %490 = load i32, i32* %8, align 4
  ret i32 %490
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tsi148_alloc_resource(%struct.vme_master_resource*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pcibios_resource_to_bus(i32, %struct.pci_bus_region*, i32*) #1

declare dso_local i32 @reg_split(i64, i32*, i32*) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @tsi148_free_resource(%struct.vme_master_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
