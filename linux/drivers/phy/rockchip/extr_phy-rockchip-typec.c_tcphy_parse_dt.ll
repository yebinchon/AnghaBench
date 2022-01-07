; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_typec_phy = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"could not find grf dt node\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"tcpdcore\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"could not get uphy core clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"tcpdphy-ref\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"could not get uphy ref clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"uphy\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"no uphy_rst reset control found\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"uphy-pipe\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"no pipe_rst reset control found\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"uphy-tcphy\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"no tcphy_rst reset control found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_typec_phy*, %struct.device*)* @tcphy_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcphy_parse_dt(%struct.rockchip_typec_phy* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_typec_phy*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.rockchip_typec_phy* %0, %struct.rockchip_typec_phy** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %6 = load %struct.device*, %struct.device** %5, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @syscon_regmap_lookup_by_phandle(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %11 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %10, i32 0, i32 5
  store i8* %9, i8** %11, align 8
  %12 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %13 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %12, i32 0, i32 5
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @IS_ERR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %21 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %20, i32 0, i32 5
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @PTR_ERR(i8* %22)
  store i32 %23, i32* %3, align 4
  br label %110

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i8* @devm_clk_get(%struct.device* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %28 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %30 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %29, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %38 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %3, align 4
  br label %110

41:                                               ; preds = %24
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = call i8* @devm_clk_get(%struct.device* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %44 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %45 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %47 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %54 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %55 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @PTR_ERR(i8* %56)
  store i32 %57, i32* %3, align 4
  br label %110

58:                                               ; preds = %41
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = call i8* @devm_reset_control_get(%struct.device* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %61 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %62 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %64 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @IS_ERR(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %58
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %71 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %72 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %3, align 4
  br label %110

75:                                               ; preds = %58
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = call i8* @devm_reset_control_get(%struct.device* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %78 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %79 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %81 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %75
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %88 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %89 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @PTR_ERR(i8* %90)
  store i32 %91, i32* %3, align 4
  br label %110

92:                                               ; preds = %75
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = call i8* @devm_reset_control_get(%struct.device* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %95 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %96 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %98 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @IS_ERR(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %92
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = call i32 @dev_err(%struct.device* %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %105 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %4, align 8
  %106 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @PTR_ERR(i8* %107)
  store i32 %108, i32* %3, align 4
  br label %110

109:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %102, %85, %68, %51, %34, %17
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i8* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i8* @devm_reset_control_get(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
