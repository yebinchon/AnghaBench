; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_update_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_update_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32 }
%struct.rtllib_network = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32 }

@NETWORK_HAS_ERP_VALUE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NETWORK_HAS_QOS_PARAMETERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"QoS the network %s is QoS supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"QoS the network is QoS supported\0A\00", align 1
@WME_AC_PRAM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, %struct.rtllib_network*, %struct.rtllib_network*)* @update_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_network(%struct.rtllib_device* %0, %struct.rtllib_network* %1, %struct.rtllib_network* %2) #0 {
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca %struct.rtllib_network*, align 8
  %6 = alloca %struct.rtllib_network*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store %struct.rtllib_network* %1, %struct.rtllib_network** %5, align 8
  store %struct.rtllib_network* %2, %struct.rtllib_network** %6, align 8
  %9 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %10 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %9, i32 0, i32 54
  %11 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %12 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %11, i32 0, i32 54
  %13 = call i32 @memcpy(%struct.TYPE_6__* %10, %struct.TYPE_6__* %12, i32 4)
  %14 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %15 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %14, i32 0, i32 53
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %18 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %17, i32 0, i32 53
  store i32 %16, i32* %18, align 8
  %19 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %20 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %19, i32 0, i32 52
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %23 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %22, i32 0, i32 52
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %26 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memcpy(%struct.TYPE_6__* %21, %struct.TYPE_6__* %24, i32 %27)
  %29 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %30 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %33 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %35 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %34, i32 0, i32 51
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %38 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %37, i32 0, i32 51
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %41 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(%struct.TYPE_6__* %36, %struct.TYPE_6__* %39, i32 %42)
  %44 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %45 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %48 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %50 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %102

53:                                               ; preds = %3
  %54 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %55 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %60 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %59, i32 0, i32 50
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = call i32 @memset(%struct.TYPE_6__* %61, i32 0, i32 8)
  %63 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %64 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %67 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %69 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %68, i32 0, i32 50
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %72 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %71, i32 0, i32 26
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %75 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memcpy(%struct.TYPE_6__* %70, %struct.TYPE_6__* %73, i32 %76)
  br label %101

78:                                               ; preds = %53
  %79 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %80 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %79, i32 0, i32 26
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %83 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @memset(%struct.TYPE_6__* %81, i32 0, i32 %84)
  %86 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %87 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %90 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %92 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %91, i32 0, i32 26
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %95 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %94, i32 0, i32 26
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %98 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @memcpy(%struct.TYPE_6__* %93, %struct.TYPE_6__* %96, i32 %99)
  br label %101

101:                                              ; preds = %78, %58
  br label %102

102:                                              ; preds = %101, %3
  %103 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %104 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %103, i32 0, i32 49
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %107 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %106, i32 0, i32 49
  store i32 %105, i32* %107, align 8
  %108 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %109 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %112 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %114 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %113, i32 0, i32 48
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %119 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %118, i32 0, i32 48
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %117, i32* %121, align 4
  %122 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %123 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %122, i32 0, i32 48
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %128 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %127, i32 0, i32 48
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 %126, i32* %130, align 4
  %131 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %132 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @NETWORK_HAS_ERP_VALUE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %102
  %138 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %139 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %138, i32 0, i32 47
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %142 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %141, i32 0, i32 47
  store i32 %140, i32* %142, align 8
  %143 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %144 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %143, i32 0, i32 5
  store i32 1, i32* %144, align 4
  %145 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %146 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %145, i32 0, i32 5
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %137, %102
  %148 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %149 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %148, i32 0, i32 46
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %152 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %151, i32 0, i32 46
  store i32 %150, i32* %152, align 4
  %153 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %154 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %153, i32 0, i32 45
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %157 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %156, i32 0, i32 45
  store i32 %155, i32* %157, align 8
  %158 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %159 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %158, i32 0, i32 44
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %162 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %161, i32 0, i32 44
  store i32 %160, i32* %162, align 4
  %163 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %164 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %163, i32 0, i32 43
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %167 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %166, i32 0, i32 43
  store i32 %165, i32* %167, align 8
  %168 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %169 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %168, i32 0, i32 42
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %172 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %171, i32 0, i32 42
  store i32 %170, i32* %172, align 4
  %173 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %174 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %173, i32 0, i32 41
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %177 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %176, i32 0, i32 41
  store i32 %175, i32* %177, align 8
  %178 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %179 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %178, i32 0, i32 40
  %180 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %181 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %180, i32 0, i32 40
  %182 = call i32 @memcpy(%struct.TYPE_6__* %179, %struct.TYPE_6__* %181, i32 4)
  %183 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %184 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %183, i32 0, i32 39
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %188 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %187, i32 0, i32 39
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 7
  store i32 %186, i32* %189, align 4
  %190 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %191 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %190, i32 0, i32 39
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %195 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %194, i32 0, i32 39
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 6
  store i32 %193, i32* %196, align 8
  %197 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %198 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %197, i32 0, i32 39
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %202 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %201, i32 0, i32 39
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 8
  %204 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %205 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %204, i32 0, i32 39
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 5
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %209 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %208, i32 0, i32 39
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 5
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %213 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %212, i32 0, i32 39
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @memcpy(%struct.TYPE_6__* %207, %struct.TYPE_6__* %211, i32 %215)
  %217 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %218 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %217, i32 0, i32 39
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %222 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %221, i32 0, i32 39
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  store i32 %220, i32* %223, align 4
  %224 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %225 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %224, i32 0, i32 39
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 4
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %229 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %228, i32 0, i32 39
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 4
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %230, align 8
  %232 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %233 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %232, i32 0, i32 39
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @memcpy(%struct.TYPE_6__* %227, %struct.TYPE_6__* %231, i32 %235)
  %237 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %238 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %237, i32 0, i32 39
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %242 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %241, i32 0, i32 39
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 3
  store i32 %240, i32* %243, align 4
  %244 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %245 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %244, i32 0, i32 39
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %249 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %248, i32 0, i32 39
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 2
  store i32 %247, i32* %250, align 8
  %251 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %252 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %251, i32 0, i32 38
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %255 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %254, i32 0, i32 38
  store i32 %253, i32* %255, align 4
  %256 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %257 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %256, i32 0, i32 37
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %260 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %259, i32 0, i32 37
  store i32 %258, i32* %260, align 8
  %261 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %262 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %261, i32 0, i32 36
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %265 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %264, i32 0, i32 36
  store i32 %263, i32* %265, align 4
  %266 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %267 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %266, i32 0, i32 35
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %270 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %269, i32 0, i32 35
  store i32 %268, i32* %270, align 8
  %271 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %272 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %271, i32 0, i32 34
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %275 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %274, i32 0, i32 34
  store i32 %273, i32* %275, align 4
  %276 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %277 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %276, i32 0, i32 33
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %280 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %279, i32 0, i32 33
  store i32 %278, i32* %280, align 8
  %281 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %282 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %281, i32 0, i32 32
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %285 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %284, i32 0, i32 32
  store i32 %283, i32* %285, align 4
  %286 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %287 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %286, i32 0, i32 31
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %290 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %289, i32 0, i32 31
  store i32 %288, i32* %290, align 8
  %291 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %292 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %291, i32 0, i32 30
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %292, align 8
  %294 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %295 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %294, i32 0, i32 30
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %295, align 8
  %297 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %298 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @memcpy(%struct.TYPE_6__* %293, %struct.TYPE_6__* %296, i32 %299)
  %301 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %302 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %305 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %304, i32 0, i32 6
  store i32 %303, i32* %305, align 8
  %306 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %307 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %306, i32 0, i32 29
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %307, align 8
  %309 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %310 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %309, i32 0, i32 29
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %310, align 8
  %312 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %313 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %312, i32 0, i32 7
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @memcpy(%struct.TYPE_6__* %308, %struct.TYPE_6__* %311, i32 %314)
  %316 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %317 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %320 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %319, i32 0, i32 7
  store i32 %318, i32* %320, align 4
  %321 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %322 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %321, i32 0, i32 28
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %322, align 8
  %324 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %325 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %324, i32 0, i32 28
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %325, align 8
  %327 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %328 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %327, i32 0, i32 8
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @memcpy(%struct.TYPE_6__* %323, %struct.TYPE_6__* %326, i32 %329)
  %331 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %332 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %331, i32 0, i32 8
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %335 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %334, i32 0, i32 8
  store i32 %333, i32* %335, align 8
  %336 = load i32, i32* @jiffies, align 4
  %337 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %338 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %337, i32 0, i32 27
  store i32 %336, i32* %338, align 8
  %339 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %340 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %339, i32 0, i32 25
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  store i32 %342, i32* %7, align 4
  %343 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %344 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %343, i32 0, i32 25
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 4
  store i32 %346, i32* %8, align 4
  %347 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %348 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %347, i32 0, i32 25
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %352 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %351, i32 0, i32 25
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 1
  store i32 %350, i32* %353, align 4
  %354 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %355 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @NETWORK_HAS_QOS_PARAMETERS, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %147
  %361 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %362 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %361, i32 0, i32 25
  %363 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %364 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %363, i32 0, i32 25
  %365 = call i32 @memcpy(%struct.TYPE_6__* %362, %struct.TYPE_6__* %364, i32 4)
  br label %366

366:                                              ; preds = %360, %147
  %367 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %368 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %367, i32 0, i32 25
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %372, label %391

372:                                              ; preds = %366
  %373 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %374 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %385

377:                                              ; preds = %372
  %378 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %379 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %382 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %381, i32 0, i32 26
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %382, align 8
  %384 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %380, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %383)
  br label %390

385:                                              ; preds = %372
  %386 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %387 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %388, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %390

390:                                              ; preds = %385, %377
  br label %391

391:                                              ; preds = %390, %366
  %392 = load i32, i32* %7, align 4
  %393 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %394 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %393, i32 0, i32 25
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 0
  store i32 %392, i32* %395, align 8
  %396 = load i32, i32* %8, align 4
  %397 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %398 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %397, i32 0, i32 25
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 3
  store i32 %396, i32* %399, align 8
  %400 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %401 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %400, i32 0, i32 24
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %404 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %403, i32 0, i32 24
  store i32 %402, i32* %404, align 8
  %405 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %406 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %405, i32 0, i32 23
  %407 = load %struct.TYPE_6__*, %struct.TYPE_6__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i64 0
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %436, label %412

412:                                              ; preds = %391
  %413 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %414 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %413, i32 0, i32 23
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i64 1
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %436, label %420

420:                                              ; preds = %412
  %421 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %422 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %421, i32 0, i32 23
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i64 2
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 2
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %436, label %428

428:                                              ; preds = %420
  %429 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %430 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %429, i32 0, i32 23
  %431 = load %struct.TYPE_6__*, %struct.TYPE_6__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i64 3
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 2
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %445

436:                                              ; preds = %428, %420, %412, %391
  %437 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %438 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %437, i32 0, i32 23
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %438, align 8
  %440 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %441 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %440, i32 0, i32 23
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** %441, align 8
  %443 = load i32, i32* @WME_AC_PRAM_LEN, align 4
  %444 = call i32 @memcpy(%struct.TYPE_6__* %439, %struct.TYPE_6__* %442, i32 %443)
  br label %445

445:                                              ; preds = %436, %428
  %446 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %447 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %446, i32 0, i32 22
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %450 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %449, i32 0, i32 22
  store i32 %448, i32* %450, align 8
  %451 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %452 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %451, i32 0, i32 21
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %455 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %454, i32 0, i32 21
  store i32 %453, i32* %455, align 4
  %456 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %457 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %456, i32 0, i32 20
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %460 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %459, i32 0, i32 20
  store i32 %458, i32* %460, align 8
  %461 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %462 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %461, i32 0, i32 9
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %465 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %464, i32 0, i32 9
  store i32 %463, i32* %465, align 4
  %466 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %467 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %466, i32 0, i32 19
  %468 = load %struct.TYPE_6__*, %struct.TYPE_6__** %467, align 8
  %469 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %470 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %469, i32 0, i32 19
  %471 = load %struct.TYPE_6__*, %struct.TYPE_6__** %470, align 8
  %472 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %473 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %472, i32 0, i32 9
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @memcpy(%struct.TYPE_6__* %468, %struct.TYPE_6__* %471, i32 %474)
  %476 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %477 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %476, i32 0, i32 18
  %478 = load i32, i32* %477, align 4
  %479 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %480 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %479, i32 0, i32 18
  store i32 %478, i32* %480, align 4
  %481 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %482 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %481, i32 0, i32 17
  %483 = load i32, i32* %482, align 8
  %484 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %485 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %484, i32 0, i32 17
  store i32 %483, i32* %485, align 8
  %486 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %487 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %486, i32 0, i32 16
  %488 = load %struct.TYPE_6__*, %struct.TYPE_6__** %487, align 8
  %489 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %490 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %489, i32 0, i32 16
  %491 = load %struct.TYPE_6__*, %struct.TYPE_6__** %490, align 8
  %492 = call i32 @memcpy(%struct.TYPE_6__* %488, %struct.TYPE_6__* %491, i32 2)
  %493 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %494 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %493, i32 0, i32 15
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %497 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %496, i32 0, i32 15
  store i32 %495, i32* %497, align 8
  %498 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %499 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %498, i32 0, i32 14
  %500 = load i32, i32* %499, align 4
  %501 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %502 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %501, i32 0, i32 14
  store i32 %500, i32* %502, align 4
  %503 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %504 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %503, i32 0, i32 13
  %505 = load i32, i32* %504, align 8
  %506 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %507 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %506, i32 0, i32 13
  store i32 %505, i32* %507, align 8
  %508 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %509 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %508, i32 0, i32 12
  %510 = load %struct.TYPE_6__*, %struct.TYPE_6__** %509, align 8
  %511 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %512 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %511, i32 0, i32 12
  %513 = load %struct.TYPE_6__*, %struct.TYPE_6__** %512, align 8
  %514 = call i32 @memcpy(%struct.TYPE_6__* %510, %struct.TYPE_6__* %513, i32 6)
  %515 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %516 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %515, i32 0, i32 11
  %517 = load i32, i32* %516, align 4
  %518 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %519 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %518, i32 0, i32 11
  store i32 %517, i32* %519, align 4
  %520 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %521 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %520, i32 0, i32 10
  %522 = load i32, i32* %521, align 8
  %523 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %524 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %523, i32 0, i32 10
  store i32 %522, i32* %524, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
