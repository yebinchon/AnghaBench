; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_set_ex_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_set_ex_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32*, %struct.TYPE_8__*, %struct.sas_rphy*, %struct.expander_device }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.sas_ha_struct* }
%struct.TYPE_7__ = type { i32 }
%struct.sas_ha_struct = type { i32 }
%struct.sas_rphy = type { i32 }
%struct.expander_device = type { %struct.ex_phy* }
%struct.ex_phy = type { i64, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64 }
%struct.smp_resp = type { i32, %struct.discover_resp }
%struct.discover_resp = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@SAS_HA_ATA_EH_ACTIVE = common dso_local global i32 0, align 4
@PHY_VACANT = common dso_local global i64 0, align 8
@PHY_NOT_PRESENT = common dso_local global i64 0, align 8
@PHY_EMPTY = common dso_local global i64 0, align 8
@SAS_LINK_RATE_1_5_GBPS = common dso_local global i64 0, align 8
@SAS_PROTOCOL_SATA = common dso_local global i32 0, align 4
@SAS_PHY_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"stp pending\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no device\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"host+target\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"stp\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ssp\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"smp\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@DISCE_REVALIDATE_DOMAIN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"%sex %016llx phy%02d:%c:%X attached: %016llx (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ata: \00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*, i32, i8*)* @sas_set_ex_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_set_ex_phy(%struct.domain_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.smp_resp*, align 8
  %12 = alloca %struct.discover_resp*, align 8
  %13 = alloca %struct.sas_ha_struct*, align 8
  %14 = alloca %struct.expander_device*, align 8
  %15 = alloca %struct.ex_phy*, align 8
  %16 = alloca %struct.sas_rphy*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %20 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.smp_resp*
  store %struct.smp_resp* %25, %struct.smp_resp** %11, align 8
  %26 = load %struct.smp_resp*, %struct.smp_resp** %11, align 8
  %27 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %26, i32 0, i32 1
  store %struct.discover_resp* %27, %struct.discover_resp** %12, align 8
  %28 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %31, align 8
  store %struct.sas_ha_struct* %32, %struct.sas_ha_struct** %13, align 8
  %33 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %34 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %33, i32 0, i32 3
  store %struct.expander_device* %34, %struct.expander_device** %14, align 8
  %35 = load %struct.expander_device*, %struct.expander_device** %14, align 8
  %36 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %35, i32 0, i32 0
  %37 = load %struct.ex_phy*, %struct.ex_phy** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %37, i64 %39
  store %struct.ex_phy* %40, %struct.ex_phy** %15, align 8
  %41 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %42 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %41, i32 0, i32 2
  %43 = load %struct.sas_rphy*, %struct.sas_rphy** %42, align 8
  store %struct.sas_rphy* %43, %struct.sas_rphy** %16, align 8
  %44 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %45 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %44, i32 0, i32 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %3
  %53 = load i32, i32* @SAS_HA_ATA_EH_ACTIVE, align 4
  %54 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %55 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %54, i32 0, i32 0
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = call i64 @WARN_ON_ONCE(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 1, i32* %19, align 4
  br label %435

60:                                               ; preds = %52
  %61 = load %struct.sas_rphy*, %struct.sas_rphy** %16, align 8
  %62 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = call %struct.TYPE_10__* @sas_phy_alloc(i32* %62, i32 %63)
  %65 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %66 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %65, i32 0, i32 8
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %66, align 8
  %67 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %68 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %67, i32 0, i32 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = icmp ne %struct.TYPE_10__* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUG_ON(i32 %72)
  br label %74

74:                                               ; preds = %60, %3
  %75 = load %struct.smp_resp*, %struct.smp_resp** %11, align 8
  %76 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %82 [
    i32 128, label %78
    i32 129, label %86
  ]

78:                                               ; preds = %74
  %79 = load i64, i64* @PHY_VACANT, align 8
  %80 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %81 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %90

82:                                               ; preds = %74
  %83 = load i64, i64* @PHY_NOT_PRESENT, align 8
  %84 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %85 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %90

86:                                               ; preds = %74
  %87 = load i64, i64* @PHY_EMPTY, align 8
  %88 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %89 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %82, %78
  %91 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %92 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %7, align 4
  %94 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %95 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %8, align 4
  %97 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %98 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %97, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %101 = call i32 @memcpy(i32* %23, i32* %99, i32 %100)
  %102 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %103 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PHY_VACANT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %90
  %108 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %109 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %108, i32 0, i32 7
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %112 = call i32 @memset(i32* %110, i32 0, i32 %111)
  %113 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %114 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %113, i32 0, i32 1
  store i32 131, i32* %114, align 8
  %115 = load i32, i32* @SAS_HA_ATA_EH_ACTIVE, align 4
  %116 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %117 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %116, i32 0, i32 0
  %118 = call i64 @test_bit(i32 %115, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %107
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %123 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  br label %324

124:                                              ; preds = %107
  br label %340

125:                                              ; preds = %90
  %126 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %127 = call i32 @to_dev_type(%struct.discover_resp* %126)
  %128 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %129 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @SAS_HA_ATA_EH_ACTIVE, align 4
  %131 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %132 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %131, i32 0, i32 0
  %133 = call i64 @test_bit(i32 %130, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %340

136:                                              ; preds = %125
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %139 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %141 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %144 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %146 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %145, i32 0, i32 15
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %149 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %148, i32 0, i32 15
  store i32 %147, i32* %149, align 8
  %150 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %151 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %154 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %153, i32 0, i32 14
  store i64 %152, i64* %154, align 8
  %155 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %156 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %155, i32 0, i32 14
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %159 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %158, i32 0, i32 13
  store i32 %157, i32* %159, align 8
  %160 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %161 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 1
  %164 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %165 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  %166 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %167 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = shl i32 %168, 1
  %170 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %171 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 8
  %172 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %173 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 131
  br i1 %175, label %183, label %176

176:                                              ; preds = %136
  %177 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %178 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* @SAS_LINK_RATE_1_5_GBPS, align 8
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %176, %136
  %184 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %185 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %184, i32 0, i32 7
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %188 = call i32 @memset(i32* %186, i32 0, i32 %187)
  br label %198

189:                                              ; preds = %176
  %190 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %191 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %190, i32 0, i32 7
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %194 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %193, i32 0, i32 13
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %197 = call i32 @memcpy(i32* %192, i32* %195, i32 %196)
  br label %198

198:                                              ; preds = %189, %183
  %199 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %200 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %199, i32 0, i32 12
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %203 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %202, i32 0, i32 12
  store i32 %201, i32* %203, align 4
  %204 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %205 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %204, i32 0, i32 11
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %208 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %207, i32 0, i32 11
  store i32 %206, i32* %208, align 8
  %209 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %210 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %213 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %212, i32 0, i32 10
  store i32 %211, i32* %213, align 4
  %214 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %215 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %218 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %217, i32 0, i32 9
  store i32 %216, i32* %218, align 8
  %219 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %220 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %219, i32 0, i32 6
  store i32 -1, i32* %220, align 4
  %221 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %222 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %221, i32 0, i32 7
  %223 = load i32*, i32** %222, align 8
  %224 = call i64 @SAS_ADDR(i32* %223)
  %225 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %226 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %225, i32 0, i32 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 6
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 4
  store i64 %224, i64* %229, align 8
  %230 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %231 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %234 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %233, i32 0, i32 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 3
  store i32 %232, i32* %237, align 4
  %238 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %239 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %242 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %241, i32 0, i32 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  store i32 %240, i32* %245, align 8
  %246 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %247 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %250 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %249, i32 0, i32 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 6
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  store i32 %248, i32* %253, align 4
  %254 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %255 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %270, label %258

258:                                              ; preds = %198
  %259 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %260 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %258
  %264 = load i32, i32* @SAS_PROTOCOL_SATA, align 4
  %265 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %266 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %265, i32 0, i32 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 6
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  store i32 %264, i32* %269, align 4
  br label %270

270:                                              ; preds = %263, %258, %198
  %271 = load i32, i32* %5, align 4
  %272 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %273 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %272, i32 0, i32 8
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 6
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 2
  store i32 %271, i32* %276, align 8
  %277 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %278 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %281 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %280, i32 0, i32 8
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 5
  store i32 %279, i32* %283, align 8
  %284 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %285 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %288 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %287, i32 0, i32 8
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 4
  store i32 %286, i32* %290, align 4
  %291 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %292 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %295 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %294, i32 0, i32 8
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 3
  store i32 %293, i32* %297, align 8
  %298 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %299 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %302 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %301, i32 0, i32 8
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 2
  store i32 %300, i32* %304, align 4
  %305 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %306 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %310 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %309, i32 0, i32 8
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 0
  store i64 %308, i64* %312, align 8
  %313 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %314 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = sext i32 %315 to i64
  %317 = load i64, i64* @SAS_PHY_DISABLED, align 8
  %318 = icmp ne i64 %316, %317
  %319 = zext i1 %318 to i32
  %320 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %321 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %320, i32 0, i32 8
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 1
  store i32 %319, i32* %323, align 8
  br label %324

324:                                              ; preds = %270, %120
  %325 = load i32, i32* %17, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %339

327:                                              ; preds = %324
  %328 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %329 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %328, i32 0, i32 8
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %329, align 8
  %331 = call i64 @sas_phy_add(%struct.TYPE_10__* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %327
  %334 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %335 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %334, i32 0, i32 8
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %335, align 8
  %337 = call i32 @sas_phy_free(%struct.TYPE_10__* %336)
  store i32 1, i32* %19, align 4
  br label %435

338:                                              ; preds = %327
  br label %339

339:                                              ; preds = %338, %324
  br label %340

340:                                              ; preds = %339, %135, %124
  %341 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %342 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  switch i32 %343, label %369 [
    i32 130, label %344
    i32 131, label %345
    i32 133, label %346
    i32 134, label %368
    i32 132, label %368
  ]

344:                                              ; preds = %340
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %370

345:                                              ; preds = %340
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %370

346:                                              ; preds = %340
  %347 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %348 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %359

351:                                              ; preds = %346
  %352 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %353 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %351
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  br label %358

357:                                              ; preds = %351
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %358

358:                                              ; preds = %357, %356
  br label %367

359:                                              ; preds = %346
  %360 = load %struct.discover_resp*, %struct.discover_resp** %12, align 8
  %361 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %360, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %359
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %366

365:                                              ; preds = %359
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %18, align 8
  br label %366

366:                                              ; preds = %365, %364
  br label %367

367:                                              ; preds = %366, %358
  br label %370

368:                                              ; preds = %340, %340
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %18, align 8
  br label %370

369:                                              ; preds = %340
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %18, align 8
  br label %370

370:                                              ; preds = %369, %368, %367, %345, %344
  %371 = load i32, i32* %17, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %392, label %373

373:                                              ; preds = %370
  %374 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %375 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* %7, align 4
  %378 = icmp ne i32 %376, %377
  br i1 %378, label %392, label %379

379:                                              ; preds = %373
  %380 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %381 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %8, align 4
  %384 = icmp ne i32 %382, %383
  br i1 %384, label %392, label %385

385:                                              ; preds = %379
  %386 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %387 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %386, i32 0, i32 7
  %388 = load i32*, i32** %387, align 8
  %389 = call i64 @SAS_ADDR(i32* %388)
  %390 = call i64 @SAS_ADDR(i32* %23)
  %391 = icmp ne i64 %389, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %385, %379, %373, %370
  br label %394

393:                                              ; preds = %385
  store i32 1, i32* %19, align 4
  br label %435

394:                                              ; preds = %392
  %395 = load i32, i32* @SAS_HA_ATA_EH_ACTIVE, align 4
  %396 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %397 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %396, i32 0, i32 0
  %398 = call i64 @test_bit(i32 %395, i32* %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %408

400:                                              ; preds = %394
  %401 = load i32, i32* @DISCE_REVALIDATE_DOMAIN, align 4
  %402 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %403 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %402, i32 0, i32 1
  %404 = load %struct.TYPE_8__*, %struct.TYPE_8__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 0
  %407 = call i32 @set_bit(i32 %401, i32* %406)
  br label %408

408:                                              ; preds = %400, %394
  %409 = load i32, i32* @SAS_HA_ATA_EH_ACTIVE, align 4
  %410 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %411 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %410, i32 0, i32 0
  %412 = call i64 @test_bit(i32 %409, i32* %411)
  %413 = icmp ne i64 %412, 0
  %414 = zext i1 %413 to i64
  %415 = select i1 %413, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %416 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %417 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %416, i32 0, i32 0
  %418 = load i32*, i32** %417, align 8
  %419 = call i64 @SAS_ADDR(i32* %418)
  %420 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %421 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %424 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %425 = call i32 @sas_route_char(%struct.domain_device* %423, %struct.ex_phy* %424)
  %426 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %427 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.ex_phy*, %struct.ex_phy** %15, align 8
  %430 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %429, i32 0, i32 7
  %431 = load i32*, i32** %430, align 8
  %432 = call i64 @SAS_ADDR(i32* %431)
  %433 = load i8*, i8** %18, align 8
  %434 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8* %415, i64 %419, i32 %422, i32 %425, i32 %428, i64 %432, i8* %433)
  store i32 0, i32* %19, align 4
  br label %435

435:                                              ; preds = %408, %393, %333, %59
  %436 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %436)
  %437 = load i32, i32* %19, align 4
  switch i32 %437, label %439 [
    i32 0, label %438
    i32 1, label %438
  ]

438:                                              ; preds = %435, %435
  ret void

439:                                              ; preds = %435
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON_ONCE(i64) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local %struct.TYPE_10__* @sas_phy_alloc(i32*, i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @to_dev_type(%struct.discover_resp*) #2

declare dso_local i64 @SAS_ADDR(i32*) #2

declare dso_local i64 @sas_phy_add(%struct.TYPE_10__*) #2

declare dso_local i32 @sas_phy_free(%struct.TYPE_10__*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @pr_debug(i8*, i8*, i64, i32, i32, i32, i64, i8*) #2

declare dso_local i32 @sas_route_char(%struct.domain_device*, %struct.ex_phy*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
