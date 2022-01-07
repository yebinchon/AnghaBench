; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_init_channel_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_init_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.p2p_channels = type { i32, %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i64, i64*, i64 }
%struct.p2p_oper_class_map = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64 }

@IEEE80211G = common dso_local global i32 0, align 4
@BW20 = common dso_local global i64 0, align 8
@IEEE80211A = common dso_local global i32 0, align 4
@BW40PLUS = common dso_local global i64 0, align 8
@BW40MINUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32*, i64, %struct.p2p_channels*)* @init_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_channel_list(%struct.adapter* %0, i32* %1, i64 %2, %struct.p2p_channels* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.p2p_channels*, align 8
  %9 = alloca [10 x %struct.p2p_oper_class_map], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.p2p_oper_class_map*, align 8
  %14 = alloca %struct.p2p_reg_class*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.p2p_channels* %3, %struct.p2p_channels** %8, align 8
  %15 = getelementptr inbounds [10 x %struct.p2p_oper_class_map], [10 x %struct.p2p_oper_class_map]* %9, i64 0, i64 0
  %16 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 0
  %17 = load i32, i32* @IEEE80211G, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 1
  store i32 81, i32* %18, align 4
  %19 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 2
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 3
  store i32 13, i32* %20, align 4
  %21 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 4
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 5
  %23 = load i64, i64* @BW20, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 8
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 9
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 10
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i64 1
  %30 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %29, i32 0, i32 0
  %31 = load i32, i32* @IEEE80211G, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %29, i32 0, i32 1
  store i32 82, i32* %32, align 4
  %33 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %29, i32 0, i32 2
  store i32 14, i32* %33, align 8
  %34 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %29, i32 0, i32 3
  store i32 14, i32* %34, align 4
  %35 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %29, i32 0, i32 4
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %29, i32 0, i32 5
  %37 = load i64, i64* @BW20, align 8
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %29, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %29, i32 0, i32 7
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %29, i32 0, i32 8
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %29, i32 0, i32 9
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %29, i32 0, i32 10
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %29, i64 1
  %44 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %43, i32 0, i32 0
  %45 = load i32, i32* @IEEE80211A, align 4
  store i32 %45, i32* %44, align 8
  %46 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %43, i32 0, i32 1
  store i32 115, i32* %46, align 4
  %47 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %43, i32 0, i32 2
  store i32 36, i32* %47, align 8
  %48 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %43, i32 0, i32 3
  store i32 48, i32* %48, align 4
  %49 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %43, i32 0, i32 4
  store i32 4, i32* %49, align 8
  %50 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %43, i32 0, i32 5
  %51 = load i64, i64* @BW20, align 8
  store i64 %51, i64* %50, align 8
  %52 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %43, i32 0, i32 6
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %43, i32 0, i32 7
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %43, i32 0, i32 8
  store i32 0, i32* %54, align 8
  %55 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %43, i32 0, i32 9
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %43, i32 0, i32 10
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %43, i64 1
  %58 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %57, i32 0, i32 0
  %59 = load i32, i32* @IEEE80211A, align 4
  store i32 %59, i32* %58, align 8
  %60 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %57, i32 0, i32 1
  store i32 116, i32* %60, align 4
  %61 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %57, i32 0, i32 2
  store i32 36, i32* %61, align 8
  %62 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %57, i32 0, i32 3
  store i32 44, i32* %62, align 4
  %63 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %57, i32 0, i32 4
  store i32 8, i32* %63, align 8
  %64 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %57, i32 0, i32 5
  %65 = load i64, i64* @BW40PLUS, align 8
  store i64 %65, i64* %64, align 8
  %66 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %57, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %57, i32 0, i32 7
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %57, i32 0, i32 8
  store i32 0, i32* %68, align 8
  %69 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %57, i32 0, i32 9
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %57, i32 0, i32 10
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %57, i64 1
  %72 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %71, i32 0, i32 0
  %73 = load i32, i32* @IEEE80211A, align 4
  store i32 %73, i32* %72, align 8
  %74 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %71, i32 0, i32 1
  store i32 117, i32* %74, align 4
  %75 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %71, i32 0, i32 2
  store i32 40, i32* %75, align 8
  %76 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %71, i32 0, i32 3
  store i32 48, i32* %76, align 4
  %77 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %71, i32 0, i32 4
  store i32 8, i32* %77, align 8
  %78 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %71, i32 0, i32 5
  %79 = load i64, i64* @BW40MINUS, align 8
  store i64 %79, i64* %78, align 8
  %80 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %71, i32 0, i32 6
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %71, i32 0, i32 7
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %71, i32 0, i32 8
  store i32 0, i32* %82, align 8
  %83 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %71, i32 0, i32 9
  store i64 0, i64* %83, align 8
  %84 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %71, i32 0, i32 10
  store i64 0, i64* %84, align 8
  %85 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %71, i64 1
  %86 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %85, i32 0, i32 0
  %87 = load i32, i32* @IEEE80211A, align 4
  store i32 %87, i32* %86, align 8
  %88 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %85, i32 0, i32 1
  store i32 124, i32* %88, align 4
  %89 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %85, i32 0, i32 2
  store i32 149, i32* %89, align 8
  %90 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %85, i32 0, i32 3
  store i32 161, i32* %90, align 4
  %91 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %85, i32 0, i32 4
  store i32 4, i32* %91, align 8
  %92 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %85, i32 0, i32 5
  %93 = load i64, i64* @BW20, align 8
  store i64 %93, i64* %92, align 8
  %94 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %85, i32 0, i32 6
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %85, i32 0, i32 7
  store i64 0, i64* %95, align 8
  %96 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %85, i32 0, i32 8
  store i32 0, i32* %96, align 8
  %97 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %85, i32 0, i32 9
  store i64 0, i64* %97, align 8
  %98 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %85, i32 0, i32 10
  store i64 0, i64* %98, align 8
  %99 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %85, i64 1
  %100 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %99, i32 0, i32 0
  %101 = load i32, i32* @IEEE80211A, align 4
  store i32 %101, i32* %100, align 8
  %102 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %99, i32 0, i32 1
  store i32 125, i32* %102, align 4
  %103 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %99, i32 0, i32 2
  store i32 149, i32* %103, align 8
  %104 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %99, i32 0, i32 3
  store i32 169, i32* %104, align 4
  %105 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %99, i32 0, i32 4
  store i32 4, i32* %105, align 8
  %106 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %99, i32 0, i32 5
  %107 = load i64, i64* @BW20, align 8
  store i64 %107, i64* %106, align 8
  %108 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %99, i32 0, i32 6
  store i64 0, i64* %108, align 8
  %109 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %99, i32 0, i32 7
  store i64 0, i64* %109, align 8
  %110 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %99, i32 0, i32 8
  store i32 0, i32* %110, align 8
  %111 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %99, i32 0, i32 9
  store i64 0, i64* %111, align 8
  %112 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %99, i32 0, i32 10
  store i64 0, i64* %112, align 8
  %113 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %99, i64 1
  %114 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %113, i32 0, i32 0
  %115 = load i32, i32* @IEEE80211A, align 4
  store i32 %115, i32* %114, align 8
  %116 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %113, i32 0, i32 1
  store i32 126, i32* %116, align 4
  %117 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %113, i32 0, i32 2
  store i32 149, i32* %117, align 8
  %118 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %113, i32 0, i32 3
  store i32 157, i32* %118, align 4
  %119 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %113, i32 0, i32 4
  store i32 8, i32* %119, align 8
  %120 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %113, i32 0, i32 5
  %121 = load i64, i64* @BW40PLUS, align 8
  store i64 %121, i64* %120, align 8
  %122 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %113, i32 0, i32 6
  store i64 0, i64* %122, align 8
  %123 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %113, i32 0, i32 7
  store i64 0, i64* %123, align 8
  %124 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %113, i32 0, i32 8
  store i32 0, i32* %124, align 8
  %125 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %113, i32 0, i32 9
  store i64 0, i64* %125, align 8
  %126 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %113, i32 0, i32 10
  store i64 0, i64* %126, align 8
  %127 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %113, i64 1
  %128 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %127, i32 0, i32 0
  %129 = load i32, i32* @IEEE80211A, align 4
  store i32 %129, i32* %128, align 8
  %130 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %127, i32 0, i32 1
  store i32 127, i32* %130, align 4
  %131 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %127, i32 0, i32 2
  store i32 153, i32* %131, align 8
  %132 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %127, i32 0, i32 3
  store i32 161, i32* %132, align 4
  %133 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %127, i32 0, i32 4
  store i32 8, i32* %133, align 8
  %134 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %127, i32 0, i32 5
  %135 = load i64, i64* @BW40MINUS, align 8
  store i64 %135, i64* %134, align 8
  %136 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %127, i32 0, i32 6
  store i64 0, i64* %136, align 8
  %137 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %127, i32 0, i32 7
  store i64 0, i64* %137, align 8
  %138 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %127, i32 0, i32 8
  store i32 0, i32* %138, align 8
  %139 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %127, i32 0, i32 9
  store i64 0, i64* %139, align 8
  %140 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %127, i32 0, i32 10
  store i64 0, i64* %140, align 8
  %141 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %127, i64 1
  %142 = bitcast %struct.p2p_oper_class_map* %141 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %142, i8 0, i64 72, i1 false)
  %143 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %141, i32 0, i32 0
  store i32 -1, i32* %143, align 8
  %144 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %141, i32 0, i32 5
  %145 = load i64, i64* @BW20, align 8
  store i64 %145, i64* %144, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %146

146:                                              ; preds = %245, %4
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [10 x %struct.p2p_oper_class_map], [10 x %struct.p2p_oper_class_map]* %9, i64 0, i64 %148
  %150 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %149, i32 0, i32 10
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %248

153:                                              ; preds = %146
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [10 x %struct.p2p_oper_class_map], [10 x %struct.p2p_oper_class_map]* %9, i64 0, i64 %155
  store %struct.p2p_oper_class_map* %156, %struct.p2p_oper_class_map** %13, align 8
  store %struct.p2p_reg_class* null, %struct.p2p_reg_class** %14, align 8
  %157 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %158 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %157, i32 0, i32 6
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %12, align 8
  br label %160

160:                                              ; preds = %237, %153
  %161 = load i64, i64* %12, align 8
  %162 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %163 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = icmp sle i64 %161, %164
  br i1 %165, label %166, label %244

166:                                              ; preds = %160
  %167 = load i32*, i32** %6, align 8
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* %12, align 8
  %170 = call i32 @has_channel(i32* %167, i64 %168, i64 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %166
  br label %237

173:                                              ; preds = %166
  %174 = load %struct.adapter*, %struct.adapter** %5, align 8
  %175 = getelementptr inbounds %struct.adapter, %struct.adapter* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 0, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %181 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 8, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %237

185:                                              ; preds = %179, %173
  %186 = load %struct.adapter*, %struct.adapter** %5, align 8
  %187 = getelementptr inbounds %struct.adapter, %struct.adapter* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = and i32 %189, 240
  %191 = icmp slt i32 0, %190
  br i1 %191, label %192, label %205

192:                                              ; preds = %185
  %193 = load i64, i64* @BW40MINUS, align 8
  %194 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %195 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %194, i32 0, i32 9
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %193, %196
  br i1 %197, label %204, label %198

198:                                              ; preds = %192
  %199 = load i64, i64* @BW40PLUS, align 8
  %200 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %201 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %200, i32 0, i32 9
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %199, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %198, %192
  br label %237

205:                                              ; preds = %198, %185
  %206 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %207 = icmp ne %struct.p2p_reg_class* %206, null
  br i1 %207, label %224, label %208

208:                                              ; preds = %205
  %209 = load %struct.p2p_channels*, %struct.p2p_channels** %8, align 8
  %210 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %209, i32 0, i32 1
  %211 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %211, i64 %213
  store %struct.p2p_reg_class* %214, %struct.p2p_reg_class** %14, align 8
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %10, align 4
  %217 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %218 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %217, i32 0, i32 10
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %221 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %220, i32 0, i32 2
  store i64 %219, i64* %221, align 8
  %222 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %223 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %222, i32 0, i32 0
  store i64 0, i64* %223, align 8
  br label %224

224:                                              ; preds = %208, %205
  %225 = load i64, i64* %12, align 8
  %226 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %227 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %226, i32 0, i32 1
  %228 = load i64*, i64** %227, align 8
  %229 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %230 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds i64, i64* %228, i64 %231
  store i64 %225, i64* %232, align 8
  %233 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %234 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = add i64 %235, 1
  store i64 %236, i64* %234, align 8
  br label %237

237:                                              ; preds = %224, %204, %184, %172
  %238 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %239 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %238, i32 0, i32 8
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = load i64, i64* %12, align 8
  %243 = add nsw i64 %242, %241
  store i64 %243, i64* %12, align 8
  br label %160

244:                                              ; preds = %160
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %11, align 4
  br label %146

248:                                              ; preds = %146
  %249 = load i32, i32* %10, align 4
  %250 = load %struct.p2p_channels*, %struct.p2p_channels** %8, align 8
  %251 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @has_channel(i32*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
