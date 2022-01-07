; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pmc = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.tegra_powergate = type { i32, i64, %struct.tegra_powergate*, i32, %struct.TYPE_4__, %struct.tegra_pmc* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"powergate lookup failed for %pOFn: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@tegra_genpd_power_off = common dso_local global i32 0, align 4
@tegra_genpd_power_on = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to get clocks for %pOFn: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to get resets for %pOFn: %d\0A\00", align 1
@CONFIG_PM_GENERIC_DOMAINS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to initialise PM domain %pOFn: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"failed to add PM domain provider for %pOFn: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"added PM domain %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pmc*, %struct.device_node*)* @tegra_powergate_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_powergate_add(%struct.tegra_pmc* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_pmc*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tegra_powergate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tegra_pmc* %0, %struct.tegra_pmc** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %11 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tegra_powergate* @kzalloc(i32 48, i32 %14)
  store %struct.tegra_powergate* %15, %struct.tegra_powergate** %7, align 8
  %16 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %17 = icmp ne %struct.tegra_powergate* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %175

21:                                               ; preds = %2
  %22 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = getelementptr inbounds %struct.device_node, %struct.device_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @tegra_powergate_lookup(%struct.tegra_pmc* %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.device_node* %31, i32 %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %171

36:                                               ; preds = %21
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @clear_bit(i32 %37, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %44 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = getelementptr inbounds %struct.device_node, %struct.device_node* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %49 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @tegra_genpd_power_off, align 4
  %52 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %53 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @tegra_genpd_power_on, align 4
  %56 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %57 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %60 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %61 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %60, i32 0, i32 5
  store %struct.tegra_pmc* %59, %struct.tegra_pmc** %61, align 8
  %62 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %63 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %64 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @tegra_powergate_is_powered(%struct.tegra_pmc* %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %71 = load %struct.device_node*, %struct.device_node** %5, align 8
  %72 = call i32 @tegra_powergate_of_get_clks(%struct.tegra_powergate* %70, %struct.device_node* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %36
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load %struct.device_node*, %struct.device_node** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %77, i32 %78)
  br label %165

80:                                               ; preds = %36
  %81 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %82 = load %struct.device_node*, %struct.device_node** %5, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @tegra_powergate_of_get_resets(%struct.tegra_powergate* %81, %struct.device_node* %82, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = load %struct.device_node*, %struct.device_node** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %89, i32 %90)
  br label %144

92:                                               ; preds = %80
  %93 = load i32, i32* @CONFIG_PM_GENERIC_DOMAINS, align 4
  %94 = call i32 @IS_ENABLED(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %101 = call i32 @tegra_powergate_power_up(%struct.tegra_powergate* %100, i32 1)
  %102 = call i32 @WARN_ON(i32 %101)
  br label %103

103:                                              ; preds = %99, %96
  br label %139

104:                                              ; preds = %92
  %105 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %106 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %105, i32 0, i32 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @pm_genpd_init(%struct.TYPE_4__* %106, i32* null, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = load %struct.device_node*, %struct.device_node** %5, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %113, i32 %114)
  br label %139

116:                                              ; preds = %104
  %117 = load %struct.device_node*, %struct.device_node** %5, align 8
  %118 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %119 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %118, i32 0, i32 4
  %120 = call i32 @of_genpd_add_provider_simple(%struct.device_node* %117, %struct.TYPE_4__* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load %struct.device*, %struct.device** %6, align 8
  %125 = load %struct.device_node*, %struct.device_node** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %125, i32 %126)
  br label %135

128:                                              ; preds = %116
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %131 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dev_dbg(%struct.device* %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  store i32 0, i32* %3, align 4
  br label %175

135:                                              ; preds = %123
  %136 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %137 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %136, i32 0, i32 4
  %138 = call i32 @pm_genpd_remove(%struct.TYPE_4__* %137)
  br label %139

139:                                              ; preds = %135, %111, %103
  %140 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %141 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @reset_control_put(i32 %142)
  br label %144

144:                                              ; preds = %139, %87
  br label %145

145:                                              ; preds = %151, %144
  %146 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %147 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, -1
  store i64 %149, i64* %147, align 8
  %150 = icmp ne i64 %148, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %145
  %152 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %153 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %152, i32 0, i32 2
  %154 = load %struct.tegra_powergate*, %struct.tegra_powergate** %153, align 8
  %155 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %156 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %154, i64 %157
  %159 = call i32 @clk_put(%struct.tegra_powergate* byval(%struct.tegra_powergate) align 8 %158)
  br label %145

160:                                              ; preds = %145
  %161 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %162 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %161, i32 0, i32 2
  %163 = load %struct.tegra_powergate*, %struct.tegra_powergate** %162, align 8
  %164 = call i32 @kfree(%struct.tegra_powergate* %163)
  br label %165

165:                                              ; preds = %160, %75
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %168 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @set_bit(i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %165, %29
  %172 = load %struct.tegra_powergate*, %struct.tegra_powergate** %7, align 8
  %173 = call i32 @kfree(%struct.tegra_powergate* %172)
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %171, %128, %18
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.tegra_powergate* @kzalloc(i32, i32) #1

declare dso_local i32 @tegra_powergate_lookup(%struct.tegra_pmc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.device_node*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @tegra_powergate_is_powered(%struct.tegra_pmc*, i32) #1

declare dso_local i32 @tegra_powergate_of_get_clks(%struct.tegra_powergate*, %struct.device_node*) #1

declare dso_local i32 @tegra_powergate_of_get_resets(%struct.tegra_powergate*, %struct.device_node*, i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tegra_powergate_power_up(%struct.tegra_powergate*, i32) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @of_genpd_add_provider_simple(%struct.device_node*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @pm_genpd_remove(%struct.TYPE_4__*) #1

declare dso_local i32 @reset_control_put(i32) #1

declare dso_local i32 @clk_put(%struct.tegra_powergate* byval(%struct.tegra_powergate) align 8) #1

declare dso_local i32 @kfree(%struct.tegra_powergate*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
