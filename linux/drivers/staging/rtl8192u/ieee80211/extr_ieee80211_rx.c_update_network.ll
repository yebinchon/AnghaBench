; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_rx.c_update_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_rx.c_update_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_network = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32 }

@NETWORK_HAS_ERP_VALUE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NETWORK_HAS_QOS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"QoS the network %s is QoS supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"QoS the network is QoS supported\0A\00", align 1
@WME_AC_PRAM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_network*, %struct.ieee80211_network*)* @update_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_network(%struct.ieee80211_network* %0, %struct.ieee80211_network* %1) #0 {
  %3 = alloca %struct.ieee80211_network*, align 8
  %4 = alloca %struct.ieee80211_network*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_network* %0, %struct.ieee80211_network** %3, align 8
  store %struct.ieee80211_network* %1, %struct.ieee80211_network** %4, align 8
  %7 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %7, i32 0, i32 46
  %9 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %9, i32 0, i32 46
  %11 = call i32 @memcpy(%struct.TYPE_6__* %8, %struct.TYPE_6__* %10, i32 4)
  %12 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %12, i32 0, i32 45
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %15, i32 0, i32 45
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %17, i32 0, i32 44
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %20, i32 0, i32 44
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @memcpy(%struct.TYPE_6__* %19, %struct.TYPE_6__* %22, i32 %25)
  %27 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %32, i32 0, i32 43
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %35, i32 0, i32 43
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(%struct.TYPE_6__* %34, %struct.TYPE_6__* %37, i32 %40)
  %42 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %2
  %52 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %52, i32 0, i32 23
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @memset(%struct.TYPE_6__* %54, i32 0, i32 %57)
  %59 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %65 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %64, i32 0, i32 23
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %67, i32 0, i32 23
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %71 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @memcpy(%struct.TYPE_6__* %66, %struct.TYPE_6__* %69, i32 %72)
  br label %74

74:                                               ; preds = %51, %2
  %75 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %75, i32 0, i32 42
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %79 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %78, i32 0, i32 42
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %84 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %86 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %85, i32 0, i32 41
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %91 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %90, i32 0, i32 41
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %89, i32* %93, align 4
  %94 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %94, i32 0, i32 41
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %100 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %99, i32 0, i32 41
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %98, i32* %102, align 4
  %103 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %104 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NETWORK_HAS_ERP_VALUE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %74
  %110 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %111 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %110, i32 0, i32 40
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %114 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %113, i32 0, i32 40
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %116 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %115, i32 0, i32 4
  store i32 1, i32* %116, align 8
  %117 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %118 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %117, i32 0, i32 4
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %109, %74
  %120 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %121 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %120, i32 0, i32 39
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %124 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %123, i32 0, i32 39
  store i32 %122, i32* %124, align 8
  %125 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %126 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %125, i32 0, i32 38
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %129 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %128, i32 0, i32 38
  store i32 %127, i32* %129, align 4
  %130 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %131 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %130, i32 0, i32 37
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %134 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %133, i32 0, i32 37
  store i32 %132, i32* %134, align 8
  %135 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %136 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %135, i32 0, i32 36
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %139 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %138, i32 0, i32 36
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %141 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %140, i32 0, i32 35
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %144 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %143, i32 0, i32 35
  store i32 %142, i32* %144, align 8
  %145 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %146 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %145, i32 0, i32 34
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %151 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %150, i32 0, i32 34
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %149, i32* %153, align 4
  %154 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %155 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %154, i32 0, i32 34
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %160 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %159, i32 0, i32 34
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 %158, i32* %162, align 4
  %163 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %164 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %163, i32 0, i32 33
  %165 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %166 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %165, i32 0, i32 33
  %167 = call i32 @memcpy(%struct.TYPE_6__* %164, %struct.TYPE_6__* %166, i32 4)
  %168 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %169 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %168, i32 0, i32 32
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %173 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %172, i32 0, i32 32
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 7
  store i32 %171, i32* %174, align 4
  %175 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %176 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %175, i32 0, i32 32
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %180 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %179, i32 0, i32 32
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 6
  store i32 %178, i32* %181, align 8
  %182 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %183 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %182, i32 0, i32 32
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %187 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %186, i32 0, i32 32
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %190 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %189, i32 0, i32 32
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %194 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %193, i32 0, i32 32
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 5
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %198 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %197, i32 0, i32 32
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @memcpy(%struct.TYPE_6__* %192, %struct.TYPE_6__* %196, i32 %200)
  %202 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %203 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %202, i32 0, i32 32
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %207 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %206, i32 0, i32 32
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  store i32 %205, i32* %208, align 4
  %209 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %210 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %209, i32 0, i32 32
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %214 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %213, i32 0, i32 32
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %218 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %217, i32 0, i32 32
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @memcpy(%struct.TYPE_6__* %212, %struct.TYPE_6__* %216, i32 %220)
  %222 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %223 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %222, i32 0, i32 32
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %227 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %226, i32 0, i32 32
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  store i32 %225, i32* %228, align 4
  %229 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %230 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %229, i32 0, i32 32
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %234 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %233, i32 0, i32 32
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  store i32 %232, i32* %235, align 8
  %236 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %237 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %236, i32 0, i32 31
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %240 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %239, i32 0, i32 31
  store i32 %238, i32* %240, align 8
  %241 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %242 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %241, i32 0, i32 30
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %245 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %244, i32 0, i32 30
  store i32 %243, i32* %245, align 4
  %246 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %247 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %246, i32 0, i32 29
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %250 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %249, i32 0, i32 29
  store i32 %248, i32* %250, align 8
  %251 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %252 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %251, i32 0, i32 28
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %255 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %254, i32 0, i32 28
  store i32 %253, i32* %255, align 4
  %256 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %257 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %256, i32 0, i32 27
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %260 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %259, i32 0, i32 27
  store i32 %258, i32* %260, align 8
  %261 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %262 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %261, i32 0, i32 26
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %265 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %264, i32 0, i32 26
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %268 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @memcpy(%struct.TYPE_6__* %263, %struct.TYPE_6__* %266, i32 %269)
  %271 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %272 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %275 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %274, i32 0, i32 5
  store i32 %273, i32* %275, align 4
  %276 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %277 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %276, i32 0, i32 25
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %280 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %279, i32 0, i32 25
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %283 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @memcpy(%struct.TYPE_6__* %278, %struct.TYPE_6__* %281, i32 %284)
  %286 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %287 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %290 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %289, i32 0, i32 6
  store i32 %288, i32* %290, align 8
  %291 = load i32, i32* @jiffies, align 4
  %292 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %293 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %292, i32 0, i32 24
  store i32 %291, i32* %293, align 8
  %294 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %295 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %294, i32 0, i32 22
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  store i32 %297, i32* %5, align 4
  %298 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %299 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %298, i32 0, i32 22
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %6, align 4
  %302 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %303 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @NETWORK_HAS_QOS_MASK, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %119
  %309 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %310 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %309, i32 0, i32 22
  %311 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %312 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %311, i32 0, i32 22
  %313 = call i32 @memcpy(%struct.TYPE_6__* %310, %struct.TYPE_6__* %312, i32 4)
  br label %329

314:                                              ; preds = %119
  %315 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %316 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %315, i32 0, i32 22
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %320 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %319, i32 0, i32 22
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 1
  store i32 %318, i32* %321, align 4
  %322 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %323 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %322, i32 0, i32 22
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %327 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %326, i32 0, i32 22
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 4
  store i32 %325, i32* %328, align 4
  br label %329

329:                                              ; preds = %314, %308
  %330 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %331 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %330, i32 0, i32 22
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %335, label %350

335:                                              ; preds = %329
  %336 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %337 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %336, i32 0, i32 7
  store i32 1, i32* %337, align 4
  %338 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %339 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %335
  %343 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %344 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %343, i32 0, i32 23
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %344, align 8
  %346 = call i32 (i8*, ...) @IEEE80211_DEBUG_QOS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %345)
  br label %349

347:                                              ; preds = %335
  %348 = call i32 (i8*, ...) @IEEE80211_DEBUG_QOS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %349

349:                                              ; preds = %347, %342
  br label %350

350:                                              ; preds = %349, %329
  %351 = load i32, i32* %5, align 4
  %352 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %353 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %352, i32 0, i32 22
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  store i32 %351, i32* %354, align 8
  %355 = load i32, i32* %6, align 4
  %356 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %357 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %356, i32 0, i32 22
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 3
  store i32 %355, i32* %358, align 8
  %359 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %360 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %359, i32 0, i32 21
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %363 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %362, i32 0, i32 21
  store i32 %361, i32* %363, align 8
  %364 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %365 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %364, i32 0, i32 20
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i64 0
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %395, label %371

371:                                              ; preds = %350
  %372 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %373 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %372, i32 0, i32 20
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i64 1
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 2
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %395, label %379

379:                                              ; preds = %371
  %380 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %381 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %380, i32 0, i32 20
  %382 = load %struct.TYPE_6__*, %struct.TYPE_6__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i64 2
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 2
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %395, label %387

387:                                              ; preds = %379
  %388 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %389 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %388, i32 0, i32 20
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i64 3
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 2
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %387, %379, %371, %350
  %396 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %397 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %396, i32 0, i32 20
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %397, align 8
  %399 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %400 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %399, i32 0, i32 20
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** %400, align 8
  %402 = load i32, i32* @WME_AC_PRAM_LEN, align 4
  %403 = call i32 @memcpy(%struct.TYPE_6__* %398, %struct.TYPE_6__* %401, i32 %402)
  br label %404

404:                                              ; preds = %395, %387
  %405 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %406 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %405, i32 0, i32 8
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %409 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %408, i32 0, i32 8
  store i32 %407, i32* %409, align 8
  %410 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %411 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %410, i32 0, i32 18
  %412 = load %struct.TYPE_6__*, %struct.TYPE_6__** %411, align 8
  %413 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %414 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %413, i32 0, i32 18
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %414, align 8
  %416 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %417 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %416, i32 0, i32 8
  %418 = load i32, i32* %417, align 8
  %419 = call i32 @memcpy(%struct.TYPE_6__* %412, %struct.TYPE_6__* %415, i32 %418)
  %420 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %421 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %420, i32 0, i32 17
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %424 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %423, i32 0, i32 17
  store i32 %422, i32* %424, align 4
  %425 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %426 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %425, i32 0, i32 16
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %429 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %428, i32 0, i32 16
  store i32 %427, i32* %429, align 8
  %430 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %431 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %430, i32 0, i32 15
  %432 = load %struct.TYPE_6__*, %struct.TYPE_6__** %431, align 8
  %433 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %434 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %433, i32 0, i32 15
  %435 = load %struct.TYPE_6__*, %struct.TYPE_6__** %434, align 8
  %436 = call i32 @memcpy(%struct.TYPE_6__* %432, %struct.TYPE_6__* %435, i32 2)
  %437 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %438 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %437, i32 0, i32 14
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %441 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %440, i32 0, i32 14
  store i32 %439, i32* %441, align 8
  %442 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %443 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %442, i32 0, i32 13
  %444 = load i32, i32* %443, align 4
  %445 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %446 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %445, i32 0, i32 13
  store i32 %444, i32* %446, align 4
  %447 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %448 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %447, i32 0, i32 12
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %451 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %450, i32 0, i32 12
  store i32 %449, i32* %451, align 8
  %452 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %453 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %452, i32 0, i32 11
  %454 = load %struct.TYPE_6__*, %struct.TYPE_6__** %453, align 8
  %455 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %456 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %455, i32 0, i32 11
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %456, align 8
  %458 = call i32 @memcpy(%struct.TYPE_6__* %454, %struct.TYPE_6__* %457, i32 6)
  %459 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %460 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %459, i32 0, i32 10
  %461 = load i32, i32* %460, align 8
  %462 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %463 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %462, i32 0, i32 10
  store i32 %461, i32* %463, align 8
  %464 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %465 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %464, i32 0, i32 9
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %468 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %467, i32 0, i32 9
  store i32 %466, i32* %468, align 4
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @IEEE80211_DEBUG_QOS(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
