; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_set_wiphy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_set_wiphy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32, i32, i32 }
%struct.cfg_param_attr = type { i32, i32, i32, i32, i32 }
%struct.wilc = type { i32 }
%struct.wilc_vif = type { i32, %struct.wilc_priv }
%struct.wilc_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_SHORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Setting WIPHY_PARAM_RETRY_SHORT %d\0A\00", align 1
@WILC_CFG_PARAM_RETRY_SHORT = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_LONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Setting WIPHY_PARAM_RETRY_LONG %d\0A\00", align 1
@WILC_CFG_PARAM_RETRY_LONG = common dso_local global i32 0, align 4
@WIPHY_PARAM_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Setting WIPHY_PARAM_FRAG_THRESHOLD %d\0A\00", align 1
@WILC_CFG_PARAM_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Fragmentation threshold out of range\0A\00", align 1
@WIPHY_PARAM_RTS_THRESHOLD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Setting WIPHY_PARAM_RTS_THRESHOLD %d\0A\00", align 1
@WILC_CFG_PARAM_RTS_THRESHOLD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"RTS threshold out of range\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Error in setting WIPHY PARAMS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i32)* @set_wiphy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_wiphy_params(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfg_param_attr, align 4
  %8 = alloca %struct.wilc*, align 8
  %9 = alloca %struct.wilc_vif*, align 8
  %10 = alloca %struct.wilc_priv*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %12 = call %struct.wilc* @wiphy_priv(%struct.wiphy* %11)
  store %struct.wilc* %12, %struct.wilc** %8, align 8
  %13 = load %struct.wilc*, %struct.wilc** %8, align 8
  %14 = call %struct.wilc_vif* @wilc_get_interface(%struct.wilc* %13)
  store %struct.wilc_vif* %14, %struct.wilc_vif** %9, align 8
  %15 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %16 = icmp ne %struct.wilc_vif* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %150

20:                                               ; preds = %2
  %21 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %22 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %21, i32 0, i32 1
  store %struct.wilc_priv* %22, %struct.wilc_priv** %10, align 8
  %23 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %7, i32 0, i32 4
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @WIPHY_PARAM_RETRY_SHORT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %30 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %33 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @netdev_dbg(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @WILC_CFG_PARAM_RETRY_SHORT, align 4
  %37 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %7, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %41 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %7, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %28, %20
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @WIPHY_PARAM_RETRY_LONG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %51 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %54 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @netdev_dbg(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @WILC_CFG_PARAM_RETRY_LONG, align 4
  %58 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %7, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %62 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %7, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %49, %44
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @WIPHY_PARAM_FRAG_THRESHOLD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %104

70:                                               ; preds = %65
  %71 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %72 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 255
  br i1 %74, label %75, label %96

75:                                               ; preds = %70
  %76 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %77 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 7937
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %82 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %85 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @netdev_dbg(i32 %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @WILC_CFG_PARAM_FRAG_THRESHOLD, align 4
  %89 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %7, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  %92 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %93 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %7, i32 0, i32 2
  store i32 %94, i32* %95, align 4
  br label %103

96:                                               ; preds = %75, %70
  %97 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %98 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @netdev_err(i32 %99, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %150

103:                                              ; preds = %80
  br label %104

104:                                              ; preds = %103, %65
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @WIPHY_PARAM_RTS_THRESHOLD, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %138

109:                                              ; preds = %104
  %110 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %111 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 255
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %116 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %119 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @netdev_dbg(i32 %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @WILC_CFG_PARAM_RTS_THRESHOLD, align 4
  %123 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %7, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %122
  store i32 %125, i32* %123, align 4
  %126 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %127 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %7, i32 0, i32 3
  store i32 %128, i32* %129, align 4
  br label %137

130:                                              ; preds = %109
  %131 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %132 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @netdev_err(i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %150

137:                                              ; preds = %114
  br label %138

138:                                              ; preds = %137, %104
  %139 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %140 = call i32 @wilc_hif_set_cfg(%struct.wilc_vif* %139, %struct.cfg_param_attr* %7)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.wilc_priv*, %struct.wilc_priv** %10, align 8
  %145 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @netdev_err(i32 %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %148

148:                                              ; preds = %143, %138
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %130, %96, %17
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.wilc* @wiphy_priv(%struct.wiphy*) #1

declare dso_local %struct.wilc_vif* @wilc_get_interface(%struct.wilc*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @wilc_hif_set_cfg(%struct.wilc_vif*, %struct.cfg_param_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
