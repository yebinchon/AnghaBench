; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_device_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_device_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.icm_pkg_header = type { i32 }
%struct.icm_fr_event_device_connected = type { i64, i32, i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tb_switch = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.icm = type { i32 (%struct.tb*, i64, i64, i32*)* }
%struct.tb_xdomain = type { i32 }

@ICM_LINK_INFO_LINK_MASK = common dso_local global i64 0, align 8
@ICM_LINK_INFO_DEPTH_MASK = common dso_local global i64 0, align 8
@ICM_LINK_INFO_DEPTH_SHIFT = common dso_local global i64 0, align 8
@ICM_LINK_INFO_APPROVED = common dso_local global i32 0, align 4
@ICM_FLAGS_SLEVEL_MASK = common dso_local global i32 0, align 4
@ICM_FLAGS_SLEVEL_SHIFT = common dso_local global i32 0, align 4
@ICM_LINK_INFO_BOOT = common dso_local global i32 0, align 4
@ICM_LINK_INFO_REJECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"switch at %u.%u was rejected by ICM firmware because topology limit exceeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"failed to update route string for switch at %u.%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to find parent switch for %u.%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"failed to find route string for switch at %u.%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb*, %struct.icm_pkg_header*)* @icm_fr_device_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icm_fr_device_connected(%struct.tb* %0, %struct.icm_pkg_header* %1) #0 {
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.icm_pkg_header*, align 8
  %5 = alloca %struct.icm_fr_event_device_connected*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tb_switch*, align 8
  %8 = alloca %struct.tb_switch*, align 8
  %9 = alloca %struct.icm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tb_xdomain*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.tb* %0, %struct.tb** %3, align 8
  store %struct.icm_pkg_header* %1, %struct.icm_pkg_header** %4, align 8
  %20 = load %struct.icm_pkg_header*, %struct.icm_pkg_header** %4, align 8
  %21 = bitcast %struct.icm_pkg_header* %20 to %struct.icm_fr_event_device_connected*
  store %struct.icm_fr_event_device_connected* %21, %struct.icm_fr_event_device_connected** %5, align 8
  %22 = load %struct.tb*, %struct.tb** %3, align 8
  %23 = call %struct.icm* @tb_priv(%struct.tb* %22)
  store %struct.icm* %23, %struct.icm** %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.tb*, %struct.tb** %3, align 8
  %25 = call i32 @icm_postpone_rescan(%struct.tb* %24)
  %26 = load %struct.icm_fr_event_device_connected*, %struct.icm_fr_event_device_connected** %5, align 8
  %27 = getelementptr inbounds %struct.icm_fr_event_device_connected, %struct.icm_fr_event_device_connected* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ICM_LINK_INFO_LINK_MASK, align 8
  %30 = and i64 %28, %29
  store i64 %30, i64* %12, align 8
  %31 = load %struct.icm_fr_event_device_connected*, %struct.icm_fr_event_device_connected** %5, align 8
  %32 = getelementptr inbounds %struct.icm_fr_event_device_connected, %struct.icm_fr_event_device_connected* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ICM_LINK_INFO_DEPTH_MASK, align 8
  %35 = and i64 %33, %34
  %36 = load i64, i64* @ICM_LINK_INFO_DEPTH_SHIFT, align 8
  %37 = ashr i64 %35, %36
  store i64 %37, i64* %13, align 8
  %38 = load %struct.icm_fr_event_device_connected*, %struct.icm_fr_event_device_connected** %5, align 8
  %39 = getelementptr inbounds %struct.icm_fr_event_device_connected, %struct.icm_fr_event_device_connected* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @ICM_LINK_INFO_APPROVED, align 4
  %42 = sext i32 %41 to i64
  %43 = and i64 %40, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load %struct.icm_fr_event_device_connected*, %struct.icm_fr_event_device_connected** %5, align 8
  %46 = getelementptr inbounds %struct.icm_fr_event_device_connected, %struct.icm_fr_event_device_connected* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ICM_FLAGS_SLEVEL_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @ICM_FLAGS_SLEVEL_SHIFT, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct.icm_fr_event_device_connected*, %struct.icm_fr_event_device_connected** %5, align 8
  %54 = getelementptr inbounds %struct.icm_fr_event_device_connected, %struct.icm_fr_event_device_connected* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @ICM_LINK_INFO_BOOT, align 4
  %57 = sext i32 %56 to i64
  %58 = and i64 %55, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %14, align 4
  %60 = load %struct.icm_fr_event_device_connected*, %struct.icm_fr_event_device_connected** %5, align 8
  %61 = getelementptr inbounds %struct.icm_fr_event_device_connected, %struct.icm_fr_event_device_connected* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @ICM_LINK_INFO_REJECTED, align 4
  %64 = sext i32 %63 to i64
  %65 = and i64 %62, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %2
  %68 = load %struct.tb*, %struct.tb** %3, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @tb_info(%struct.tb* %68, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %69, i64 %70)
  br label %249

72:                                               ; preds = %2
  %73 = load %struct.tb*, %struct.tb** %3, align 8
  %74 = load %struct.icm_fr_event_device_connected*, %struct.icm_fr_event_device_connected** %5, align 8
  %75 = getelementptr inbounds %struct.icm_fr_event_device_connected, %struct.icm_fr_event_device_connected* %74, i32 0, i32 4
  %76 = call %struct.tb_switch* @tb_switch_find_by_uuid(%struct.tb* %73, i32* %75)
  store %struct.tb_switch* %76, %struct.tb_switch** %7, align 8
  %77 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %78 = icmp ne %struct.tb_switch* %77, null
  br i1 %78, label %79, label %158

79:                                               ; preds = %72
  %80 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %81 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.tb_switch* @tb_to_switch(i32 %83)
  store %struct.tb_switch* %84, %struct.tb_switch** %8, align 8
  %85 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %86 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @tb_phy_port_from_link(i64 %87)
  store i64 %88, i64* %18, align 8
  %89 = load i64, i64* %12, align 8
  %90 = call i64 @tb_phy_port_from_link(i64 %89)
  store i64 %90, i64* %17, align 8
  %91 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %92 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %153

96:                                               ; preds = %79
  %97 = load i64, i64* %18, align 8
  %98 = load i64, i64* %17, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %153

100:                                              ; preds = %96
  %101 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %102 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %153

110:                                              ; preds = %100
  %111 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %112 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %12, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %110
  %117 = load %struct.icm*, %struct.icm** %9, align 8
  %118 = getelementptr inbounds %struct.icm, %struct.icm* %117, i32 0, i32 0
  %119 = load i32 (%struct.tb*, i64, i64, i32*)*, i32 (%struct.tb*, i64, i64, i32*)** %118, align 8
  %120 = load %struct.tb*, %struct.tb** %3, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %13, align 8
  %123 = call i32 %119(%struct.tb* %120, i64 %121, i64 %122, i32* %15)
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %116
  %127 = load %struct.tb*, %struct.tb** %3, align 8
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* %13, align 8
  %130 = call i32 @tb_err(%struct.tb* %127, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %128, i64 %129)
  %131 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %132 = call i32 @tb_switch_put(%struct.tb_switch* %131)
  br label %249

133:                                              ; preds = %116
  br label %137

134:                                              ; preds = %110
  %135 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %136 = call i32 @tb_route(%struct.tb_switch* %135)
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %134, %133
  %138 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %139 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.icm_fr_event_device_connected*, %struct.icm_fr_event_device_connected** %5, align 8
  %142 = getelementptr inbounds %struct.icm_fr_event_device_connected, %struct.icm_fr_event_device_connected* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.icm_fr_event_device_connected*, %struct.icm_fr_event_device_connected** %5, align 8
  %145 = getelementptr inbounds %struct.icm_fr_event_device_connected, %struct.icm_fr_event_device_connected* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* %13, align 8
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @update_switch(%struct.tb_switch* %138, %struct.tb_switch* %139, i32 %140, i32 %143, i32 %146, i64 %147, i64 %148, i32 %149)
  %151 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %152 = call i32 @tb_switch_put(%struct.tb_switch* %151)
  br label %249

153:                                              ; preds = %100, %96, %79
  %154 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %155 = call i32 @remove_switch(%struct.tb_switch* %154)
  %156 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %157 = call i32 @tb_switch_put(%struct.tb_switch* %156)
  br label %158

158:                                              ; preds = %153, %72
  %159 = load %struct.tb*, %struct.tb** %3, align 8
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* %13, align 8
  %162 = call %struct.tb_switch* @tb_switch_find_by_link_depth(%struct.tb* %159, i64 %160, i64 %161)
  store %struct.tb_switch* %162, %struct.tb_switch** %7, align 8
  %163 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %164 = icmp ne %struct.tb_switch* %163, null
  br i1 %164, label %176, label %165

165:                                              ; preds = %158
  %166 = load i64, i64* %12, align 8
  %167 = call i64 @dual_link_from_link(i64 %166)
  store i64 %167, i64* %19, align 8
  %168 = load i64, i64* %19, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.tb*, %struct.tb** %3, align 8
  %172 = load i64, i64* %19, align 8
  %173 = load i64, i64* %13, align 8
  %174 = call %struct.tb_switch* @tb_switch_find_by_link_depth(%struct.tb* %171, i64 %172, i64 %173)
  store %struct.tb_switch* %174, %struct.tb_switch** %7, align 8
  br label %175

175:                                              ; preds = %170, %165
  br label %176

176:                                              ; preds = %175, %158
  %177 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %178 = icmp ne %struct.tb_switch* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %181 = call i32 @remove_switch(%struct.tb_switch* %180)
  %182 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %183 = call i32 @tb_switch_put(%struct.tb_switch* %182)
  br label %184

184:                                              ; preds = %179, %176
  %185 = load %struct.tb*, %struct.tb** %3, align 8
  %186 = load i64, i64* %12, align 8
  %187 = load i64, i64* %13, align 8
  %188 = call %struct.tb_xdomain* @tb_xdomain_find_by_link_depth(%struct.tb* %185, i64 %186, i64 %187)
  store %struct.tb_xdomain* %188, %struct.tb_xdomain** %11, align 8
  %189 = load %struct.tb_xdomain*, %struct.tb_xdomain** %11, align 8
  %190 = icmp ne %struct.tb_xdomain* %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %184
  %192 = load %struct.tb_xdomain*, %struct.tb_xdomain** %11, align 8
  %193 = call i32 @remove_xdomain(%struct.tb_xdomain* %192)
  %194 = load %struct.tb_xdomain*, %struct.tb_xdomain** %11, align 8
  %195 = call i32 @tb_xdomain_put(%struct.tb_xdomain* %194)
  br label %196

196:                                              ; preds = %191, %184
  %197 = load %struct.tb*, %struct.tb** %3, align 8
  %198 = load i64, i64* %12, align 8
  %199 = load i64, i64* %13, align 8
  %200 = sub nsw i64 %199, 1
  %201 = call %struct.tb_switch* @tb_switch_find_by_link_depth(%struct.tb* %197, i64 %198, i64 %200)
  store %struct.tb_switch* %201, %struct.tb_switch** %8, align 8
  %202 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %203 = icmp ne %struct.tb_switch* %202, null
  br i1 %203, label %209, label %204

204:                                              ; preds = %196
  %205 = load %struct.tb*, %struct.tb** %3, align 8
  %206 = load i64, i64* %12, align 8
  %207 = load i64, i64* %13, align 8
  %208 = call i32 @tb_err(%struct.tb* %205, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %206, i64 %207)
  br label %249

209:                                              ; preds = %196
  %210 = load %struct.icm*, %struct.icm** %9, align 8
  %211 = getelementptr inbounds %struct.icm, %struct.icm* %210, i32 0, i32 0
  %212 = load i32 (%struct.tb*, i64, i64, i32*)*, i32 (%struct.tb*, i64, i64, i32*)** %211, align 8
  %213 = load %struct.tb*, %struct.tb** %3, align 8
  %214 = load i64, i64* %12, align 8
  %215 = load i64, i64* %13, align 8
  %216 = call i32 %212(%struct.tb* %213, i64 %214, i64 %215, i32* %15)
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %209
  %220 = load %struct.tb*, %struct.tb** %3, align 8
  %221 = load i64, i64* %12, align 8
  %222 = load i64, i64* %13, align 8
  %223 = call i32 @tb_err(%struct.tb* %220, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %221, i64 %222)
  %224 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %225 = call i32 @tb_switch_put(%struct.tb_switch* %224)
  br label %249

226:                                              ; preds = %209
  %227 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %228 = load i32, i32* %15, align 4
  %229 = load %struct.icm_fr_event_device_connected*, %struct.icm_fr_event_device_connected** %5, align 8
  %230 = getelementptr inbounds %struct.icm_fr_event_device_connected, %struct.icm_fr_event_device_connected* %229, i32 0, i32 4
  %231 = load %struct.icm_fr_event_device_connected*, %struct.icm_fr_event_device_connected** %5, align 8
  %232 = getelementptr inbounds %struct.icm_fr_event_device_connected, %struct.icm_fr_event_device_connected* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = inttoptr i64 %233 to i64*
  %235 = load %struct.icm_fr_event_device_connected*, %struct.icm_fr_event_device_connected** %5, align 8
  %236 = getelementptr inbounds %struct.icm_fr_event_device_connected, %struct.icm_fr_event_device_connected* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.icm_fr_event_device_connected*, %struct.icm_fr_event_device_connected** %5, align 8
  %239 = getelementptr inbounds %struct.icm_fr_event_device_connected, %struct.icm_fr_event_device_connected* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i64, i64* %12, align 8
  %242 = load i64, i64* %13, align 8
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %14, align 4
  %246 = call i32 @add_switch(%struct.tb_switch* %227, i32 %228, i32* %230, i64* %234, i32 8, i32 %237, i32 %240, i64 %241, i64 %242, i32 %243, i32 %244, i32 %245)
  %247 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %248 = call i32 @tb_switch_put(%struct.tb_switch* %247)
  br label %249

249:                                              ; preds = %226, %219, %204, %137, %126, %67
  ret void
}

declare dso_local %struct.icm* @tb_priv(%struct.tb*) #1

declare dso_local i32 @icm_postpone_rescan(%struct.tb*) #1

declare dso_local i32 @tb_info(%struct.tb*, i8*, i64, i64) #1

declare dso_local %struct.tb_switch* @tb_switch_find_by_uuid(%struct.tb*, i32*) #1

declare dso_local %struct.tb_switch* @tb_to_switch(i32) #1

declare dso_local i64 @tb_phy_port_from_link(i64) #1

declare dso_local i32 @tb_err(%struct.tb*, i8*, i64, i64) #1

declare dso_local i32 @tb_switch_put(%struct.tb_switch*) #1

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

declare dso_local i32 @update_switch(%struct.tb_switch*, %struct.tb_switch*, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @remove_switch(%struct.tb_switch*) #1

declare dso_local %struct.tb_switch* @tb_switch_find_by_link_depth(%struct.tb*, i64, i64) #1

declare dso_local i64 @dual_link_from_link(i64) #1

declare dso_local %struct.tb_xdomain* @tb_xdomain_find_by_link_depth(%struct.tb*, i64, i64) #1

declare dso_local i32 @remove_xdomain(%struct.tb_xdomain*) #1

declare dso_local i32 @tb_xdomain_put(%struct.tb_xdomain*) #1

declare dso_local i32 @add_switch(%struct.tb_switch*, i32, i32*, i64*, i32, i32, i32, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
