; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pm_add_one_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pm_add_one_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pmu = type { %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, %struct.rockchip_domain_info* }
%struct.rockchip_domain_info = type { i64 }
%struct.device_node = type { i32 }
%struct.rockchip_pm_domain = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, i32*, i8**, %struct.rockchip_pmu*, %struct.rockchip_domain_info* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%pOFn: failed to retrieve domain id (reg): %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%pOFn: invalid domain id %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%pOFn: undefined domain id %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"%pOFn: doesn't have clocks: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%pOFn: failed to get clk at index %d: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"pm_qos\00", align 1
@MAX_QOS_REGS_NUM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"failed to power on domain '%pOFn': %d\0A\00", align 1
@rockchip_pd_power_off = common dso_local global i32 0, align 4
@rockchip_pd_power_on = common dso_local global i32 0, align 4
@rockchip_pd_attach_dev = common dso_local global i32 0, align 4
@rockchip_pd_detach_dev = common dso_local global i32 0, align 4
@GENPD_FLAG_PM_CLK = common dso_local global i32 0, align 4
@GENPD_FLAG_ACTIVE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pmu*, %struct.device_node*)* @rockchip_pm_add_one_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pm_add_one_domain(%struct.rockchip_pmu* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_pmu*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.rockchip_domain_info*, align 8
  %7 = alloca %struct.rockchip_pm_domain*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.rockchip_pmu* %0, %struct.rockchip_pmu** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = call i32 @of_property_read_u32(%struct.device_node* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %11)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %19 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 (i32, i8*, %struct.device_node*, i32, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %21, i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %370

26:                                               ; preds = %2
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %29 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %27, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %36 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = load i64, i64* %11, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 (i32, i8*, %struct.device_node*, i32, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %38, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %370

44:                                               ; preds = %26
  %45 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %46 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %45, i32 0, i32 2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %49, i64 %50
  store %struct.rockchip_domain_info* %51, %struct.rockchip_domain_info** %6, align 8
  %52 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %6, align 8
  %53 = icmp ne %struct.rockchip_domain_info* %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %44
  %55 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %56 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = load i64, i64* %11, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 (i32, i8*, %struct.device_node*, i32, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %58, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %370

64:                                               ; preds = %44
  %65 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %66 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.rockchip_pm_domain* @devm_kzalloc(i32 %67, i32 72, i32 %68)
  store %struct.rockchip_pm_domain* %69, %struct.rockchip_pm_domain** %7, align 8
  %70 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %71 = icmp ne %struct.rockchip_pm_domain* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %370

75:                                               ; preds = %64
  %76 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %6, align 8
  %77 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %78 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %77, i32 0, i32 7
  store %struct.rockchip_domain_info* %76, %struct.rockchip_domain_info** %78, align 8
  %79 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %80 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %81 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %80, i32 0, i32 6
  store %struct.rockchip_pmu* %79, %struct.rockchip_pmu** %81, align 8
  %82 = load %struct.device_node*, %struct.device_node** %5, align 8
  %83 = call i32 @of_clk_get_parent_count(%struct.device_node* %82)
  %84 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %85 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %87 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %75
  %91 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %92 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %95 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i8* @devm_kcalloc(i32 %93, i32 %96, i32 4, i32 %97)
  %99 = bitcast i8* %98 to %struct.TYPE_10__*
  %100 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %101 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %100, i32 0, i32 2
  store %struct.TYPE_10__* %99, %struct.TYPE_10__** %101, align 8
  %102 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %103 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %102, i32 0, i32 2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = icmp ne %struct.TYPE_10__* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %90
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %370

109:                                              ; preds = %90
  br label %121

110:                                              ; preds = %75
  %111 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %112 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.device_node*, %struct.device_node** %5, align 8
  %115 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %116 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dev_dbg(i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %114, i32 %117)
  %119 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %120 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  br label %121

121:                                              ; preds = %110, %109
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %168, %121
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %125 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %171

128:                                              ; preds = %122
  %129 = load %struct.device_node*, %struct.device_node** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @of_clk_get(%struct.device_node* %129, i32 %130)
  %132 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %133 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %132, i32 0, i32 2
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i32 %131, i32* %138, align 4
  %139 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %140 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %139, i32 0, i32 2
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @IS_ERR(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %128
  %150 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %151 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %150, i32 0, i32 2
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @PTR_ERR(i32 %157)
  store i32 %158, i32* %12, align 4
  %159 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %160 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.device_node*, %struct.device_node** %5, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 (i32, i8*, %struct.device_node*, i32, ...) @dev_err(i32 %161, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %162, i32 %163, i32 %164)
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %3, align 4
  br label %370

167:                                              ; preds = %128
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %122

171:                                              ; preds = %122
  %172 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %173 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %176 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %175, i32 0, i32 2
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = call i32 @clk_bulk_prepare(i32 %174, %struct.TYPE_10__* %177)
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %171
  br label %361

182:                                              ; preds = %171
  %183 = load %struct.device_node*, %struct.device_node** %5, align 8
  %184 = call i32 @of_count_phandle_with_args(%struct.device_node* %183, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %185 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %186 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %188 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %291

191:                                              ; preds = %182
  %192 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %193 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %196 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @GFP_KERNEL, align 4
  %199 = call i8* @devm_kcalloc(i32 %194, i32 %197, i32 4, i32 %198)
  %200 = bitcast i8* %199 to i32*
  %201 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %202 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %201, i32 0, i32 4
  store i32* %200, i32** %202, align 8
  %203 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %204 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %210, label %207

207:                                              ; preds = %191
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %12, align 4
  br label %353

210:                                              ; preds = %191
  store i32 0, i32* %10, align 4
  br label %211

211:                                              ; preds = %242, %210
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @MAX_QOS_REGS_NUM, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %245

215:                                              ; preds = %211
  %216 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %217 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %220 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @GFP_KERNEL, align 4
  %223 = call i8* @devm_kcalloc(i32 %218, i32 %221, i32 8, i32 %222)
  %224 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %225 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %224, i32 0, i32 5
  %226 = load i8**, i8*** %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  store i8* %223, i8** %229, align 8
  %230 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %231 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %230, i32 0, i32 5
  %232 = load i8**, i8*** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %232, i64 %234
  %236 = load i8*, i8** %235, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %215
  %239 = load i32, i32* @ENOMEM, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %12, align 4
  br label %353

241:                                              ; preds = %215
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %10, align 4
  br label %211

245:                                              ; preds = %211
  store i32 0, i32* %10, align 4
  br label %246

246:                                              ; preds = %287, %245
  %247 = load i32, i32* %10, align 4
  %248 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %249 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %290

252:                                              ; preds = %246
  %253 = load %struct.device_node*, %struct.device_node** %5, align 8
  %254 = load i32, i32* %10, align 4
  %255 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %253, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %254)
  store %struct.device_node* %255, %struct.device_node** %8, align 8
  %256 = load %struct.device_node*, %struct.device_node** %8, align 8
  %257 = icmp ne %struct.device_node* %256, null
  br i1 %257, label %261, label %258

258:                                              ; preds = %252
  %259 = load i32, i32* @ENODEV, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %12, align 4
  br label %353

261:                                              ; preds = %252
  %262 = load %struct.device_node*, %struct.device_node** %8, align 8
  %263 = call i32 @syscon_node_to_regmap(%struct.device_node* %262)
  %264 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %265 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %264, i32 0, i32 4
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 %263, i32* %269, align 4
  %270 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %271 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %10, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = call i64 @IS_ERR(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %261
  %280 = load i32, i32* @ENODEV, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %12, align 4
  %282 = load %struct.device_node*, %struct.device_node** %8, align 8
  %283 = call i32 @of_node_put(%struct.device_node* %282)
  br label %353

284:                                              ; preds = %261
  %285 = load %struct.device_node*, %struct.device_node** %8, align 8
  %286 = call i32 @of_node_put(%struct.device_node* %285)
  br label %287

287:                                              ; preds = %284
  %288 = load i32, i32* %10, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %10, align 4
  br label %246

290:                                              ; preds = %246
  br label %291

291:                                              ; preds = %290, %182
  %292 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %293 = call i32 @rockchip_pd_power(%struct.rockchip_pm_domain* %292, i32 1)
  store i32 %293, i32* %12, align 4
  %294 = load i32, i32* %12, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %291
  %297 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %298 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.device_node*, %struct.device_node** %5, align 8
  %301 = load i32, i32* %12, align 4
  %302 = call i32 (i32, i8*, %struct.device_node*, i32, ...) @dev_err(i32 %299, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), %struct.device_node* %300, i32 %301)
  br label %353

303:                                              ; preds = %291
  %304 = load %struct.device_node*, %struct.device_node** %5, align 8
  %305 = getelementptr inbounds %struct.device_node, %struct.device_node* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %308 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 5
  store i32 %306, i32* %309, align 4
  %310 = load i32, i32* @rockchip_pd_power_off, align 4
  %311 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %312 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 4
  store i32 %310, i32* %313, align 8
  %314 = load i32, i32* @rockchip_pd_power_on, align 4
  %315 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %316 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 3
  store i32 %314, i32* %317, align 4
  %318 = load i32, i32* @rockchip_pd_attach_dev, align 4
  %319 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %320 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 2
  store i32 %318, i32* %321, align 8
  %322 = load i32, i32* @rockchip_pd_detach_dev, align 4
  %323 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %324 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 1
  store i32 %322, i32* %325, align 4
  %326 = load i32, i32* @GENPD_FLAG_PM_CLK, align 4
  %327 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %328 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %327, i32 0, i32 3
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 0
  store i32 %326, i32* %329, align 8
  %330 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %6, align 8
  %331 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %303
  %335 = load i32, i32* @GENPD_FLAG_ACTIVE_WAKEUP, align 4
  %336 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %337 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = or i32 %339, %335
  store i32 %340, i32* %338, align 8
  br label %341

341:                                              ; preds = %334, %303
  %342 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %343 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %342, i32 0, i32 3
  %344 = call i32 @pm_genpd_init(%struct.TYPE_9__* %343, i32* null, i32 0)
  %345 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %346 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %345, i32 0, i32 3
  %347 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %348 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %349, align 8
  %351 = load i64, i64* %11, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %350, i64 %351
  store %struct.TYPE_9__* %346, %struct.TYPE_9__** %352, align 8
  store i32 0, i32* %3, align 4
  br label %370

353:                                              ; preds = %296, %279, %258, %238, %207
  %354 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %355 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %358 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %357, i32 0, i32 2
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %358, align 8
  %360 = call i32 @clk_bulk_unprepare(i32 %356, %struct.TYPE_10__* %359)
  br label %361

361:                                              ; preds = %353, %181
  %362 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %363 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %7, align 8
  %366 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %365, i32 0, i32 2
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** %366, align 8
  %368 = call i32 @clk_bulk_put(i32 %364, %struct.TYPE_10__* %367)
  %369 = load i32, i32* %12, align 4
  store i32 %369, i32* %3, align 4
  br label %370

370:                                              ; preds = %361, %341, %149, %106, %72, %54, %34, %17
  %371 = load i32, i32* %3, align 4
  ret i32 %371
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*, i32, ...) #1

declare dso_local %struct.rockchip_pm_domain* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @of_clk_get_parent_count(%struct.device_node*) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.device_node*, i32) #1

declare dso_local i32 @of_clk_get(%struct.device_node*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_bulk_prepare(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @rockchip_pd_power(%struct.rockchip_pm_domain*, i32) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @clk_bulk_unprepare(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @clk_bulk_put(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
