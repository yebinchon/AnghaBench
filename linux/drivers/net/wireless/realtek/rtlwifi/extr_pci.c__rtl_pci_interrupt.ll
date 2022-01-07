; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci = type { i64 }
%struct.rtl_priv = type { %struct.TYPE_8__, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*, %struct.rtl_int*)*, i32 (%struct.ieee80211_hw*)* }
%struct.rtl_int = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.rtl_hal = type { i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@RTL_IMR_TBDOK = common dso_local global i64 0, align 8
@COMP_INTR = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"beacon ok interrupt!\0A\00", align 1
@RTL_IMR_TBDER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"beacon err interrupt!\0A\00", align 1
@RTL_IMR_BDOK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"beacon interrupt!\0A\00", align 1
@RTL_IMR_BCNINT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"prepare beacon for interrupt!\0A\00", align 1
@RTL_IMR_TXFOVW = common dso_local global i64 0, align 8
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"IMR_TXFOVW!\0A\00", align 1
@RTL_IMR_MGNTDOK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"Manage ok interrupt!\0A\00", align 1
@MGNT_QUEUE = common dso_local global i32 0, align 4
@RTL_IMR_HIGHDOK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"HIGH_QUEUE ok interrupt!\0A\00", align 1
@HIGH_QUEUE = common dso_local global i32 0, align 4
@RTL_IMR_BKDOK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"BK Tx OK interrupt!\0A\00", align 1
@BK_QUEUE = common dso_local global i32 0, align 4
@RTL_IMR_BEDOK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"BE TX OK interrupt!\0A\00", align 1
@BE_QUEUE = common dso_local global i32 0, align 4
@RTL_IMR_VIDOK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"VI TX OK interrupt!\0A\00", align 1
@VI_QUEUE = common dso_local global i32 0, align 4
@RTL_IMR_VODOK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"Vo TX OK interrupt!\0A\00", align 1
@VO_QUEUE = common dso_local global i32 0, align 4
@HARDWARE_TYPE_RTL8822BE = common dso_local global i64 0, align 8
@RTL_IMR_H2CDOK = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"H2C TX OK interrupt!\0A\00", align 1
@H2C_QUEUE = common dso_local global i32 0, align 4
@HARDWARE_TYPE_RTL8192SE = common dso_local global i64 0, align 8
@RTL_IMR_COMDOK = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [22 x i8] c"CMD TX OK interrupt!\0A\00", align 1
@TXCMD_QUEUE = common dso_local global i32 0, align 4
@RTL_IMR_ROK = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"Rx ok interrupt!\0A\00", align 1
@RTL_IMR_RDU = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [28 x i8] c"rx descriptor unavailable!\0A\00", align 1
@RTL_IMR_RXFOVW = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"rx overflow !\0A\00", align 1
@HARDWARE_TYPE_RTL8723AE = common dso_local global i64 0, align 8
@RTL_IMR_C2HCMD = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [21 x i8] c"firmware interrupt!\0A\00", align 1
@HARDWARE_TYPE_RTL8188EE = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8723BE = common dso_local global i64 0, align 8
@RTL_IMR_HSISR_IND = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"hsisr interrupt!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @_rtl_pci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_pci_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.rtl_pci*, align 8
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca %struct.rtl_hal*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rtl_int, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ieee80211_hw*
  store %struct.ieee80211_hw* %14, %struct.ieee80211_hw** %6, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %16 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_pci* @rtl_pcidev(i32 %16)
  store %struct.rtl_pci* %17, %struct.rtl_pci** %7, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  store %struct.rtl_priv* %19, %struct.rtl_priv** %8, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  %22 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %21)
  store %struct.rtl_hal* %22, %struct.rtl_hal** %9, align 8
  %23 = bitcast %struct.rtl_int* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 16, i1 false)
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %26 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %3, align 4
  br label %528

31:                                               ; preds = %2
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %42, align 8
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %45 = call i32 %43(%struct.ieee80211_hw* %44)
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %47 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32 (%struct.ieee80211_hw*, %struct.rtl_int*)*, i32 (%struct.ieee80211_hw*, %struct.rtl_int*)** %51, align 8
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %54 = call i32 %52(%struct.ieee80211_hw* %53, %struct.rtl_int* %11)
  %55 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %31
  %59 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 65535
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %31
  br label %512

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %67 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @RTL_IMR_TBDOK, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %65, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %78 = load i32, i32* @COMP_INTR, align 4
  %79 = load i32, i32* @DBG_TRACE, align 4
  %80 = call i32 @RT_TRACE(%struct.rtl_priv* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %63
  %82 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %85 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @RTL_IMR_TBDER, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %83, %91
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %81
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %97 = load i32, i32* @COMP_INTR, align 4
  %98 = load i32, i32* @DBG_TRACE, align 4
  %99 = call i32 @RT_TRACE(%struct.rtl_priv* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %95, %81
  %101 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %104 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %103, i32 0, i32 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @RTL_IMR_BDOK, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %102, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %100
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %115 = load i32, i32* @COMP_INTR, align 4
  %116 = load i32, i32* @DBG_TRACE, align 4
  %117 = call i32 @RT_TRACE(%struct.rtl_priv* %114, i32 %115, i32 %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %113, %100
  %119 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %122 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %121, i32 0, i32 1
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @RTL_IMR_BCNINT, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %120, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %118
  %132 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %133 = load i32, i32* @COMP_INTR, align 4
  %134 = load i32, i32* @DBG_TRACE, align 4
  %135 = call i32 @RT_TRACE(%struct.rtl_priv* %132, i32 %133, i32 %134, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %136 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %137 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 3
  %139 = call i32 @tasklet_schedule(i32* %138)
  br label %140

140:                                              ; preds = %131, %118
  %141 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %144 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @RTL_IMR_TXFOVW, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %142, %150
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %140
  %155 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %156 = load i32, i32* @COMP_ERR, align 4
  %157 = load i32, i32* @DBG_WARNING, align 4
  %158 = call i32 @RT_TRACE(%struct.rtl_priv* %155, i32 %156, i32 %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %159

159:                                              ; preds = %154, %140
  %160 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %163 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %162, i32 0, i32 1
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* @RTL_IMR_MGNTDOK, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %161, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %159
  %173 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %174 = load i32, i32* @COMP_INTR, align 4
  %175 = load i32, i32* @DBG_TRACE, align 4
  %176 = call i32 @RT_TRACE(%struct.rtl_priv* %173, i32 %174, i32 %175, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %177 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %178 = load i32, i32* @MGNT_QUEUE, align 4
  %179 = call i32 @_rtl_pci_tx_isr(%struct.ieee80211_hw* %177, i32 %178)
  br label %180

180:                                              ; preds = %172, %159
  %181 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %184 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %183, i32 0, i32 1
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @RTL_IMR_HIGHDOK, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %182, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %180
  %194 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %195 = load i32, i32* @COMP_INTR, align 4
  %196 = load i32, i32* @DBG_TRACE, align 4
  %197 = call i32 @RT_TRACE(%struct.rtl_priv* %194, i32 %195, i32 %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %198 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %199 = load i32, i32* @HIGH_QUEUE, align 4
  %200 = call i32 @_rtl_pci_tx_isr(%struct.ieee80211_hw* %198, i32 %199)
  br label %201

201:                                              ; preds = %193, %180
  %202 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %205 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %204, i32 0, i32 1
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i64, i64* @RTL_IMR_BKDOK, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %203, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %201
  %215 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %216 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 8
  %220 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %221 = load i32, i32* @COMP_INTR, align 4
  %222 = load i32, i32* @DBG_TRACE, align 4
  %223 = call i32 @RT_TRACE(%struct.rtl_priv* %220, i32 %221, i32 %222, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %224 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %225 = load i32, i32* @BK_QUEUE, align 4
  %226 = call i32 @_rtl_pci_tx_isr(%struct.ieee80211_hw* %224, i32 %225)
  br label %227

227:                                              ; preds = %214, %201
  %228 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %231 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %230, i32 0, i32 1
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @RTL_IMR_BEDOK, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %229, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %253

240:                                              ; preds = %227
  %241 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %242 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 8
  %246 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %247 = load i32, i32* @COMP_INTR, align 4
  %248 = load i32, i32* @DBG_TRACE, align 4
  %249 = call i32 @RT_TRACE(%struct.rtl_priv* %246, i32 %247, i32 %248, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %250 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %251 = load i32, i32* @BE_QUEUE, align 4
  %252 = call i32 @_rtl_pci_tx_isr(%struct.ieee80211_hw* %250, i32 %251)
  br label %253

253:                                              ; preds = %240, %227
  %254 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %257 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %256, i32 0, i32 1
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i64, i64* @RTL_IMR_VIDOK, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %255, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %279

266:                                              ; preds = %253
  %267 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %268 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 8
  %272 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %273 = load i32, i32* @COMP_INTR, align 4
  %274 = load i32, i32* @DBG_TRACE, align 4
  %275 = call i32 @RT_TRACE(%struct.rtl_priv* %272, i32 %273, i32 %274, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %276 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %277 = load i32, i32* @VI_QUEUE, align 4
  %278 = call i32 @_rtl_pci_tx_isr(%struct.ieee80211_hw* %276, i32 %277)
  br label %279

279:                                              ; preds = %266, %253
  %280 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %283 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %282, i32 0, i32 1
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = load i64, i64* @RTL_IMR_VODOK, align 8
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %281, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %305

292:                                              ; preds = %279
  %293 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %294 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %293, i32 0, i32 4
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %295, align 8
  %298 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %299 = load i32, i32* @COMP_INTR, align 4
  %300 = load i32, i32* @DBG_TRACE, align 4
  %301 = call i32 @RT_TRACE(%struct.rtl_priv* %298, i32 %299, i32 %300, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %302 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %303 = load i32, i32* @VO_QUEUE, align 4
  %304 = call i32 @_rtl_pci_tx_isr(%struct.ieee80211_hw* %302, i32 %303)
  br label %305

305:                                              ; preds = %292, %279
  %306 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %307 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @HARDWARE_TYPE_RTL8822BE, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %338

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %315 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %314, i32 0, i32 1
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i64, i64* @RTL_IMR_H2CDOK, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = and i32 %313, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %337

324:                                              ; preds = %311
  %325 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %326 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %325, i32 0, i32 4
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %327, align 8
  %330 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %331 = load i32, i32* @COMP_INTR, align 4
  %332 = load i32, i32* @DBG_TRACE, align 4
  %333 = call i32 @RT_TRACE(%struct.rtl_priv* %330, i32 %331, i32 %332, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %334 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %335 = load i32, i32* @H2C_QUEUE, align 4
  %336 = call i32 @_rtl_pci_tx_isr(%struct.ieee80211_hw* %334, i32 %335)
  br label %337

337:                                              ; preds = %324, %311
  br label %338

338:                                              ; preds = %337, %305
  %339 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %340 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @HARDWARE_TYPE_RTL8192SE, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %371

344:                                              ; preds = %338
  %345 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %348 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %347, i32 0, i32 1
  %349 = load %struct.TYPE_12__*, %struct.TYPE_12__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  %352 = load i64, i64* @RTL_IMR_COMDOK, align 8
  %353 = getelementptr inbounds i32, i32* %351, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = and i32 %346, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %370

357:                                              ; preds = %344
  %358 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %359 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %358, i32 0, i32 4
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %360, align 8
  %363 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %364 = load i32, i32* @COMP_INTR, align 4
  %365 = load i32, i32* @DBG_TRACE, align 4
  %366 = call i32 @RT_TRACE(%struct.rtl_priv* %363, i32 %364, i32 %365, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %367 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %368 = load i32, i32* @TXCMD_QUEUE, align 4
  %369 = call i32 @_rtl_pci_tx_isr(%struct.ieee80211_hw* %367, i32 %368)
  br label %370

370:                                              ; preds = %357, %344
  br label %371

371:                                              ; preds = %370, %338
  %372 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %375 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %374, i32 0, i32 1
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = load i64, i64* @RTL_IMR_ROK, align 8
  %380 = getelementptr inbounds i32, i32* %378, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = and i32 %373, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %391

384:                                              ; preds = %371
  %385 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %386 = load i32, i32* @COMP_INTR, align 4
  %387 = load i32, i32* @DBG_TRACE, align 4
  %388 = call i32 @RT_TRACE(%struct.rtl_priv* %385, i32 %386, i32 %387, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %389 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %390 = call i32 @_rtl_pci_rx_interrupt(%struct.ieee80211_hw* %389)
  br label %391

391:                                              ; preds = %384, %371
  %392 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %395 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %394, i32 0, i32 1
  %396 = load %struct.TYPE_12__*, %struct.TYPE_12__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 0
  %398 = load i32*, i32** %397, align 8
  %399 = load i64, i64* @RTL_IMR_RDU, align 8
  %400 = getelementptr inbounds i32, i32* %398, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = and i32 %393, %401
  %403 = call i64 @unlikely(i32 %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %412

405:                                              ; preds = %391
  %406 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %407 = load i32, i32* @COMP_ERR, align 4
  %408 = load i32, i32* @DBG_WARNING, align 4
  %409 = call i32 @RT_TRACE(%struct.rtl_priv* %406, i32 %407, i32 %408, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %410 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %411 = call i32 @_rtl_pci_rx_interrupt(%struct.ieee80211_hw* %410)
  br label %412

412:                                              ; preds = %405, %391
  %413 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %416 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %415, i32 0, i32 1
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 0
  %419 = load i32*, i32** %418, align 8
  %420 = load i64, i64* @RTL_IMR_RXFOVW, align 8
  %421 = getelementptr inbounds i32, i32* %419, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = and i32 %414, %422
  %424 = call i64 @unlikely(i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %433

426:                                              ; preds = %412
  %427 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %428 = load i32, i32* @COMP_ERR, align 4
  %429 = load i32, i32* @DBG_WARNING, align 4
  %430 = call i32 @RT_TRACE(%struct.rtl_priv* %427, i32 %428, i32 %429, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %431 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %432 = call i32 @_rtl_pci_rx_interrupt(%struct.ieee80211_hw* %431)
  br label %433

433:                                              ; preds = %426, %412
  %434 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %435 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @HARDWARE_TYPE_RTL8723AE, align 8
  %438 = icmp eq i64 %436, %437
  br i1 %438, label %439, label %466

439:                                              ; preds = %433
  %440 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %443 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %442, i32 0, i32 1
  %444 = load %struct.TYPE_12__*, %struct.TYPE_12__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %444, i32 0, i32 0
  %446 = load i32*, i32** %445, align 8
  %447 = load i64, i64* @RTL_IMR_C2HCMD, align 8
  %448 = getelementptr inbounds i32, i32* %446, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = and i32 %441, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %465

452:                                              ; preds = %439
  %453 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %454 = load i32, i32* @COMP_INTR, align 4
  %455 = load i32, i32* @DBG_TRACE, align 4
  %456 = call i32 @RT_TRACE(%struct.rtl_priv* %453, i32 %454, i32 %455, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %457 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %458 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %457, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %462 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %461, i32 0, i32 2
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 1
  %464 = call i32 @queue_delayed_work(i32 %460, i32* %463, i32 0)
  br label %465

465:                                              ; preds = %452, %439
  br label %466

466:                                              ; preds = %465, %433
  %467 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %468 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* @HARDWARE_TYPE_RTL8188EE, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %478, label %472

472:                                              ; preds = %466
  %473 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %474 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %473, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = load i64, i64* @HARDWARE_TYPE_RTL8723BE, align 8
  %477 = icmp eq i64 %475, %476
  br i1 %477, label %478, label %500

478:                                              ; preds = %472, %466
  %479 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %11, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %482 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %481, i32 0, i32 1
  %483 = load %struct.TYPE_12__*, %struct.TYPE_12__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %483, i32 0, i32 0
  %485 = load i32*, i32** %484, align 8
  %486 = load i64, i64* @RTL_IMR_HSISR_IND, align 8
  %487 = getelementptr inbounds i32, i32* %485, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = and i32 %480, %488
  %490 = call i64 @unlikely(i32 %489)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %499

492:                                              ; preds = %478
  %493 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %494 = load i32, i32* @COMP_INTR, align 4
  %495 = load i32, i32* @DBG_TRACE, align 4
  %496 = call i32 @RT_TRACE(%struct.rtl_priv* %493, i32 %494, i32 %495, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %497 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %498 = call i32 @_rtl_pci_hs_interrupt(%struct.ieee80211_hw* %497)
  br label %499

499:                                              ; preds = %492, %478
  br label %500

500:                                              ; preds = %499, %472
  %501 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %502 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %501, i32 0, i32 3
  %503 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %502, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %511

506:                                              ; preds = %500
  %507 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %508 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %507, i32 0, i32 2
  %509 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %508, i32 0, i32 0
  %510 = call i32 @tasklet_schedule(i32* %509)
  br label %511

511:                                              ; preds = %506, %500
  br label %512

512:                                              ; preds = %511, %62
  %513 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %514 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %513, i32 0, i32 1
  %515 = load %struct.TYPE_12__*, %struct.TYPE_12__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %515, i32 0, i32 1
  %517 = load %struct.TYPE_9__*, %struct.TYPE_9__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %517, i32 0, i32 0
  %519 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %518, align 8
  %520 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %521 = call i32 %519(%struct.ieee80211_hw* %520)
  %522 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %523 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %523, i32 0, i32 0
  %525 = load i64, i64* %10, align 8
  %526 = call i32 @spin_unlock_irqrestore(i32* %524, i64 %525)
  %527 = load i32, i32* %12, align 4
  store i32 %527, i32* %3, align 4
  br label %528

528:                                              ; preds = %512, %29
  %529 = load i32, i32* %3, align 4
  ret i32 %529
}

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @_rtl_pci_tx_isr(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl_pci_rx_interrupt(%struct.ieee80211_hw*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @_rtl_pci_hs_interrupt(%struct.ieee80211_hw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
