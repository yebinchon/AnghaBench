; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_discover_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_discover_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.expander_device }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.expander_device = type { %struct.ex_phy* }
%struct.ex_phy = type { i64, i64, i32, i32, i32 }

@SAS_SATA_SPINUP_HOLD = common dso_local global i64 0, align 8
@PHY_FUNC_LINK_RESET = common dso_local global i32 0, align 4
@TABLE_ROUTING = common dso_local global i64 0, align 8
@SAS_PHY_UNUSED = common dso_local global i32 0, align 4
@DIRECT_ROUTING = common dso_local global i64 0, align 8
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@SAS_LINK_RATE_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"unknown device type(0x%x) attached to ex %016llx phy%02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"configure routing for dev %016llx reported 0x%x. Forgotten\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Attaching ex phy%02d to wide port %016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"second fanout expander %016llx phy%02d attached to ex %016llx phy%02d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"ex %016llx phy%02d failed to discover\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32)* @sas_ex_discover_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_ex_discover_dev(%struct.domain_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.expander_device*, align 8
  %7 = alloca %struct.ex_phy*, align 8
  %8 = alloca %struct.domain_device*, align 8
  %9 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %11 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %10, i32 0, i32 3
  store %struct.expander_device* %11, %struct.expander_device** %6, align 8
  %12 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %13 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %12, i32 0, i32 0
  %14 = load %struct.ex_phy*, %struct.ex_phy** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %14, i64 %16
  store %struct.ex_phy* %17, %struct.ex_phy** %7, align 8
  store %struct.domain_device* null, %struct.domain_device** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %19 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SAS_SATA_SPINUP_HOLD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PHY_FUNC_LINK_RESET, align 4
  %27 = call i32 @sas_smp_phy_control(%struct.domain_device* %24, i32 %25, i32 %26, i32* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @sas_ex_phy_discover(%struct.domain_device* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %274

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %41 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %60, label %44

44:                                               ; preds = %39
  %45 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %46 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @SAS_ADDR(i32 %47)
  %49 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %50 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @SAS_ADDR(i32 %53)
  %55 = icmp eq i64 %48, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @sas_add_parent_port(%struct.domain_device* %57, i32 %58)
  store i32 0, i32* %3, align 4
  br label %274

60:                                               ; preds = %44, %39
  %61 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %62 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %65, label %96

65:                                               ; preds = %60
  %66 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %67 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @SAS_ADDR(i32 %68)
  %70 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %71 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @SAS_ADDR(i32 %74)
  %76 = icmp eq i64 %69, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %65
  %78 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @sas_add_parent_port(%struct.domain_device* %78, i32 %79)
  %81 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %82 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TABLE_ROUTING, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %90 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @sas_configure_phy(%struct.domain_device* %87, i32 %88, i32 %93, i32 1)
  br label %95

95:                                               ; preds = %86, %77
  store i32 0, i32* %3, align 4
  br label %274

96:                                               ; preds = %65, %60
  %97 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %98 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %101 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @sas_dev_present_in_domain(%struct.TYPE_6__* %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %107 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %108 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @sas_ex_disable_port(%struct.domain_device* %106, i32 %109)
  br label %111

111:                                              ; preds = %105, %96
  %112 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %113 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SAS_PHY_UNUSED, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %111
  %118 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %119 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DIRECT_ROUTING, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %125 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %128 = call i32 @memset(i32 %126, i32 0, i32 %127)
  %129 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %130 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %131 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @sas_configure_routing(%struct.domain_device* %129, i32 %132)
  br label %134

134:                                              ; preds = %123, %117
  store i32 0, i32* %3, align 4
  br label %274

135:                                              ; preds = %111
  %136 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %137 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SAS_LINK_RATE_UNKNOWN, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %274

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %145 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 130
  br i1 %147, label %148, label %173

148:                                              ; preds = %143
  %149 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %150 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 129
  br i1 %152, label %153, label %173

153:                                              ; preds = %148
  %154 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %155 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 131
  br i1 %157, label %158, label %173

158:                                              ; preds = %153
  %159 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %160 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 128
  br i1 %162, label %163, label %173

163:                                              ; preds = %158
  %164 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %165 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %168 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @SAS_ADDR(i32 %169)
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %166, i64 %170, i32 %171)
  store i32 0, i32* %3, align 4
  br label %274

173:                                              ; preds = %158, %153, %148, %143
  %174 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %175 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %176 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @sas_configure_routing(%struct.domain_device* %174, i32 %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %173
  %182 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %183 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @SAS_ADDR(i32 %184)
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @pr_notice(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %185, i32 %186)
  %188 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %189 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %190 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @sas_disable_routing(%struct.domain_device* %188, i32 %191)
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %3, align 4
  br label %274

194:                                              ; preds = %173
  %195 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %196 = load i32, i32* %5, align 4
  %197 = call i64 @sas_ex_join_wide_port(%struct.domain_device* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %194
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %203 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @SAS_ADDR(i32 %204)
  %206 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %201, i64 %205)
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %3, align 4
  br label %274

208:                                              ; preds = %194
  %209 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %210 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  switch i32 %211, label %261 [
    i32 130, label %212
    i32 128, label %212
    i32 129, label %216
    i32 131, label %257
  ]

212:                                              ; preds = %208, %208
  %213 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %214 = load i32, i32* %5, align 4
  %215 = call %struct.domain_device* @sas_ex_discover_end_dev(%struct.domain_device* %213, i32 %214)
  store %struct.domain_device* %215, %struct.domain_device** %8, align 8
  br label %262

216:                                              ; preds = %208
  %217 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %218 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %217, i32 0, i32 1
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @SAS_ADDR(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %244

225:                                              ; preds = %216
  %226 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %227 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i64 @SAS_ADDR(i32 %228)
  %230 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %231 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %235 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @SAS_ADDR(i32 %236)
  %238 = load i32, i32* %5, align 4
  %239 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i64 %229, i64 %233, i64 %237, i32 %238)
  %240 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %241 = load i32, i32* %5, align 4
  %242 = call i32 @sas_ex_disable_phy(%struct.domain_device* %240, i32 %241)
  %243 = load i32, i32* %9, align 4
  store i32 %243, i32* %3, align 4
  br label %274

244:                                              ; preds = %216
  %245 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %246 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %245, i32 0, i32 1
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %252 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %255 = call i32 @memcpy(i32 %250, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %244
  br label %257

257:                                              ; preds = %208, %256
  %258 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %259 = load i32, i32* %5, align 4
  %260 = call %struct.domain_device* @sas_ex_discover_expander(%struct.domain_device* %258, i32 %259)
  store %struct.domain_device* %260, %struct.domain_device** %8, align 8
  br label %262

261:                                              ; preds = %208
  br label %262

262:                                              ; preds = %261, %257, %212
  %263 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %264 = icmp ne %struct.domain_device* %263, null
  br i1 %264, label %272, label %265

265:                                              ; preds = %262
  %266 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %267 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i64 @SAS_ADDR(i32 %268)
  %270 = load i32, i32* %5, align 4
  %271 = call i32 @pr_notice(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %269, i32 %270)
  br label %272

272:                                              ; preds = %265, %262
  %273 = load i32, i32* %9, align 4
  store i32 %273, i32* %3, align 4
  br label %274

274:                                              ; preds = %272, %225, %199, %181, %163, %141, %134, %95, %56, %36
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @sas_smp_phy_control(%struct.domain_device*, i32, i32, i32*) #1

declare dso_local i32 @sas_ex_phy_discover(%struct.domain_device*, i32) #1

declare dso_local i64 @SAS_ADDR(i32) #1

declare dso_local i32 @sas_add_parent_port(%struct.domain_device*, i32) #1

declare dso_local i32 @sas_configure_phy(%struct.domain_device*, i32, i32, i32) #1

declare dso_local i64 @sas_dev_present_in_domain(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sas_ex_disable_port(%struct.domain_device*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sas_configure_routing(%struct.domain_device*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i64, i32) #1

declare dso_local i32 @pr_notice(i8*, i64, i32) #1

declare dso_local i32 @sas_disable_routing(%struct.domain_device*, i32) #1

declare dso_local i64 @sas_ex_join_wide_port(%struct.domain_device*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, ...) #1

declare dso_local %struct.domain_device* @sas_ex_discover_end_dev(%struct.domain_device*, i32) #1

declare dso_local i32 @sas_ex_disable_phy(%struct.domain_device*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.domain_device* @sas_ex_discover_expander(%struct.domain_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
