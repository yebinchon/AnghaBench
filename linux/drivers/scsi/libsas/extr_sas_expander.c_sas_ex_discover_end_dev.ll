; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_discover_end_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_discover_end_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i64, i64, i32, %struct.TYPE_4__*, i32, i32, %struct.sas_rphy*, i32, i32, i32, %struct.sas_phy*, i32, i32, %struct.domain_device*, i32, %struct.expander_device }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sas_rphy = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sas_phy = type { i32 }
%struct.expander_device = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i32, i32*, i64, i32, i32, i64, i64 }

@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@SAS_END_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"sas_discover_end_dev() for device %16llx at %016llx:%02d returned 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"target proto 0x%x at %016llx:0x%x not handled\0A\00", align 1
@PHY_FUNC_LINK_RESET = common dso_local global i32 0, align 4
@SAS_PROTOCOL_STP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.domain_device* (%struct.domain_device*, i32)* @sas_ex_discover_end_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.domain_device* @sas_ex_discover_end_dev(%struct.domain_device* %0, i32 %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.expander_device*, align 8
  %7 = alloca %struct.ex_phy*, align 8
  %8 = alloca %struct.domain_device*, align 8
  %9 = alloca %struct.sas_rphy*, align 8
  %10 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %12 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %11, i32 0, i32 15
  store %struct.expander_device* %12, %struct.expander_device** %6, align 8
  %13 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %14 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %13, i32 0, i32 1
  %15 = load %struct.ex_phy*, %struct.ex_phy** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %15, i64 %17
  store %struct.ex_phy* %18, %struct.ex_phy** %7, align 8
  store %struct.domain_device* null, %struct.domain_device** %8, align 8
  %19 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %20 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %25 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %2
  store %struct.domain_device* null, %struct.domain_device** %3, align 8
  br label %227

29:                                               ; preds = %23
  %30 = call %struct.domain_device* (...) @sas_alloc_device()
  store %struct.domain_device* %30, %struct.domain_device** %8, align 8
  %31 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %32 = icmp ne %struct.domain_device* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store %struct.domain_device* null, %struct.domain_device** %3, align 8
  br label %227

34:                                               ; preds = %29
  %35 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %36 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %35, i32 0, i32 14
  %37 = call i32 @kref_get(i32* %36)
  %38 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %39 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %40 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %39, i32 0, i32 13
  store %struct.domain_device* %38, %struct.domain_device** %40, align 8
  %41 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %42 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %45 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %44, i32 0, i32 3
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %45, align 8
  %46 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %47 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %50 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 4
  %51 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %52 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %55 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %58 = call i32 @memcpy(i32 %53, i32 %56, i32 %57)
  %59 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %60 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %63 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sas_hash_addr(i32 %61, i32 %64)
  %66 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %67 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %103, label %70

70:                                               ; preds = %34
  %71 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %72 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %71, i32 0, i32 6
  %73 = load %struct.sas_rphy*, %struct.sas_rphy** %72, align 8
  %74 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %73, i32 0, i32 1
  %75 = load i32, i32* %5, align 4
  %76 = call i32* @sas_port_alloc(i32* %74, i32 %75)
  %77 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %78 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %80 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %70
  br label %222

88:                                               ; preds = %70
  %89 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %90 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @sas_port_add(i32* %91)
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %99 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @sas_port_free(i32* %100)
  br label %222

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %34
  %104 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %105 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %106 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %107 = call i32 @sas_ex_get_linkrate(%struct.domain_device* %104, %struct.domain_device* %105, %struct.ex_phy* %106)
  %108 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %109 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %110 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @sas_device_set_phy(%struct.domain_device* %108, i32* %111)
  %113 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %114 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %179

119:                                              ; preds = %103
  %120 = load i32, i32* @SAS_END_DEVICE, align 4
  %121 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %122 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %124 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call %struct.sas_rphy* @sas_end_device_alloc(i32* %125)
  store %struct.sas_rphy* %126, %struct.sas_rphy** %9, align 8
  %127 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %128 = icmp ne %struct.sas_rphy* %127, null
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  br label %217

134:                                              ; preds = %119
  %135 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %136 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %139 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %141 = call i32 @sas_init_dev(%struct.domain_device* %140)
  %142 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %143 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %144 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %143, i32 0, i32 6
  store %struct.sas_rphy* %142, %struct.sas_rphy** %144, align 8
  %145 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %146 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %145, i32 0, i32 1
  %147 = call i32 @get_device(i32* %146)
  %148 = load i32, i32* %5, align 4
  %149 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %150 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 4
  %152 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %153 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %154 = call i32 @sas_fill_in_rphy(%struct.domain_device* %152, %struct.sas_rphy* %153)
  %155 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %156 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %155, i32 0, i32 5
  %157 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %158 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %157, i32 0, i32 3
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = call i32 @list_add_tail(i32* %156, i32* %160)
  %162 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %163 = call i32 @sas_discover_end_dev(%struct.domain_device* %162)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %134
  %167 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %168 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @SAS_ADDR(i32 %169)
  %171 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %172 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @SAS_ADDR(i32 %173)
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i32 (i8*, i32, i32, ...) @pr_notice(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %170, i32 %174, i32 %175, i32 %176)
  br label %196

178:                                              ; preds = %134
  br label %189

179:                                              ; preds = %103
  %180 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %181 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %184 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @SAS_ADDR(i32 %185)
  %187 = load i32, i32* %5, align 4
  %188 = call i32 (i8*, i32, i32, ...) @pr_notice(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %182, i32 %186, i32 %187)
  br label %217

189:                                              ; preds = %178
  %190 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %191 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %190, i32 0, i32 7
  %192 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %193 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %192, i32 0, i32 0
  %194 = call i32 @list_add_tail(i32* %191, i32* %193)
  %195 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  store %struct.domain_device* %195, %struct.domain_device** %3, align 8
  br label %227

196:                                              ; preds = %166
  %197 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %198 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %197, i32 0, i32 6
  %199 = load %struct.sas_rphy*, %struct.sas_rphy** %198, align 8
  %200 = call i32 @sas_rphy_free(%struct.sas_rphy* %199)
  %201 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %202 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %201, i32 0, i32 5
  %203 = call i32 @list_del(i32* %202)
  %204 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %205 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %204, i32 0, i32 3
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = call i32 @spin_lock_irq(i32* %207)
  %209 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %210 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %209, i32 0, i32 4
  %211 = call i32 @list_del(i32* %210)
  %212 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %213 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %212, i32 0, i32 3
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = call i32 @spin_unlock_irq(i32* %215)
  br label %217

217:                                              ; preds = %196, %179, %133
  %218 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %219 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @sas_port_delete(i32* %220)
  br label %222

222:                                              ; preds = %217, %97, %87
  %223 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %224 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %223, i32 0, i32 1
  store i32* null, i32** %224, align 8
  %225 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %226 = call i32 @sas_put_device(%struct.domain_device* %225)
  store %struct.domain_device* null, %struct.domain_device** %3, align 8
  br label %227

227:                                              ; preds = %222, %189, %33, %28
  %228 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  ret %struct.domain_device* %228
}

declare dso_local %struct.domain_device* @sas_alloc_device(...) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @sas_hash_addr(i32, i32) #1

declare dso_local i32* @sas_port_alloc(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sas_port_add(i32*) #1

declare dso_local i32 @sas_port_free(i32*) #1

declare dso_local i32 @sas_ex_get_linkrate(%struct.domain_device*, %struct.domain_device*, %struct.ex_phy*) #1

declare dso_local i32 @sas_device_set_phy(%struct.domain_device*, i32*) #1

declare dso_local %struct.sas_rphy* @sas_end_device_alloc(i32*) #1

declare dso_local i32 @sas_init_dev(%struct.domain_device*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @sas_fill_in_rphy(%struct.domain_device*, %struct.sas_rphy*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sas_discover_end_dev(%struct.domain_device*) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, ...) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @sas_rphy_free(%struct.sas_rphy*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @sas_port_delete(i32*) #1

declare dso_local i32 @sas_put_device(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
