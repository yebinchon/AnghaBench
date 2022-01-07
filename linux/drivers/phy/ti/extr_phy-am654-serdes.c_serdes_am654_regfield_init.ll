; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-am654-serdes.c_serdes_am654_regfield_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-am654-serdes.c_serdes_am654_regfield_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdes_am654 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.device*, %struct.regmap* }
%struct.device = type { i32 }
%struct.regmap = type { i32 }

@cmu_master_cdn_o = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CMU_MASTER_CDN_O reg field init failed\0A\00", align 1
@config_version = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"CONFIG_VERSION reg field init failed\0A\00", align 1
@l1_master_cdn_o = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"L1_MASTER_CDN_O reg field init failed\0A\00", align 1
@cmu_ok_i_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"CMU_OK_I_0 reg field init failed\0A\00", align 1
@por_en = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"POR_EN reg field init failed\0A\00", align 1
@tx0_enable = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"TX0_ENABLE reg field init failed\0A\00", align 1
@rx0_enable = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"RX0_ENABLE reg field init failed\0A\00", align 1
@pll_enable = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"PLL_ENABLE reg field init failed\0A\00", align 1
@pll_ok = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"PLL_OK reg field init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdes_am654*)* @serdes_am654_regfield_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_am654_regfield_init(%struct.serdes_am654* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdes_am654*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.serdes_am654* %0, %struct.serdes_am654** %3, align 8
  %6 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %7 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %6, i32 0, i32 10
  %8 = load %struct.regmap*, %struct.regmap** %7, align 8
  store %struct.regmap* %8, %struct.regmap** %4, align 8
  %9 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %10 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %9, i32 0, i32 9
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load %struct.regmap*, %struct.regmap** %4, align 8
  %14 = load i32, i32* @cmu_master_cdn_o, align 4
  %15 = call i8* @devm_regmap_field_alloc(%struct.device* %12, %struct.regmap* %13, i32 %14)
  %16 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %17 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %16, i32 0, i32 8
  store i8* %15, i8** %17, align 8
  %18 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %19 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %18, i32 0, i32 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %27 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %26, i32 0, i32 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @PTR_ERR(i8* %28)
  store i32 %29, i32* %2, align 4
  br label %183

30:                                               ; preds = %1
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %struct.regmap*, %struct.regmap** %4, align 8
  %33 = load i32, i32* @config_version, align 4
  %34 = call i8* @devm_regmap_field_alloc(%struct.device* %31, %struct.regmap* %32, i32 %33)
  %35 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %36 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %38 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %37, i32 0, i32 7
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %46 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %45, i32 0, i32 7
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  store i32 %48, i32* %2, align 4
  br label %183

49:                                               ; preds = %30
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.regmap*, %struct.regmap** %4, align 8
  %52 = load i32, i32* @l1_master_cdn_o, align 4
  %53 = call i8* @devm_regmap_field_alloc(%struct.device* %50, %struct.regmap* %51, i32 %52)
  %54 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %55 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %57 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %56, i32 0, i32 6
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %65 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %64, i32 0, i32 6
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %2, align 4
  br label %183

68:                                               ; preds = %49
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = load %struct.regmap*, %struct.regmap** %4, align 8
  %71 = load i32, i32* @cmu_ok_i_0, align 4
  %72 = call i8* @devm_regmap_field_alloc(%struct.device* %69, %struct.regmap* %70, i32 %71)
  %73 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %74 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %76 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %75, i32 0, i32 5
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %68
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %84 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %83, i32 0, i32 5
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @PTR_ERR(i8* %85)
  store i32 %86, i32* %2, align 4
  br label %183

87:                                               ; preds = %68
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = load %struct.regmap*, %struct.regmap** %4, align 8
  %90 = load i32, i32* @por_en, align 4
  %91 = call i8* @devm_regmap_field_alloc(%struct.device* %88, %struct.regmap* %89, i32 %90)
  %92 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %93 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %95 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @IS_ERR(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %87
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %102 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %103 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %102, i32 0, i32 4
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @PTR_ERR(i8* %104)
  store i32 %105, i32* %2, align 4
  br label %183

106:                                              ; preds = %87
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = load %struct.regmap*, %struct.regmap** %4, align 8
  %109 = load i32, i32* @tx0_enable, align 4
  %110 = call i8* @devm_regmap_field_alloc(%struct.device* %107, %struct.regmap* %108, i32 %109)
  %111 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %112 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %114 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @IS_ERR(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %106
  %119 = load %struct.device*, %struct.device** %5, align 8
  %120 = call i32 @dev_err(%struct.device* %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %121 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %122 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @PTR_ERR(i8* %123)
  store i32 %124, i32* %2, align 4
  br label %183

125:                                              ; preds = %106
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = load %struct.regmap*, %struct.regmap** %4, align 8
  %128 = load i32, i32* @rx0_enable, align 4
  %129 = call i8* @devm_regmap_field_alloc(%struct.device* %126, %struct.regmap* %127, i32 %128)
  %130 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %131 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  %132 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %133 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @IS_ERR(i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %125
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = call i32 @dev_err(%struct.device* %138, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %140 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %141 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @PTR_ERR(i8* %142)
  store i32 %143, i32* %2, align 4
  br label %183

144:                                              ; preds = %125
  %145 = load %struct.device*, %struct.device** %5, align 8
  %146 = load %struct.regmap*, %struct.regmap** %4, align 8
  %147 = load i32, i32* @pll_enable, align 4
  %148 = call i8* @devm_regmap_field_alloc(%struct.device* %145, %struct.regmap* %146, i32 %147)
  %149 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %150 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %152 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @IS_ERR(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %144
  %157 = load %struct.device*, %struct.device** %5, align 8
  %158 = call i32 @dev_err(%struct.device* %157, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %159 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %160 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @PTR_ERR(i8* %161)
  store i32 %162, i32* %2, align 4
  br label %183

163:                                              ; preds = %144
  %164 = load %struct.device*, %struct.device** %5, align 8
  %165 = load %struct.regmap*, %struct.regmap** %4, align 8
  %166 = load i32, i32* @pll_ok, align 4
  %167 = call i8* @devm_regmap_field_alloc(%struct.device* %164, %struct.regmap* %165, i32 %166)
  %168 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %169 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %168, i32 0, i32 0
  store i8* %167, i8** %169, align 8
  %170 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %171 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @IS_ERR(i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %163
  %176 = load %struct.device*, %struct.device** %5, align 8
  %177 = call i32 @dev_err(%struct.device* %176, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %178 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %179 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @PTR_ERR(i8* %180)
  store i32 %181, i32* %2, align 4
  br label %183

182:                                              ; preds = %163
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %182, %175, %156, %137, %118, %99, %80, %61, %42, %23
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i8* @devm_regmap_field_alloc(%struct.device*, %struct.regmap*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
