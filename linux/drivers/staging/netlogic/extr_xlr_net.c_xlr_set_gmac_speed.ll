; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_set_gmac_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_set_gmac_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { i32, i32, i32 }
%struct.phy_device = type { i64, i32 }

@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i32 0, align 4
@R_MAC_CONFIG_2 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@R_INTERFACE_CONTROL = common dso_local global i32 0, align 4
@SGMII_SPEED_10 = common dso_local global i32 0, align 4
@SGMII_SPEED_100 = common dso_local global i32 0, align 4
@SGMII_SPEED_1000 = common dso_local global i32 0, align 4
@R_CORECONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"gmac%d : %dMbps\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xlr_set_gmac_speed(%struct.xlr_net_priv* %0) #0 {
  %2 = alloca %struct.xlr_net_priv*, align 8
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %2, align 8
  %5 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %6 = call %struct.phy_device* @xlr_get_phydev(%struct.xlr_net_priv* %5)
  store %struct.phy_device* %6, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %14 = call i32 @xlr_sgmii_init(%struct.xlr_net_priv* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %20 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %128

23:                                               ; preds = %15
  %24 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SPEED_1000, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %32 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @R_MAC_CONFIG_2, align 4
  %35 = call i32 @xlr_nae_wreg(i32 %33, i32 %34, i32 29207)
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %38 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %57

39:                                               ; preds = %23
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SPEED_100, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SPEED_10, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43, %39
  %48 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %49 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @R_MAC_CONFIG_2, align 4
  %52 = call i32 @xlr_nae_wreg(i32 %50, i32 %51, i32 28951)
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %55 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %47, %43
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %59 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SPEED_10, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %69 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @R_INTERFACE_CONTROL, align 4
  %72 = load i32, i32* @SGMII_SPEED_10, align 4
  %73 = call i32 @xlr_nae_wreg(i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %63
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @SPEED_100, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %80 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @R_INTERFACE_CONTROL, align 4
  %83 = load i32, i32* @SGMII_SPEED_100, align 4
  %84 = call i32 @xlr_nae_wreg(i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %74
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @SPEED_1000, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %91 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @R_INTERFACE_CONTROL, align 4
  %94 = load i32, i32* @SGMII_SPEED_1000, align 4
  %95 = call i32 @xlr_nae_wreg(i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %89, %85
  br label %97

97:                                               ; preds = %96, %57
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @SPEED_10, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %103 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @R_CORECONTROL, align 4
  %106 = call i32 @xlr_nae_wreg(i32 %104, i32 %105, i32 2)
  br label %107

107:                                              ; preds = %101, %97
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @SPEED_100, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %113 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @R_CORECONTROL, align 4
  %116 = call i32 @xlr_nae_wreg(i32 %114, i32 %115, i32 1)
  br label %117

117:                                              ; preds = %111, %107
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @SPEED_1000, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %123 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @R_CORECONTROL, align 4
  %126 = call i32 @xlr_nae_wreg(i32 %124, i32 %125, i32 0)
  br label %127

127:                                              ; preds = %121, %117
  br label %128

128:                                              ; preds = %127, %15
  %129 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %130 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %133 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %134)
  ret void
}

declare dso_local %struct.phy_device* @xlr_get_phydev(%struct.xlr_net_priv*) #1

declare dso_local i32 @xlr_sgmii_init(%struct.xlr_net_priv*) #1

declare dso_local i32 @xlr_nae_wreg(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
