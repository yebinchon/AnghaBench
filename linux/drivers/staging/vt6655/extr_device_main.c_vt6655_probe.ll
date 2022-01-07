; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vt6655_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vt6655_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.vnt_private = type { i32, i32, %struct.ieee80211_hw*, i32, i32, i32, i8*, i32, %struct.pci_dev* }
%struct.ieee80211_hw = type { i32, %struct.wiphy*, %struct.vnt_private* }
%struct.wiphy = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s Ver. %s\0A\00", align 1
@DEVICE_FULL_DRV_NAM = common dso_local global i32 0, align 4
@DEVICE_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Copyright (c) 2003 VIA Networking Technologies, Inc.\0A\00", align 1
@vnt_mac_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"could not register ieee80211_hw\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Before get pci_info memaddr is %x\0A\00", align 1
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c": Failed to IO remapping ..\0A\00", align 1
@DEVICE_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c": Failed to find PCI device\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c": Failed to set dma 32 bit mask\0A\00", align 1
@vnt_interrupt_work = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c": Failed to access MAC hardware..\0A\00", align 1
@EEP_OFS_RFTYPE = common dso_local global i32 0, align 4
@RF_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"RF Type = %x\0A\00", align 1
@FRAG_THRESH_DEF = common dso_local global i32 0, align 4
@RTS_THRESH_DEF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@TIMING_BEACON_ONLY = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@SUPPORTS_PS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @vt6655_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt6655_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.vnt_private*, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* @DEVICE_FULL_DRV_NAM, align 4
  %13 = load i32, i32* @DEVICE_VERSION, align 4
  %14 = call i32 (i32*, i8*, ...) @dev_notice(i32* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_notice(i32* %16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %18 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 56, i32* @vnt_mac_ops)
  store %struct.ieee80211_hw* %18, %struct.ieee80211_hw** %7, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %20 = icmp ne %struct.ieee80211_hw* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %232

27:                                               ; preds = %2
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %28, i32 0, i32 2
  %30 = load %struct.vnt_private*, %struct.vnt_private** %29, align 8
  store %struct.vnt_private* %30, %struct.vnt_private** %6, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %33 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %32, i32 0, i32 8
  store %struct.pci_dev* %31, %struct.pci_dev** %33, align 8
  %34 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %35 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %34, i32 0, i32 7
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %38 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %39 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %38, i32 0, i32 2
  store %struct.ieee80211_hw* %37, %struct.ieee80211_hw** %39, align 8
  %40 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %41 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %40, i32 0, i32 2
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %41, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %42, i32* %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call i64 @pci_enable_device(%struct.pci_dev* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %27
  %50 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %51 = call i32 @device_free_info(%struct.vnt_private* %50)
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %232

54:                                               ; preds = %27
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %58 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = call i32 @pci_set_master(%struct.pci_dev* %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = call i8* @pci_resource_start(%struct.pci_dev* %63, i32 0)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %67 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i8* @pci_resource_start(%struct.pci_dev* %68, i32 1)
  %70 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %71 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %73 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @ioremap(i32 %76, i32 256)
  %78 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %79 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %81 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %54
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %89 = call i32 @device_free_info(%struct.vnt_private* %88)
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %232

92:                                               ; preds = %54
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = load i32, i32* @DEVICE_NAME, align 4
  %95 = call i32 @pci_request_regions(%struct.pci_dev* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %102 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %103 = call i32 @device_free_info(%struct.vnt_private* %102)
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %232

106:                                              ; preds = %92
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 0
  %109 = call i32 @DMA_BIT_MASK(i32 32)
  %110 = call i64 @dma_set_mask(i32* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = call i32 @dev_err(i32* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %116 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %117 = call i32 @device_free_info(%struct.vnt_private* %116)
  %118 = load i32, i32* @ENODEV, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %232

120:                                              ; preds = %106
  %121 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %122 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %121, i32 0, i32 5
  %123 = load i32, i32* @vnt_interrupt_work, align 4
  %124 = call i32 @INIT_WORK(i32* %122, i32 %123)
  %125 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %126 = call i32 @MACbSoftwareReset(%struct.vnt_private* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %120
  %129 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %130 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %129, i32 0, i32 0
  %131 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %132 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %133 = call i32 @device_free_info(%struct.vnt_private* %132)
  %134 = load i32, i32* @ENODEV, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %232

136:                                              ; preds = %120
  %137 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %138 = call i32 @MACvInitialize(%struct.vnt_private* %137)
  %139 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %140 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %143 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @MACvReadEtherAddress(i32 %141, i32 %144)
  %146 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %147 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @EEP_OFS_RFTYPE, align 4
  %150 = call i32 @SROMbyReadEmbedded(i32 %148, i32 %149)
  %151 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %152 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @RF_MASK, align 4
  %154 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %155 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %161 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @dev_dbg(i32* %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %162)
  %164 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %165 = call i32 @device_get_options(%struct.vnt_private* %164)
  %166 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %167 = call i32 @device_set_options(%struct.vnt_private* %166)
  %168 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %169 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %168, i32 0, i32 2
  %170 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %169, align 8
  %171 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %170, i32 0, i32 1
  %172 = load %struct.wiphy*, %struct.wiphy** %171, align 8
  store %struct.wiphy* %172, %struct.wiphy** %8, align 8
  %173 = load i32, i32* @FRAG_THRESH_DEF, align 4
  %174 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %175 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* @RTS_THRESH_DEF, align 4
  %177 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %178 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %180 = call i32 @BIT(i32 %179)
  %181 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %182 = call i32 @BIT(i32 %181)
  %183 = or i32 %180, %182
  %184 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %185 = call i32 @BIT(i32 %184)
  %186 = or i32 %183, %185
  %187 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %188 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 4
  %189 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %190 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %189, i32 0, i32 2
  %191 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %190, align 8
  %192 = load i32, i32* @TIMING_BEACON_ONLY, align 4
  %193 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %191, i32 %192)
  %194 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %195 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %194, i32 0, i32 2
  %196 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %195, align 8
  %197 = load i32, i32* @SIGNAL_DBM, align 4
  %198 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %196, i32 %197)
  %199 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %200 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %199, i32 0, i32 2
  %201 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %200, align 8
  %202 = load i32, i32* @RX_INCLUDES_FCS, align 4
  %203 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %201, i32 %202)
  %204 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %205 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %204, i32 0, i32 2
  %206 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %205, align 8
  %207 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %208 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %206, i32 %207)
  %209 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %210 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %209, i32 0, i32 2
  %211 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %210, align 8
  %212 = load i32, i32* @SUPPORTS_PS, align 4
  %213 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %211, i32 %212)
  %214 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %215 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %214, i32 0, i32 2
  %216 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %215, align 8
  %217 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %216, i32 0, i32 0
  store i32 100, i32* %217, align 8
  %218 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %219 = call i64 @vnt_init(%struct.vnt_private* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %136
  %222 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %223 = call i32 @device_free_info(%struct.vnt_private* %222)
  %224 = load i32, i32* @ENODEV, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %3, align 4
  br label %232

226:                                              ; preds = %136
  %227 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %228 = call i32 @device_print_info(%struct.vnt_private* %227)
  %229 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %230 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %231 = call i32 @pci_set_drvdata(%struct.pci_dev* %229, %struct.vnt_private* %230)
  store i32 0, i32* %3, align 4
  br label %232

232:                                              ; preds = %226, %221, %128, %112, %98, %84, %49, %21
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i32 @dev_notice(i32*, i8*, ...) #1

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @device_free_info(%struct.vnt_private*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i64 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @MACbSoftwareReset(%struct.vnt_private*) #1

declare dso_local i32 @MACvInitialize(%struct.vnt_private*) #1

declare dso_local i32 @MACvReadEtherAddress(i32, i32) #1

declare dso_local i32 @SROMbyReadEmbedded(i32, i32) #1

declare dso_local i32 @device_get_options(%struct.vnt_private*) #1

declare dso_local i32 @device_set_options(%struct.vnt_private*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i64 @vnt_init(%struct.vnt_private*) #1

declare dso_local i32 @device_print_info(%struct.vnt_private*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.vnt_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
