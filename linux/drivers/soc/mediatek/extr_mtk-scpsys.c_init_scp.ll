; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-scpsys.c_init_scp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-scpsys.c_init_scp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scp = type { i32, %struct.scp_domain*, %struct.clk*, %struct.genpd_onecell_data, %struct.clk*, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.scp_domain = type { %struct.clk**, %struct.scp_domain_data*, %struct.scp*, %struct.generic_pm_domain, %struct.clk* }
%struct.generic_pm_domain = type { i32, i32, i32, i32 }
%struct.genpd_onecell_data = type { i32, %struct.generic_pm_domain** }
%struct.clk = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.scp_domain_data = type { i64*, i32 }
%struct.scp_ctrl_reg = type { i32, i32 }
%struct.resource = type { i32 }

@CLK_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"infracfg\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot find infracfg controller: %ld\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MAX_CLKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: clk unavailable\0A\00", align 1
@scpsys_power_off = common dso_local global i32 0, align 4
@scpsys_power_on = common dso_local global i32 0, align 4
@MTK_SCPD_ACTIVE_WAKEUP = common dso_local global i32 0, align 4
@GENPD_FLAG_ACTIVE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scp* (%struct.platform_device*, %struct.scp_domain_data*, i32, %struct.scp_ctrl_reg*, i32)* @init_scp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scp* @init_scp(%struct.platform_device* %0, %struct.scp_domain_data* %1, i32 %2, %struct.scp_ctrl_reg* %3, i32 %4) #0 {
  %6 = alloca %struct.scp*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.scp_domain_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scp_ctrl_reg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.genpd_onecell_data*, align 8
  %13 = alloca %struct.resource*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.scp*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.scp_domain*, align 8
  %21 = alloca %struct.scp_domain_data*, align 8
  %22 = alloca %struct.scp_domain*, align 8
  %23 = alloca %struct.generic_pm_domain*, align 8
  %24 = alloca %struct.scp_domain_data*, align 8
  %25 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store %struct.scp_domain_data* %1, %struct.scp_domain_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.scp_ctrl_reg* %3, %struct.scp_ctrl_reg** %10, align 8
  store i32 %4, i32* %11, align 4
  %26 = load i32, i32* @CLK_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %17, align 8
  %29 = alloca %struct.clk*, i64 %27, align 16
  store i64 %27, i64* %18, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.scp* @devm_kzalloc(%struct.TYPE_8__* %31, i32 64, i32 %32)
  store %struct.scp* %33, %struct.scp** %16, align 8
  %34 = load %struct.scp*, %struct.scp** %16, align 8
  %35 = icmp ne %struct.scp* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.scp* @ERR_PTR(i32 %38)
  store %struct.scp* %39, %struct.scp** %6, align 8
  store i32 1, i32* %19, align 4
  br label %302

40:                                               ; preds = %5
  %41 = load %struct.scp_ctrl_reg*, %struct.scp_ctrl_reg** %10, align 8
  %42 = getelementptr inbounds %struct.scp_ctrl_reg, %struct.scp_ctrl_reg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.scp*, %struct.scp** %16, align 8
  %45 = getelementptr inbounds %struct.scp, %struct.scp* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.scp_ctrl_reg*, %struct.scp_ctrl_reg** %10, align 8
  %48 = getelementptr inbounds %struct.scp_ctrl_reg, %struct.scp_ctrl_reg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.scp*, %struct.scp** %16, align 8
  %51 = getelementptr inbounds %struct.scp, %struct.scp* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.scp*, %struct.scp** %16, align 8
  %55 = getelementptr inbounds %struct.scp, %struct.scp* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.scp*, %struct.scp** %16, align 8
  %59 = getelementptr inbounds %struct.scp, %struct.scp* %58, i32 0, i32 5
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %61 = load i32, i32* @IORESOURCE_MEM, align 4
  %62 = call %struct.resource* @platform_get_resource(%struct.platform_device* %60, i32 %61, i32 0)
  store %struct.resource* %62, %struct.resource** %13, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.resource*, %struct.resource** %13, align 8
  %66 = call %struct.clk* @devm_ioremap_resource(%struct.TYPE_8__* %64, %struct.resource* %65)
  %67 = load %struct.scp*, %struct.scp** %16, align 8
  %68 = getelementptr inbounds %struct.scp, %struct.scp* %67, i32 0, i32 4
  store %struct.clk* %66, %struct.clk** %68, align 8
  %69 = load %struct.scp*, %struct.scp** %16, align 8
  %70 = getelementptr inbounds %struct.scp, %struct.scp* %69, i32 0, i32 4
  %71 = load %struct.clk*, %struct.clk** %70, align 8
  %72 = call i64 @IS_ERR(%struct.clk* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %40
  %75 = load %struct.scp*, %struct.scp** %16, align 8
  %76 = getelementptr inbounds %struct.scp, %struct.scp* %75, i32 0, i32 4
  %77 = load %struct.clk*, %struct.clk** %76, align 8
  %78 = call %struct.scp* @ERR_CAST(%struct.clk* %77)
  store %struct.scp* %78, %struct.scp** %6, align 8
  store i32 1, i32* %19, align 4
  br label %302

79:                                               ; preds = %40
  %80 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @devm_kcalloc(%struct.TYPE_8__* %81, i32 %82, i32 48, i32 %83)
  %85 = bitcast i8* %84 to %struct.scp_domain*
  %86 = load %struct.scp*, %struct.scp** %16, align 8
  %87 = getelementptr inbounds %struct.scp, %struct.scp* %86, i32 0, i32 1
  store %struct.scp_domain* %85, %struct.scp_domain** %87, align 8
  %88 = load %struct.scp*, %struct.scp** %16, align 8
  %89 = getelementptr inbounds %struct.scp, %struct.scp* %88, i32 0, i32 1
  %90 = load %struct.scp_domain*, %struct.scp_domain** %89, align 8
  %91 = icmp ne %struct.scp_domain* %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %79
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  %95 = call %struct.scp* @ERR_PTR(i32 %94)
  store %struct.scp* %95, %struct.scp** %6, align 8
  store i32 1, i32* %19, align 4
  br label %302

96:                                               ; preds = %79
  %97 = load %struct.scp*, %struct.scp** %16, align 8
  %98 = getelementptr inbounds %struct.scp, %struct.scp* %97, i32 0, i32 3
  store %struct.genpd_onecell_data* %98, %struct.genpd_onecell_data** %12, align 8
  %99 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i8* @devm_kcalloc(%struct.TYPE_8__* %100, i32 %101, i32 8, i32 %102)
  %104 = bitcast i8* %103 to %struct.generic_pm_domain**
  %105 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %12, align 8
  %106 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %105, i32 0, i32 1
  store %struct.generic_pm_domain** %104, %struct.generic_pm_domain*** %106, align 8
  %107 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %12, align 8
  %108 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %107, i32 0, i32 1
  %109 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %108, align 8
  %110 = icmp ne %struct.generic_pm_domain** %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %96
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  %114 = call %struct.scp* @ERR_PTR(i32 %113)
  store %struct.scp* %114, %struct.scp** %6, align 8
  store i32 1, i32* %19, align 4
  br label %302

115:                                              ; preds = %96
  %116 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.clk* @syscon_regmap_lookup_by_phandle(i32 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %121 = load %struct.scp*, %struct.scp** %16, align 8
  %122 = getelementptr inbounds %struct.scp, %struct.scp* %121, i32 0, i32 2
  store %struct.clk* %120, %struct.clk** %122, align 8
  %123 = load %struct.scp*, %struct.scp** %16, align 8
  %124 = getelementptr inbounds %struct.scp, %struct.scp* %123, i32 0, i32 2
  %125 = load %struct.clk*, %struct.clk** %124, align 8
  %126 = call i64 @IS_ERR(%struct.clk* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %115
  %129 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load %struct.scp*, %struct.scp** %16, align 8
  %132 = getelementptr inbounds %struct.scp, %struct.scp* %131, i32 0, i32 2
  %133 = load %struct.clk*, %struct.clk** %132, align 8
  %134 = call i32 @PTR_ERR(%struct.clk* %133)
  %135 = call i32 @dev_err(%struct.TYPE_8__* %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  %136 = load %struct.scp*, %struct.scp** %16, align 8
  %137 = getelementptr inbounds %struct.scp, %struct.scp* %136, i32 0, i32 2
  %138 = load %struct.clk*, %struct.clk** %137, align 8
  %139 = call %struct.scp* @ERR_CAST(%struct.clk* %138)
  store %struct.scp* %139, %struct.scp** %6, align 8
  store i32 1, i32* %19, align 4
  br label %302

140:                                              ; preds = %115
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %187, %140
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %190

145:                                              ; preds = %141
  %146 = load %struct.scp*, %struct.scp** %16, align 8
  %147 = getelementptr inbounds %struct.scp, %struct.scp* %146, i32 0, i32 1
  %148 = load %struct.scp_domain*, %struct.scp_domain** %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %148, i64 %150
  store %struct.scp_domain* %151, %struct.scp_domain** %20, align 8
  %152 = load %struct.scp_domain_data*, %struct.scp_domain_data** %8, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.scp_domain_data, %struct.scp_domain_data* %152, i64 %154
  store %struct.scp_domain_data* %155, %struct.scp_domain_data** %21, align 8
  %156 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = load %struct.scp_domain_data*, %struct.scp_domain_data** %21, align 8
  %159 = getelementptr inbounds %struct.scp_domain_data, %struct.scp_domain_data* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call %struct.clk* @devm_regulator_get_optional(%struct.TYPE_8__* %157, i32 %160)
  %162 = load %struct.scp_domain*, %struct.scp_domain** %20, align 8
  %163 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %162, i32 0, i32 4
  store %struct.clk* %161, %struct.clk** %163, align 8
  %164 = load %struct.scp_domain*, %struct.scp_domain** %20, align 8
  %165 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %164, i32 0, i32 4
  %166 = load %struct.clk*, %struct.clk** %165, align 8
  %167 = call i64 @IS_ERR(%struct.clk* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %145
  %170 = load %struct.scp_domain*, %struct.scp_domain** %20, align 8
  %171 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %170, i32 0, i32 4
  %172 = load %struct.clk*, %struct.clk** %171, align 8
  %173 = call i32 @PTR_ERR(%struct.clk* %172)
  %174 = load i32, i32* @ENODEV, align 4
  %175 = sub nsw i32 0, %174
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %169
  %178 = load %struct.scp_domain*, %struct.scp_domain** %20, align 8
  %179 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %178, i32 0, i32 4
  store %struct.clk* null, %struct.clk** %179, align 8
  br label %185

180:                                              ; preds = %169
  %181 = load %struct.scp_domain*, %struct.scp_domain** %20, align 8
  %182 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %181, i32 0, i32 4
  %183 = load %struct.clk*, %struct.clk** %182, align 8
  %184 = call %struct.scp* @ERR_CAST(%struct.clk* %183)
  store %struct.scp* %184, %struct.scp** %6, align 8
  store i32 1, i32* %19, align 4
  br label %302

185:                                              ; preds = %177
  br label %186

186:                                              ; preds = %185, %145
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %141

190:                                              ; preds = %141
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %12, align 8
  %193 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %195 = call i32 @init_clks(%struct.platform_device* %194, %struct.clk** %29)
  store i32 0, i32* %14, align 4
  br label %196

196:                                              ; preds = %297, %190
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %300

200:                                              ; preds = %196
  %201 = load %struct.scp*, %struct.scp** %16, align 8
  %202 = getelementptr inbounds %struct.scp, %struct.scp* %201, i32 0, i32 1
  %203 = load %struct.scp_domain*, %struct.scp_domain** %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %203, i64 %205
  store %struct.scp_domain* %206, %struct.scp_domain** %22, align 8
  %207 = load %struct.scp_domain*, %struct.scp_domain** %22, align 8
  %208 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %207, i32 0, i32 3
  store %struct.generic_pm_domain* %208, %struct.generic_pm_domain** %23, align 8
  %209 = load %struct.scp_domain_data*, %struct.scp_domain_data** %8, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.scp_domain_data, %struct.scp_domain_data* %209, i64 %211
  store %struct.scp_domain_data* %212, %struct.scp_domain_data** %24, align 8
  %213 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %23, align 8
  %214 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %12, align 8
  %215 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %214, i32 0, i32 1
  %216 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %215, align 8
  %217 = load i32, i32* %14, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.generic_pm_domain*, %struct.generic_pm_domain** %216, i64 %218
  store %struct.generic_pm_domain* %213, %struct.generic_pm_domain** %219, align 8
  %220 = load %struct.scp*, %struct.scp** %16, align 8
  %221 = load %struct.scp_domain*, %struct.scp_domain** %22, align 8
  %222 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %221, i32 0, i32 2
  store %struct.scp* %220, %struct.scp** %222, align 8
  %223 = load %struct.scp_domain_data*, %struct.scp_domain_data** %24, align 8
  %224 = load %struct.scp_domain*, %struct.scp_domain** %22, align 8
  %225 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %224, i32 0, i32 1
  store %struct.scp_domain_data* %223, %struct.scp_domain_data** %225, align 8
  store i32 0, i32* %15, align 4
  br label %226

226:                                              ; preds = %271, %200
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* @MAX_CLKS, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %239

230:                                              ; preds = %226
  %231 = load %struct.scp_domain_data*, %struct.scp_domain_data** %24, align 8
  %232 = getelementptr inbounds %struct.scp_domain_data, %struct.scp_domain_data* %231, i32 0, i32 0
  %233 = load i64*, i64** %232, align 8
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br label %239

239:                                              ; preds = %230, %226
  %240 = phi i1 [ false, %226 ], [ %238, %230 ]
  br i1 %240, label %241, label %274

241:                                              ; preds = %239
  %242 = load %struct.scp_domain_data*, %struct.scp_domain_data** %24, align 8
  %243 = getelementptr inbounds %struct.scp_domain_data, %struct.scp_domain_data* %242, i32 0, i32 0
  %244 = load i64*, i64** %243, align 8
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds %struct.clk*, %struct.clk** %29, i64 %248
  %250 = load %struct.clk*, %struct.clk** %249, align 8
  store %struct.clk* %250, %struct.clk** %25, align 8
  %251 = load %struct.clk*, %struct.clk** %25, align 8
  %252 = call i64 @IS_ERR(%struct.clk* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %241
  %255 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %256 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %255, i32 0, i32 0
  %257 = load %struct.scp_domain_data*, %struct.scp_domain_data** %24, align 8
  %258 = getelementptr inbounds %struct.scp_domain_data, %struct.scp_domain_data* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @dev_err(%struct.TYPE_8__* %256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %259)
  %261 = load %struct.clk*, %struct.clk** %25, align 8
  %262 = call %struct.scp* @ERR_CAST(%struct.clk* %261)
  store %struct.scp* %262, %struct.scp** %6, align 8
  store i32 1, i32* %19, align 4
  br label %302

263:                                              ; preds = %241
  %264 = load %struct.clk*, %struct.clk** %25, align 8
  %265 = load %struct.scp_domain*, %struct.scp_domain** %22, align 8
  %266 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %265, i32 0, i32 0
  %267 = load %struct.clk**, %struct.clk*** %266, align 8
  %268 = load i32, i32* %15, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.clk*, %struct.clk** %267, i64 %269
  store %struct.clk* %264, %struct.clk** %270, align 8
  br label %271

271:                                              ; preds = %263
  %272 = load i32, i32* %15, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %15, align 4
  br label %226

274:                                              ; preds = %239
  %275 = load %struct.scp_domain_data*, %struct.scp_domain_data** %24, align 8
  %276 = getelementptr inbounds %struct.scp_domain_data, %struct.scp_domain_data* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %23, align 8
  %279 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %278, i32 0, i32 3
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* @scpsys_power_off, align 4
  %281 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %23, align 8
  %282 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %281, i32 0, i32 2
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* @scpsys_power_on, align 4
  %284 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %23, align 8
  %285 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 4
  %286 = load %struct.scp_domain*, %struct.scp_domain** %22, align 8
  %287 = load i32, i32* @MTK_SCPD_ACTIVE_WAKEUP, align 4
  %288 = call i64 @MTK_SCPD_CAPS(%struct.scp_domain* %286, i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %274
  %291 = load i32, i32* @GENPD_FLAG_ACTIVE_WAKEUP, align 4
  %292 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %23, align 8
  %293 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 4
  br label %296

296:                                              ; preds = %290, %274
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %14, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %14, align 4
  br label %196

300:                                              ; preds = %196
  %301 = load %struct.scp*, %struct.scp** %16, align 8
  store %struct.scp* %301, %struct.scp** %6, align 8
  store i32 1, i32* %19, align 4
  br label %302

302:                                              ; preds = %300, %254, %180, %128, %111, %92, %74, %36
  %303 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %303)
  %304 = load %struct.scp*, %struct.scp** %6, align 8
  ret %struct.scp* %304
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.scp* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #2

declare dso_local %struct.scp* @ERR_PTR(i32) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.TYPE_8__*, %struct.resource*) #2

declare dso_local i64 @IS_ERR(%struct.clk*) #2

declare dso_local %struct.scp* @ERR_CAST(%struct.clk*) #2

declare dso_local i8* @devm_kcalloc(%struct.TYPE_8__*, i32, i32, i32) #2

declare dso_local %struct.clk* @syscon_regmap_lookup_by_phandle(i32, i8*) #2

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #2

declare dso_local i32 @PTR_ERR(%struct.clk*) #2

declare dso_local %struct.clk* @devm_regulator_get_optional(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @init_clks(%struct.platform_device*, %struct.clk**) #2

declare dso_local i64 @MTK_SCPD_CAPS(%struct.scp_domain*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
