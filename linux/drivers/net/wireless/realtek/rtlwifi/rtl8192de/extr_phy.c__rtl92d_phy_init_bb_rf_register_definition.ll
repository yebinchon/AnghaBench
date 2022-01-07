; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_init_bb_rf_register_definition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_init_bb_rf_register_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8* }

@RFPGA0_XAB_RFINTERFACESW = common dso_local global i8* null, align 8
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@RFPGA0_XCD_RFINTERFACESW = common dso_local global i8* null, align 8
@RF90_PATH_C = common dso_local global i64 0, align 8
@RF90_PATH_D = common dso_local global i64 0, align 8
@RFPGA0_XAB_RFINTERFACERB = common dso_local global i8* null, align 8
@RFPGA0_XCD_RFINTERFACERB = common dso_local global i8* null, align 8
@RFPGA0_XA_RFINTERFACEOE = common dso_local global i8* null, align 8
@RFPGA0_XB_RFINTERFACEOE = common dso_local global i8* null, align 8
@RFPGA0_XA_LSSIPARAMETER = common dso_local global i32 0, align 4
@RFPGA0_XB_LSSIPARAMETER = common dso_local global i32 0, align 4
@RFPGA0_XAB_RFPARAMETER = common dso_local global i8* null, align 8
@RFPGA0_XCD_RFPARAMETER = common dso_local global i8* null, align 8
@RFPGA0_TXGAINSTAGE = common dso_local global i8* null, align 8
@RFPGA0_XA_HSSIPARAMETER1 = common dso_local global i32 0, align 4
@RFPGA0_XB_HSSIPARAMETER1 = common dso_local global i32 0, align 4
@RFPGA0_XA_HSSIPARAMETER2 = common dso_local global i32 0, align 4
@RFPGA0_XB_HSSIPARAMETER2 = common dso_local global i32 0, align 4
@RFPGA0_XAB_SWITCHCONTROL = common dso_local global i8* null, align 8
@RFPGA0_XCD_SWITCHCONTROL = common dso_local global i8* null, align 8
@ROFDM0_XAAGCCORE1 = common dso_local global i32 0, align 4
@ROFDM0_XBAGCCORE1 = common dso_local global i32 0, align 4
@ROFDM0_XCAGCCORE1 = common dso_local global i32 0, align 4
@ROFDM0_XDAGCCORE1 = common dso_local global i32 0, align 4
@ROFDM0_XAAGCCORE2 = common dso_local global i32 0, align 4
@ROFDM0_XBAGCCORE2 = common dso_local global i32 0, align 4
@ROFDM0_XCAGCCORE2 = common dso_local global i32 0, align 4
@ROFDM0_XDAGCCORE2 = common dso_local global i32 0, align 4
@ROFDM0_XARXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XBRXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XCRXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XDRXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XARXAFE = common dso_local global i32 0, align 4
@ROFDM0_XBRXAFE = common dso_local global i32 0, align 4
@ROFDM0_XCRXAFE = common dso_local global i32 0, align 4
@ROFDM0_XDRXAFE = common dso_local global i32 0, align 4
@ROFDM0_XATXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XBTXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XCTXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XDTXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XATXAFE = common dso_local global i32 0, align 4
@ROFDM0_XBTXAFE = common dso_local global i32 0, align 4
@ROFDM0_XCTXAFE = common dso_local global i32 0, align 4
@ROFDM0_XDTXAFE = common dso_local global i32 0, align 4
@RFPGA0_XA_LSSIREADBACK = common dso_local global i32 0, align 4
@RFPGA0_XB_LSSIREADBACK = common dso_local global i32 0, align 4
@RFPGA0_XC_LSSIREADBACK = common dso_local global i32 0, align 4
@RFPGA0_XD_LSSIREADBACK = common dso_local global i32 0, align 4
@TRANSCEIVERA_HSPI_READBACK = common dso_local global i32 0, align 4
@TRANSCEIVERB_HSPI_READBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92d_phy_init_bb_rf_register_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_phy_init_bb_rf_register_definition(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 0
  store %struct.rtl_phy* %8, %struct.rtl_phy** %4, align 8
  %9 = load i8*, i8** @RFPGA0_XAB_RFINTERFACESW, align 8
  %10 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %11 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i64, i64* @RF90_PATH_A, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 17
  store i8* %9, i8** %15, align 8
  %16 = load i8*, i8** @RFPGA0_XAB_RFINTERFACESW, align 8
  %17 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %18 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @RF90_PATH_B, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 17
  store i8* %16, i8** %22, align 8
  %23 = load i8*, i8** @RFPGA0_XCD_RFINTERFACESW, align 8
  %24 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* @RF90_PATH_C, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 17
  store i8* %23, i8** %29, align 8
  %30 = load i8*, i8** @RFPGA0_XCD_RFINTERFACESW, align 8
  %31 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %32 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* @RF90_PATH_D, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 17
  store i8* %30, i8** %36, align 8
  %37 = load i8*, i8** @RFPGA0_XAB_RFINTERFACERB, align 8
  %38 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %39 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* @RF90_PATH_A, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 16
  store i8* %37, i8** %43, align 8
  %44 = load i8*, i8** @RFPGA0_XAB_RFINTERFACERB, align 8
  %45 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %46 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* @RF90_PATH_B, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 16
  store i8* %44, i8** %50, align 8
  %51 = load i8*, i8** @RFPGA0_XCD_RFINTERFACERB, align 8
  %52 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %53 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* @RF90_PATH_C, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 16
  store i8* %51, i8** %57, align 8
  %58 = load i8*, i8** @RFPGA0_XCD_RFINTERFACERB, align 8
  %59 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %60 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* @RF90_PATH_D, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 16
  store i8* %58, i8** %64, align 8
  %65 = load i8*, i8** @RFPGA0_XA_RFINTERFACEOE, align 8
  %66 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %67 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* @RF90_PATH_A, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 15
  store i8* %65, i8** %71, align 8
  %72 = load i8*, i8** @RFPGA0_XB_RFINTERFACEOE, align 8
  %73 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %74 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* @RF90_PATH_B, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 15
  store i8* %72, i8** %78, align 8
  %79 = load i8*, i8** @RFPGA0_XA_RFINTERFACEOE, align 8
  %80 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %81 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i64, i64* @RF90_PATH_A, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 14
  store i8* %79, i8** %85, align 8
  %86 = load i8*, i8** @RFPGA0_XB_RFINTERFACEOE, align 8
  %87 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %88 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i64, i64* @RF90_PATH_B, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 14
  store i8* %86, i8** %92, align 8
  %93 = load i32, i32* @RFPGA0_XA_LSSIPARAMETER, align 4
  %94 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %95 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i64, i64* @RF90_PATH_A, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 13
  store i32 %93, i32* %99, align 8
  %100 = load i32, i32* @RFPGA0_XB_LSSIPARAMETER, align 4
  %101 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %102 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i64, i64* @RF90_PATH_B, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 13
  store i32 %100, i32* %106, align 8
  %107 = load i8*, i8** @RFPGA0_XAB_RFPARAMETER, align 8
  %108 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %109 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i64, i64* @RF90_PATH_A, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 12
  store i8* %107, i8** %113, align 8
  %114 = load i8*, i8** @RFPGA0_XAB_RFPARAMETER, align 8
  %115 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %116 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i64, i64* @RF90_PATH_B, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 12
  store i8* %114, i8** %120, align 8
  %121 = load i8*, i8** @RFPGA0_XCD_RFPARAMETER, align 8
  %122 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %123 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i64, i64* @RF90_PATH_C, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 12
  store i8* %121, i8** %127, align 8
  %128 = load i8*, i8** @RFPGA0_XCD_RFPARAMETER, align 8
  %129 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %130 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i64, i64* @RF90_PATH_D, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 12
  store i8* %128, i8** %134, align 8
  %135 = load i8*, i8** @RFPGA0_TXGAINSTAGE, align 8
  %136 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %137 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i64, i64* @RF90_PATH_A, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 11
  store i8* %135, i8** %141, align 8
  %142 = load i8*, i8** @RFPGA0_TXGAINSTAGE, align 8
  %143 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %144 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i64, i64* @RF90_PATH_B, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 11
  store i8* %142, i8** %148, align 8
  %149 = load i8*, i8** @RFPGA0_TXGAINSTAGE, align 8
  %150 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %151 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i64, i64* @RF90_PATH_C, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 11
  store i8* %149, i8** %155, align 8
  %156 = load i8*, i8** @RFPGA0_TXGAINSTAGE, align 8
  %157 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %158 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = load i64, i64* @RF90_PATH_D, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 11
  store i8* %156, i8** %162, align 8
  %163 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER1, align 4
  %164 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %165 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %164, i32 0, i32 0
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = load i64, i64* @RF90_PATH_A, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 10
  store i32 %163, i32* %169, align 4
  %170 = load i32, i32* @RFPGA0_XB_HSSIPARAMETER1, align 4
  %171 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %172 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %171, i32 0, i32 0
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i64, i64* @RF90_PATH_B, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 10
  store i32 %170, i32* %176, align 4
  %177 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %178 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %179 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %178, i32 0, i32 0
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load i64, i64* @RF90_PATH_A, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 9
  store i32 %177, i32* %183, align 8
  %184 = load i32, i32* @RFPGA0_XB_HSSIPARAMETER2, align 4
  %185 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %186 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %185, i32 0, i32 0
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = load i64, i64* @RF90_PATH_B, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 9
  store i32 %184, i32* %190, align 8
  %191 = load i8*, i8** @RFPGA0_XAB_SWITCHCONTROL, align 8
  %192 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %193 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %192, i32 0, i32 0
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = load i64, i64* @RF90_PATH_A, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 8
  store i8* %191, i8** %197, align 8
  %198 = load i8*, i8** @RFPGA0_XAB_SWITCHCONTROL, align 8
  %199 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %200 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %199, i32 0, i32 0
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = load i64, i64* @RF90_PATH_B, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 8
  store i8* %198, i8** %204, align 8
  %205 = load i8*, i8** @RFPGA0_XCD_SWITCHCONTROL, align 8
  %206 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %207 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %206, i32 0, i32 0
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = load i64, i64* @RF90_PATH_C, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 8
  store i8* %205, i8** %211, align 8
  %212 = load i8*, i8** @RFPGA0_XCD_SWITCHCONTROL, align 8
  %213 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %214 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %213, i32 0, i32 0
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = load i64, i64* @RF90_PATH_D, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 8
  store i8* %212, i8** %218, align 8
  %219 = load i32, i32* @ROFDM0_XAAGCCORE1, align 4
  %220 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %221 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %220, i32 0, i32 0
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = load i64, i64* @RF90_PATH_A, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 7
  store i32 %219, i32* %225, align 4
  %226 = load i32, i32* @ROFDM0_XBAGCCORE1, align 4
  %227 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %228 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %227, i32 0, i32 0
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = load i64, i64* @RF90_PATH_B, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 7
  store i32 %226, i32* %232, align 4
  %233 = load i32, i32* @ROFDM0_XCAGCCORE1, align 4
  %234 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %235 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %234, i32 0, i32 0
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = load i64, i64* @RF90_PATH_C, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 7
  store i32 %233, i32* %239, align 4
  %240 = load i32, i32* @ROFDM0_XDAGCCORE1, align 4
  %241 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %242 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %241, i32 0, i32 0
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** %242, align 8
  %244 = load i64, i64* @RF90_PATH_D, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 7
  store i32 %240, i32* %246, align 4
  %247 = load i32, i32* @ROFDM0_XAAGCCORE2, align 4
  %248 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %249 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %248, i32 0, i32 0
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** %249, align 8
  %251 = load i64, i64* @RF90_PATH_A, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 6
  store i32 %247, i32* %253, align 8
  %254 = load i32, i32* @ROFDM0_XBAGCCORE2, align 4
  %255 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %256 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %255, i32 0, i32 0
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** %256, align 8
  %258 = load i64, i64* @RF90_PATH_B, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 6
  store i32 %254, i32* %260, align 8
  %261 = load i32, i32* @ROFDM0_XCAGCCORE2, align 4
  %262 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %263 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %262, i32 0, i32 0
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = load i64, i64* @RF90_PATH_C, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 6
  store i32 %261, i32* %267, align 8
  %268 = load i32, i32* @ROFDM0_XDAGCCORE2, align 4
  %269 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %270 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %269, i32 0, i32 0
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** %270, align 8
  %272 = load i64, i64* @RF90_PATH_D, align 8
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 6
  store i32 %268, i32* %274, align 8
  %275 = load i32, i32* @ROFDM0_XARXIQIMBALANCE, align 4
  %276 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %277 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %276, i32 0, i32 0
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = load i64, i64* @RF90_PATH_A, align 8
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 5
  store i32 %275, i32* %281, align 4
  %282 = load i32, i32* @ROFDM0_XBRXIQIMBALANCE, align 4
  %283 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %284 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %283, i32 0, i32 0
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** %284, align 8
  %286 = load i64, i64* @RF90_PATH_B, align 8
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 5
  store i32 %282, i32* %288, align 4
  %289 = load i32, i32* @ROFDM0_XCRXIQIMBALANCE, align 4
  %290 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %291 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %290, i32 0, i32 0
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** %291, align 8
  %293 = load i64, i64* @RF90_PATH_C, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 5
  store i32 %289, i32* %295, align 4
  %296 = load i32, i32* @ROFDM0_XDRXIQIMBALANCE, align 4
  %297 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %298 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %297, i32 0, i32 0
  %299 = load %struct.TYPE_2__*, %struct.TYPE_2__** %298, align 8
  %300 = load i64, i64* @RF90_PATH_D, align 8
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 5
  store i32 %296, i32* %302, align 4
  %303 = load i32, i32* @ROFDM0_XARXAFE, align 4
  %304 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %305 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %304, i32 0, i32 0
  %306 = load %struct.TYPE_2__*, %struct.TYPE_2__** %305, align 8
  %307 = load i64, i64* @RF90_PATH_A, align 8
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 4
  store i32 %303, i32* %309, align 8
  %310 = load i32, i32* @ROFDM0_XBRXAFE, align 4
  %311 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %312 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %311, i32 0, i32 0
  %313 = load %struct.TYPE_2__*, %struct.TYPE_2__** %312, align 8
  %314 = load i64, i64* @RF90_PATH_B, align 8
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 4
  store i32 %310, i32* %316, align 8
  %317 = load i32, i32* @ROFDM0_XCRXAFE, align 4
  %318 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %319 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %318, i32 0, i32 0
  %320 = load %struct.TYPE_2__*, %struct.TYPE_2__** %319, align 8
  %321 = load i64, i64* @RF90_PATH_C, align 8
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 4
  store i32 %317, i32* %323, align 8
  %324 = load i32, i32* @ROFDM0_XDRXAFE, align 4
  %325 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %326 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %325, i32 0, i32 0
  %327 = load %struct.TYPE_2__*, %struct.TYPE_2__** %326, align 8
  %328 = load i64, i64* @RF90_PATH_D, align 8
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 4
  store i32 %324, i32* %330, align 8
  %331 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %332 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %333 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %332, i32 0, i32 0
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** %333, align 8
  %335 = load i64, i64* @RF90_PATH_A, align 8
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 3
  store i32 %331, i32* %337, align 4
  %338 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  %339 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %340 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %339, i32 0, i32 0
  %341 = load %struct.TYPE_2__*, %struct.TYPE_2__** %340, align 8
  %342 = load i64, i64* @RF90_PATH_B, align 8
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 3
  store i32 %338, i32* %344, align 4
  %345 = load i32, i32* @ROFDM0_XCTXIQIMBALANCE, align 4
  %346 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %347 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %346, i32 0, i32 0
  %348 = load %struct.TYPE_2__*, %struct.TYPE_2__** %347, align 8
  %349 = load i64, i64* @RF90_PATH_C, align 8
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 3
  store i32 %345, i32* %351, align 4
  %352 = load i32, i32* @ROFDM0_XDTXIQIMBALANCE, align 4
  %353 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %354 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %353, i32 0, i32 0
  %355 = load %struct.TYPE_2__*, %struct.TYPE_2__** %354, align 8
  %356 = load i64, i64* @RF90_PATH_D, align 8
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %355, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 3
  store i32 %352, i32* %358, align 4
  %359 = load i32, i32* @ROFDM0_XATXAFE, align 4
  %360 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %361 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %360, i32 0, i32 0
  %362 = load %struct.TYPE_2__*, %struct.TYPE_2__** %361, align 8
  %363 = load i64, i64* @RF90_PATH_A, align 8
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %362, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %364, i32 0, i32 2
  store i32 %359, i32* %365, align 8
  %366 = load i32, i32* @ROFDM0_XBTXAFE, align 4
  %367 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %368 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %367, i32 0, i32 0
  %369 = load %struct.TYPE_2__*, %struct.TYPE_2__** %368, align 8
  %370 = load i64, i64* @RF90_PATH_B, align 8
  %371 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %371, i32 0, i32 2
  store i32 %366, i32* %372, align 8
  %373 = load i32, i32* @ROFDM0_XCTXAFE, align 4
  %374 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %375 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %374, i32 0, i32 0
  %376 = load %struct.TYPE_2__*, %struct.TYPE_2__** %375, align 8
  %377 = load i64, i64* @RF90_PATH_C, align 8
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i32 0, i32 2
  store i32 %373, i32* %379, align 8
  %380 = load i32, i32* @ROFDM0_XDTXAFE, align 4
  %381 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %382 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %381, i32 0, i32 0
  %383 = load %struct.TYPE_2__*, %struct.TYPE_2__** %382, align 8
  %384 = load i64, i64* @RF90_PATH_D, align 8
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %383, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 2
  store i32 %380, i32* %386, align 8
  %387 = load i32, i32* @RFPGA0_XA_LSSIREADBACK, align 4
  %388 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %389 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %388, i32 0, i32 0
  %390 = load %struct.TYPE_2__*, %struct.TYPE_2__** %389, align 8
  %391 = load i64, i64* @RF90_PATH_A, align 8
  %392 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %392, i32 0, i32 1
  store i32 %387, i32* %393, align 4
  %394 = load i32, i32* @RFPGA0_XB_LSSIREADBACK, align 4
  %395 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %396 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %395, i32 0, i32 0
  %397 = load %struct.TYPE_2__*, %struct.TYPE_2__** %396, align 8
  %398 = load i64, i64* @RF90_PATH_B, align 8
  %399 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i32 0, i32 1
  store i32 %394, i32* %400, align 4
  %401 = load i32, i32* @RFPGA0_XC_LSSIREADBACK, align 4
  %402 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %403 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %402, i32 0, i32 0
  %404 = load %struct.TYPE_2__*, %struct.TYPE_2__** %403, align 8
  %405 = load i64, i64* @RF90_PATH_C, align 8
  %406 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %404, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %406, i32 0, i32 1
  store i32 %401, i32* %407, align 4
  %408 = load i32, i32* @RFPGA0_XD_LSSIREADBACK, align 4
  %409 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %410 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %409, i32 0, i32 0
  %411 = load %struct.TYPE_2__*, %struct.TYPE_2__** %410, align 8
  %412 = load i64, i64* @RF90_PATH_D, align 8
  %413 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %413, i32 0, i32 1
  store i32 %408, i32* %414, align 4
  %415 = load i32, i32* @TRANSCEIVERA_HSPI_READBACK, align 4
  %416 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %417 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %416, i32 0, i32 0
  %418 = load %struct.TYPE_2__*, %struct.TYPE_2__** %417, align 8
  %419 = load i64, i64* @RF90_PATH_A, align 8
  %420 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %418, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %420, i32 0, i32 0
  store i32 %415, i32* %421, align 8
  %422 = load i32, i32* @TRANSCEIVERB_HSPI_READBACK, align 4
  %423 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %424 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %423, i32 0, i32 0
  %425 = load %struct.TYPE_2__*, %struct.TYPE_2__** %424, align 8
  %426 = load i64, i64* @RF90_PATH_B, align 8
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %425, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %427, i32 0, i32 0
  store i32 %422, i32* %428, align 8
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
