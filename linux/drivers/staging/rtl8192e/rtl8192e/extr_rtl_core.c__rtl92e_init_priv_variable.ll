; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_init_priv_variable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_init_priv_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i8*, %struct.TYPE_6__, i32, i32, i64, %struct.TYPE_5__, i64, i64, i32*, i32, i64, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@eAcmWay2_SW = common dso_local global i32 0, align 4
@PREAMBLE_AUTO = common dso_local global i32 0, align 4
@MAX_RX_COUNT = common dso_local global i32 0, align 4
@WIRELESS_MODE_AUTO = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i8* null, align 8
@DEFAULT_RETRY_RTS = common dso_local global i32 0, align 4
@DEFAULT_RETRY_DATA = common dso_local global i32 0, align 4
@DEFAULT_RTS_THRESHOLD = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@RESET_TYPE_NORESET = common dso_local global i32 0, align 4
@LPS_IS_WAKE = common dso_local global i32 0, align 4
@eRfOn = common dso_local global i32 0, align 4
@DEFAULT_BEACONINTERVAL = common dso_local global i32 0, align 4
@RTLLIB_CCK_MODULATION = common dso_local global i32 0, align 4
@RTLLIB_OFDM_MODULATION = common dso_local global i32 0, align 4
@DEFAULT_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@PCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"rtl8192e: Unable to allocate space for firmware\0A\00", align 1
@MAX_QUEUE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_init_priv_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_init_priv_variable(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  %7 = load i32, i32* @eAcmWay2_SW, align 4
  %8 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %9 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %8, i32 0, i32 42
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @PREAMBLE_AUTO, align 4
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 41
  store i32 %10, i32* %12, align 8
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 25
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 24
  store i64 0, i64* %16, align 8
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 40
  store i64 0, i64* %18, align 8
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 4
  store i32 0, i32* %28, align 8
  %29 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %30 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %29, i32 0, i32 5
  store i32 0, i32* %30, align 4
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 6
  store i32 0, i32* %32, align 8
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 7
  store i32 64, i32* %34, align 4
  %35 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %36 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %35, i32 0, i32 8
  store i32 9100, i32* %36, align 8
  %37 = load i32, i32* @MAX_RX_COUNT, align 4
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 39
  store i32 %37, i32* %39, align 8
  %40 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %41 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %40, i32 0, i32 38
  store i64 0, i64* %41, align 8
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 9
  store i32 1, i32* %43, align 4
  %44 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %45 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %44, i32 0, i32 10
  store i32 15, i32* %45, align 8
  %46 = load i32, i32* @WIRELESS_MODE_AUTO, align 4
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 25
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 23
  store i32 %46, i32* %50, align 8
  %51 = load i8*, i8** @IW_MODE_INFRA, align 8
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 25
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 11
  store i8* %51, i8** %55, align 8
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 25
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 25
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 22
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 25
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 22
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 25
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 21
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @DEFAULT_RETRY_RTS, align 4
  %75 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %76 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %75, i32 0, i32 37
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @DEFAULT_RETRY_DATA, align 4
  %78 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %79 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %78, i32 0, i32 36
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @DEFAULT_RTS_THRESHOLD, align 4
  %81 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %82 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %81, i32 0, i32 25
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 20
  store i32 %80, i32* %84, align 8
  %85 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %86 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %85, i32 0, i32 25
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 110, i32* %88, align 4
  %89 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %90 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %89, i32 0, i32 25
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IFF_PROMISC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %102 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %101, i32 0, i32 11
  store i32 %100, i32* %102, align 4
  %103 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %104 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %103, i32 0, i32 12
  store i32 0, i32* %104, align 8
  %105 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %106 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %105, i32 0, i32 13
  store i32 0, i32* %106, align 4
  %107 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %108 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %107, i32 0, i32 35
  store i64 0, i64* %108, align 8
  %109 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %110 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %109, i32 0, i32 34
  store i64 0, i64* %110, align 8
  %111 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %112 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %111, i32 0, i32 33
  store i64 0, i64* %112, align 8
  %113 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %114 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %113, i32 0, i32 14
  store i32 6, i32* %114, align 8
  %115 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %116 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %115, i32 0, i32 15
  store i32 50, i32* %116, align 4
  %117 = load i32, i32* @RESET_TYPE_NORESET, align 4
  %118 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %119 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %118, i32 0, i32 32
  store i32 %117, i32* %119, align 4
  %120 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %121 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %120, i32 0, i32 16
  store i32 0, i32* %121, align 8
  %122 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %123 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %122, i32 0, i32 17
  store i32 0, i32* %123, align 4
  %124 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %125 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %124, i32 0, i32 18
  store i32 0, i32* %125, align 8
  %126 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %127 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %126, i32 0, i32 25
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 19
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @memset(i32* %130, i32 0, i32 128)
  %132 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %133 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %132, i32 0, i32 31
  %134 = call i32 @memset(i32* %133, i32 0, i32 4)
  %135 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %136 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %135, i32 0, i32 30
  store i64 0, i64* %136, align 8
  %137 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %138 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %137, i32 0, i32 25
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 18
  store i64 0, i64* %140, align 8
  %141 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %142 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %141, i32 0, i32 19
  store i32 0, i32* %142, align 4
  %143 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %144 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %143, i32 0, i32 20
  store i32 0, i32* %144, align 8
  %145 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %146 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %145, i32 0, i32 21
  store i32 0, i32* %146, align 4
  %147 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %148 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %147, i32 0, i32 22
  store i32 0, i32* %148, align 8
  %149 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %150 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %149, i32 0, i32 25
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 17
  store i64 0, i64* %152, align 8
  %153 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %154 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %153, i32 0, i32 23
  store i32 0, i32* %154, align 4
  %155 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %156 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %155, i32 0, i32 29
  store i64 0, i64* %156, align 8
  %157 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %158 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %157, i32 0, i32 24
  store i32 0, i32* %158, align 8
  %159 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %160 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %159, i32 0, i32 25
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 16
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  %164 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %165 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %164, i32 0, i32 25
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 16
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  store i32 0, i32* %168, align 4
  %169 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %170 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %169, i32 0, i32 25
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 16
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  store i32 1, i32* %173, align 8
  %174 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %175 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %174, i32 0, i32 25
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 16
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 3
  store i32 0, i32* %178, align 4
  %179 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %180 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %179, i32 0, i32 25
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 15
  store i64 0, i64* %182, align 8
  %183 = load i32, i32* @LPS_IS_WAKE, align 4
  %184 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %185 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %184, i32 0, i32 25
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 14
  store i32 %183, i32* %187, align 8
  %188 = load i32, i32* @eRfOn, align 4
  %189 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %190 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %189, i32 0, i32 25
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 13
  store i32 %188, i32* %192, align 4
  %193 = load i32, i32* @DEFAULT_BEACONINTERVAL, align 4
  %194 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %195 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %194, i32 0, i32 25
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 12
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  store i32 %193, i32* %198, align 8
  %199 = load i8*, i8** @IW_MODE_INFRA, align 8
  %200 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %201 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %200, i32 0, i32 25
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 11
  store i8* %199, i8** %203, align 8
  %204 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %205 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %204, i32 0, i32 25
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 3
  store i32 1, i32* %207, align 4
  %208 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %209 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %208, i32 0, i32 25
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 4
  store i32 0, i32* %211, align 8
  %212 = load i32, i32* @RTLLIB_CCK_MODULATION, align 4
  %213 = load i32, i32* @RTLLIB_OFDM_MODULATION, align 4
  %214 = or i32 %212, %213
  %215 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %216 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %215, i32 0, i32 25
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 5
  store i32 %214, i32* %218, align 4
  %219 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %220 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %219, i32 0, i32 25
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 6
  store i32 1, i32* %222, align 8
  %223 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %224 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %223, i32 0, i32 25
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 7
  store i32 1, i32* %226, align 4
  %227 = load i32, i32* @DEFAULT_FRAG_THRESHOLD, align 4
  %228 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %229 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %228, i32 0, i32 25
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 10
  store i32 %227, i32* %231, align 8
  %232 = load i32, i32* @PCI, align 4
  %233 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %234 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %233, i32 0, i32 28
  store i32 %232, i32* %234, align 8
  %235 = call i32 @vzalloc(i32 4)
  %236 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %237 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %236, i32 0, i32 27
  store i32 %235, i32* %237, align 4
  %238 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %239 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %238, i32 0, i32 27
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %1
  %243 = load %struct.net_device*, %struct.net_device** %2, align 8
  %244 = call i32 @netdev_err(%struct.net_device* %243, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %245

245:                                              ; preds = %242, %1
  %246 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %247 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %246, i32 0, i32 26
  %248 = call i32 @skb_queue_head_init(i32* %247)
  store i64 0, i64* %4, align 8
  br label %249

249:                                              ; preds = %262, %245
  %250 = load i64, i64* %4, align 8
  %251 = load i64, i64* @MAX_QUEUE_SIZE, align 8
  %252 = icmp ult i64 %250, %251
  br i1 %252, label %253, label %265

253:                                              ; preds = %249
  %254 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %255 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %254, i32 0, i32 25
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 9
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* %4, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = call i32 @skb_queue_head_init(i32* %260)
  br label %262

262:                                              ; preds = %253
  %263 = load i64, i64* %4, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %4, align 8
  br label %249

265:                                              ; preds = %249
  store i64 0, i64* %4, align 8
  br label %266

266:                                              ; preds = %279, %265
  %267 = load i64, i64* %4, align 8
  %268 = load i64, i64* @MAX_QUEUE_SIZE, align 8
  %269 = icmp ult i64 %267, %268
  br i1 %269, label %270, label %282

270:                                              ; preds = %266
  %271 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %272 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %271, i32 0, i32 25
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 8
  %275 = load i32*, i32** %274, align 8
  %276 = load i64, i64* %4, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  %278 = call i32 @skb_queue_head_init(i32* %277)
  br label %279

279:                                              ; preds = %270
  %280 = load i64, i64* %4, align 8
  %281 = add i64 %280, 1
  store i64 %281, i64* %4, align 8
  br label %266

282:                                              ; preds = %266
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
