; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmhpd.c_rpmhpd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmhpd.c_rpmhpd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.genpd_onecell_data = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.rpmhpd = type { %struct.TYPE_4__, i64, i32, i32, %struct.device* }
%struct.rpmhpd_desc = type { i64, %struct.rpmhpd** }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"rpmhpds[%d] is empty\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not find RPMh address for resource %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CMD_DB_HW_ARC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"RPMh slave ID mismatch\0A\00", align 1
@rpmhpd_power_off = common dso_local global i32 0, align 4
@rpmhpd_power_on = common dso_local global i32 0, align 4
@rpmhpd_set_performance_state = common dso_local global i32 0, align 4
@rpmhpd_get_performance_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rpmhpd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmhpd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.genpd_onecell_data*, align 8
  %9 = alloca %struct.rpmhpd**, align 8
  %10 = alloca %struct.rpmhpd_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = call %struct.rpmhpd_desc* @of_device_get_match_data(%struct.device* %13)
  store %struct.rpmhpd_desc* %14, %struct.rpmhpd_desc** %10, align 8
  %15 = load %struct.rpmhpd_desc*, %struct.rpmhpd_desc** %10, align 8
  %16 = icmp ne %struct.rpmhpd_desc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %243

20:                                               ; preds = %1
  %21 = load %struct.rpmhpd_desc*, %struct.rpmhpd_desc** %10, align 8
  %22 = getelementptr inbounds %struct.rpmhpd_desc, %struct.rpmhpd_desc* %21, i32 0, i32 1
  %23 = load %struct.rpmhpd**, %struct.rpmhpd*** %22, align 8
  store %struct.rpmhpd** %23, %struct.rpmhpd*** %9, align 8
  %24 = load %struct.rpmhpd_desc*, %struct.rpmhpd_desc** %10, align 8
  %25 = getelementptr inbounds %struct.rpmhpd_desc, %struct.rpmhpd_desc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.genpd_onecell_data* @devm_kzalloc(%struct.device* %27, i32 16, i32 %28)
  store %struct.genpd_onecell_data* %29, %struct.genpd_onecell_data** %8, align 8
  %30 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %31 = icmp ne %struct.genpd_onecell_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %243

35:                                               ; preds = %20
  %36 = load %struct.device*, %struct.device** %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.TYPE_4__** @devm_kcalloc(%struct.device* %36, i64 %37, i32 8, i32 %38)
  %40 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %41 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %40, i32 0, i32 1
  store %struct.TYPE_4__** %39, %struct.TYPE_4__*** %41, align 8
  %42 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %43 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = icmp ne %struct.TYPE_4__** %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %243

49:                                               ; preds = %35
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %52 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %191, %49
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %6, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %194

58:                                               ; preds = %53
  %59 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %59, i64 %61
  %63 = load %struct.rpmhpd*, %struct.rpmhpd** %62, align 8
  %64 = icmp ne %struct.rpmhpd* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @dev_warn(%struct.device* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %191

69:                                               ; preds = %58
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %71, i64 %73
  %75 = load %struct.rpmhpd*, %struct.rpmhpd** %74, align 8
  %76 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %75, i32 0, i32 4
  store %struct.device* %70, %struct.device** %76, align 8
  %77 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %77, i64 %79
  %81 = load %struct.rpmhpd*, %struct.rpmhpd** %80, align 8
  %82 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @cmd_db_read_addr(i32 %83)
  %85 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %85, i64 %87
  %89 = load %struct.rpmhpd*, %struct.rpmhpd** %88, align 8
  %90 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %89, i32 0, i32 3
  store i32 %84, i32* %90, align 4
  %91 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %91, i64 %93
  %95 = load %struct.rpmhpd*, %struct.rpmhpd** %94, align 8
  %96 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %69
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %101, i64 %103
  %105 = load %struct.rpmhpd*, %struct.rpmhpd** %104, align 8
  %106 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %243

111:                                              ; preds = %69
  %112 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %112, i64 %114
  %116 = load %struct.rpmhpd*, %struct.rpmhpd** %115, align 8
  %117 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @cmd_db_read_slave_id(i32 %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @CMD_DB_HW_ARC, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %111
  %124 = load %struct.device*, %struct.device** %7, align 8
  %125 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %243

128:                                              ; preds = %111
  %129 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %129, i64 %131
  %133 = load %struct.rpmhpd*, %struct.rpmhpd** %132, align 8
  %134 = call i32 @rpmhpd_update_level_mapping(%struct.rpmhpd* %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i32, i32* %5, align 4
  store i32 %138, i32* %2, align 4
  br label %243

139:                                              ; preds = %128
  %140 = load i32, i32* @rpmhpd_power_off, align 4
  %141 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %141, i64 %143
  %145 = load %struct.rpmhpd*, %struct.rpmhpd** %144, align 8
  %146 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  store i32 %140, i32* %147, align 4
  %148 = load i32, i32* @rpmhpd_power_on, align 4
  %149 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %149, i64 %151
  %153 = load %struct.rpmhpd*, %struct.rpmhpd** %152, align 8
  %154 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  store i32 %148, i32* %155, align 8
  %156 = load i32, i32* @rpmhpd_set_performance_state, align 4
  %157 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %157, i64 %159
  %161 = load %struct.rpmhpd*, %struct.rpmhpd** %160, align 8
  %162 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  store i32 %156, i32* %163, align 4
  %164 = load i32, i32* @rpmhpd_get_performance_state, align 4
  %165 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %165, i64 %167
  %169 = load %struct.rpmhpd*, %struct.rpmhpd** %168, align 8
  %170 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  store i32 %164, i32* %171, align 8
  %172 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %172, i64 %174
  %176 = load %struct.rpmhpd*, %struct.rpmhpd** %175, align 8
  %177 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %176, i32 0, i32 0
  %178 = call i32 @pm_genpd_init(%struct.TYPE_4__* %177, i32* null, i32 1)
  %179 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %179, i64 %181
  %183 = load %struct.rpmhpd*, %struct.rpmhpd** %182, align 8
  %184 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %183, i32 0, i32 0
  %185 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %186 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %185, i32 0, i32 1
  %187 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %186, align 8
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %187, i64 %189
  store %struct.TYPE_4__* %184, %struct.TYPE_4__** %190, align 8
  br label %191

191:                                              ; preds = %139, %65
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %4, align 4
  br label %53

194:                                              ; preds = %53
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %233, %194
  %196 = load i32, i32* %4, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %6, align 8
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %236

200:                                              ; preds = %195
  %201 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %202 = load i32, i32* %4, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %201, i64 %203
  %205 = load %struct.rpmhpd*, %struct.rpmhpd** %204, align 8
  %206 = icmp ne %struct.rpmhpd* %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %200
  br label %233

208:                                              ; preds = %200
  %209 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %209, i64 %211
  %213 = load %struct.rpmhpd*, %struct.rpmhpd** %212, align 8
  %214 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %208
  %218 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %218, i64 %220
  %222 = load %struct.rpmhpd*, %struct.rpmhpd** %221, align 8
  %223 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.rpmhpd**, %struct.rpmhpd*** %9, align 8
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.rpmhpd*, %struct.rpmhpd** %225, i64 %227
  %229 = load %struct.rpmhpd*, %struct.rpmhpd** %228, align 8
  %230 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %229, i32 0, i32 0
  %231 = call i32 @pm_genpd_add_subdomain(i64 %224, %struct.TYPE_4__* %230)
  br label %232

232:                                              ; preds = %217, %208
  br label %233

233:                                              ; preds = %232, %207
  %234 = load i32, i32* %4, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %4, align 4
  br label %195

236:                                              ; preds = %195
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.device, %struct.device* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %242 = call i32 @of_genpd_add_provider_onecell(i32 %240, %struct.genpd_onecell_data* %241)
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %236, %137, %123, %99, %46, %32, %17
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local %struct.rpmhpd_desc* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.genpd_onecell_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_4__** @devm_kcalloc(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @cmd_db_read_addr(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @cmd_db_read_slave_id(i32) #1

declare dso_local i32 @rpmhpd_update_level_mapping(%struct.rpmhpd*) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @pm_genpd_add_subdomain(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @of_genpd_add_provider_onecell(i32, %struct.genpd_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
