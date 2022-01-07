; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c__rtl92e_phy_rf_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c__rtl92e_phy_rf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32*, %struct.bb_reg_definition* }
%struct.bb_reg_definition = type { i32, i32, i32 }

@RF_8256 = common dso_local global i64 0, align 8
@rFPGA0_AnalogParameter4 = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@COMP_PHY = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"check RF type here, need to be 8256\0A\00", align 1
@bLSSIReadAddress = common dso_local global i32 0, align 4
@bLSSIReadEdge = common dso_local global i32 0, align 4
@bLSSIReadBackData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @_rtl92e_phy_rf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_phy_rf_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bb_reg_definition*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %11)
  store %struct.r8192_priv* %12, %struct.r8192_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 2
  %15 = load %struct.bb_reg_definition*, %struct.bb_reg_definition** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bb_reg_definition, %struct.bb_reg_definition* %15, i64 %17
  store %struct.bb_reg_definition* %18, %struct.bb_reg_definition** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 63
  store i32 %20, i32* %6, align 4
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RF_8256, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %97

26:                                               ; preds = %3
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load i32, i32* @rFPGA0_AnalogParameter4, align 4
  %29 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %27, i32 %28, i32 3840, i32 0)
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 31
  br i1 %31, label %32, label %57

32:                                               ; preds = %26
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, 320
  store i32 %40, i32* %38, align 4
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = load %struct.bb_reg_definition*, %struct.bb_reg_definition** %10, align 8
  %43 = getelementptr inbounds %struct.bb_reg_definition, %struct.bb_reg_definition* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @bMaskDWord, align 4
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %41, i32 %44, i32 %45, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 30
  store i32 %56, i32* %9, align 4
  br label %96

57:                                               ; preds = %26
  %58 = load i32, i32* %6, align 4
  %59 = icmp sge i32 %58, 16
  br i1 %59, label %60, label %93

60:                                               ; preds = %57
  %61 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %62 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, 256
  store i32 %68, i32* %66, align 4
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, -65
  store i32 %76, i32* %74, align 4
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = load %struct.bb_reg_definition*, %struct.bb_reg_definition** %10, align 8
  %79 = getelementptr inbounds %struct.bb_reg_definition, %struct.bb_reg_definition* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @bMaskDWord, align 4
  %82 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %83 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 16
  %90 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %77, i32 %80, i32 %81, i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, 15
  store i32 %92, i32* %9, align 4
  br label %95

93:                                               ; preds = %57
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %93, %60
  br label %96

96:                                               ; preds = %95, %32
  br label %103

97:                                               ; preds = %3
  %98 = load i32, i32* @COMP_PHY, align 4
  %99 = load i32, i32* @COMP_ERR, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @RT_TRACE(i32 %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %97, %96
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = load %struct.bb_reg_definition*, %struct.bb_reg_definition** %10, align 8
  %106 = getelementptr inbounds %struct.bb_reg_definition, %struct.bb_reg_definition* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @bLSSIReadAddress, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %104, i32 %107, i32 %108, i32 %109)
  %111 = load %struct.net_device*, %struct.net_device** %4, align 8
  %112 = load %struct.bb_reg_definition*, %struct.bb_reg_definition** %10, align 8
  %113 = getelementptr inbounds %struct.bb_reg_definition, %struct.bb_reg_definition* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @bLSSIReadEdge, align 4
  %116 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %111, i32 %114, i32 %115, i32 0)
  %117 = load %struct.net_device*, %struct.net_device** %4, align 8
  %118 = load %struct.bb_reg_definition*, %struct.bb_reg_definition** %10, align 8
  %119 = getelementptr inbounds %struct.bb_reg_definition, %struct.bb_reg_definition* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @bLSSIReadEdge, align 4
  %122 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %117, i32 %120, i32 %121, i32 1)
  %123 = call i32 @mdelay(i32 1)
  %124 = load %struct.net_device*, %struct.net_device** %4, align 8
  %125 = load %struct.bb_reg_definition*, %struct.bb_reg_definition** %10, align 8
  %126 = getelementptr inbounds %struct.bb_reg_definition, %struct.bb_reg_definition* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @bLSSIReadBackData, align 4
  %129 = call i32 @rtl92e_get_bb_reg(%struct.net_device* %124, i32 %127, i32 %128)
  store i32 %129, i32* %8, align 4
  %130 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %131 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @RF_8256, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %161

135:                                              ; preds = %103
  %136 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %137 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 3775
  store i32 %143, i32* %141, align 4
  %144 = load %struct.net_device*, %struct.net_device** %4, align 8
  %145 = load %struct.bb_reg_definition*, %struct.bb_reg_definition** %10, align 8
  %146 = getelementptr inbounds %struct.bb_reg_definition, %struct.bb_reg_definition* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @bMaskDWord, align 4
  %149 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %150 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 16
  %157 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %144, i32 %147, i32 %148, i32 %156)
  %158 = load %struct.net_device*, %struct.net_device** %4, align 8
  %159 = load i32, i32* @rFPGA0_AnalogParameter4, align 4
  %160 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %158, i32 %159, i32 768, i32 3)
  br label %161

161:                                              ; preds = %135, %103
  %162 = load i32, i32* %8, align 4
  ret i32 %162
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_set_bb_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl92e_get_bb_reg(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
