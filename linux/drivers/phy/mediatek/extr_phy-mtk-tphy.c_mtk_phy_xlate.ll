; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_mtk_phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_mtk_phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32, i64*, %struct.device_node* }
%struct.mtk_tphy = type { i32, %struct.TYPE_4__*, %struct.mtk_phy_instance** }
%struct.TYPE_4__ = type { i64 }
%struct.mtk_phy_instance = type { i64, %struct.phy* }

@.str = private unnamed_addr constant [43 x i8] c"invalid number of cells in 'phy' property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to find appropriate phy\0A\00", align 1
@PHY_TYPE_USB2 = common dso_local global i64 0, align 8
@PHY_TYPE_USB3 = common dso_local global i64 0, align 8
@PHY_TYPE_PCIE = common dso_local global i64 0, align 8
@PHY_TYPE_SATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"unsupported device type: %d\0A\00", align 1
@MTK_PHY_V1 = common dso_local global i64 0, align 8
@MTK_PHY_V2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"phy version is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @mtk_phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @mtk_phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.mtk_tphy*, align 8
  %7 = alloca %struct.mtk_phy_instance*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.mtk_tphy* @dev_get_drvdata(%struct.device* %10)
  store %struct.mtk_tphy* %11, %struct.mtk_tphy** %6, align 8
  store %struct.mtk_phy_instance* null, %struct.mtk_phy_instance** %7, align 8
  %12 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %13 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %12, i32 0, i32 2
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %8, align 8
  %15 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %16 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.phy* @ERR_PTR(i32 %23)
  store %struct.phy* %24, %struct.phy** %3, align 8
  br label %146

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %56, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.mtk_tphy*, %struct.mtk_tphy** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_tphy, %struct.mtk_tphy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %26
  %33 = load %struct.device_node*, %struct.device_node** %8, align 8
  %34 = load %struct.mtk_tphy*, %struct.mtk_tphy** %6, align 8
  %35 = getelementptr inbounds %struct.mtk_tphy, %struct.mtk_tphy* %34, i32 0, i32 2
  %36 = load %struct.mtk_phy_instance**, %struct.mtk_phy_instance*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %36, i64 %38
  %40 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %39, align 8
  %41 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %40, i32 0, i32 1
  %42 = load %struct.phy*, %struct.phy** %41, align 8
  %43 = getelementptr inbounds %struct.phy, %struct.phy* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.device_node*, %struct.device_node** %44, align 8
  %46 = icmp eq %struct.device_node* %33, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %32
  %48 = load %struct.mtk_tphy*, %struct.mtk_tphy** %6, align 8
  %49 = getelementptr inbounds %struct.mtk_tphy, %struct.mtk_tphy* %48, i32 0, i32 2
  %50 = load %struct.mtk_phy_instance**, %struct.mtk_phy_instance*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %50, i64 %52
  %54 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %53, align 8
  store %struct.mtk_phy_instance* %54, %struct.mtk_phy_instance** %7, align 8
  br label %59

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %26

59:                                               ; preds = %47, %26
  %60 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %7, align 8
  %61 = icmp ne %struct.mtk_phy_instance* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.phy* @ERR_PTR(i32 %66)
  store %struct.phy* %67, %struct.phy** %3, align 8
  br label %146

68:                                               ; preds = %59
  %69 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %70 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %7, align 8
  %75 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %7, align 8
  %77 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PHY_TYPE_USB2, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %108, label %81

81:                                               ; preds = %68
  %82 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %7, align 8
  %83 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PHY_TYPE_USB3, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %108, label %87

87:                                               ; preds = %81
  %88 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %7, align 8
  %89 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PHY_TYPE_PCIE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %108, label %93

93:                                               ; preds = %87
  %94 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %7, align 8
  %95 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PHY_TYPE_SATA, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %108, label %99

99:                                               ; preds = %93
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %7, align 8
  %102 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  %107 = call %struct.phy* @ERR_PTR(i32 %106)
  store %struct.phy* %107, %struct.phy** %3, align 8
  br label %146

108:                                              ; preds = %93, %87, %81, %68
  %109 = load %struct.mtk_tphy*, %struct.mtk_tphy** %6, align 8
  %110 = getelementptr inbounds %struct.mtk_tphy, %struct.mtk_tphy* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MTK_PHY_V1, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load %struct.mtk_tphy*, %struct.mtk_tphy** %6, align 8
  %118 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %7, align 8
  %119 = call i32 @phy_v1_banks_init(%struct.mtk_tphy* %117, %struct.mtk_phy_instance* %118)
  br label %139

120:                                              ; preds = %108
  %121 = load %struct.mtk_tphy*, %struct.mtk_tphy** %6, align 8
  %122 = getelementptr inbounds %struct.mtk_tphy, %struct.mtk_tphy* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MTK_PHY_V2, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load %struct.mtk_tphy*, %struct.mtk_tphy** %6, align 8
  %130 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %7, align 8
  %131 = call i32 @phy_v2_banks_init(%struct.mtk_tphy* %129, %struct.mtk_phy_instance* %130)
  br label %138

132:                                              ; preds = %120
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  %137 = call %struct.phy* @ERR_PTR(i32 %136)
  store %struct.phy* %137, %struct.phy** %3, align 8
  br label %146

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %116
  %140 = load %struct.mtk_tphy*, %struct.mtk_tphy** %6, align 8
  %141 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %7, align 8
  %142 = call i32 @phy_parse_property(%struct.mtk_tphy* %140, %struct.mtk_phy_instance* %141)
  %143 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %7, align 8
  %144 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %143, i32 0, i32 1
  %145 = load %struct.phy*, %struct.phy** %144, align 8
  store %struct.phy* %145, %struct.phy** %3, align 8
  br label %146

146:                                              ; preds = %139, %132, %99, %62, %19
  %147 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %147
}

declare dso_local %struct.mtk_tphy* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i32 @phy_v1_banks_init(%struct.mtk_tphy*, %struct.mtk_phy_instance*) #1

declare dso_local i32 @phy_v2_banks_init(%struct.mtk_tphy*, %struct.mtk_phy_instance*) #1

declare dso_local i32 @phy_parse_property(%struct.mtk_tphy*, %struct.mtk_phy_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
