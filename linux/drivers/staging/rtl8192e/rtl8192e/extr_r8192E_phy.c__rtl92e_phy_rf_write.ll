; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c__rtl92e_phy_rf_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c__rtl92e_phy_rf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32*, %struct.bb_reg_definition* }
%struct.bb_reg_definition = type { i32 }

@RF_8256 = common dso_local global i64 0, align 8
@rFPGA0_AnalogParameter4 = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@COMP_PHY = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"check RF type here, need to be 8256\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @_rtl92e_phy_rf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_phy_rf_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.r8192_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bb_reg_definition*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 2
  %17 = load %struct.bb_reg_definition*, %struct.bb_reg_definition** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bb_reg_definition, %struct.bb_reg_definition* %17, i64 %19
  store %struct.bb_reg_definition* %20, %struct.bb_reg_definition** %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 63
  store i32 %22, i32* %7, align 4
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RF_8256, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %99

28:                                               ; preds = %4
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load i32, i32* @rFPGA0_AnalogParameter4, align 4
  %31 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %29, i32 %30, i32 3840, i32 0)
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %32, 31
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %36 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, 320
  store i32 %42, i32* %40, align 4
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load %struct.bb_reg_definition*, %struct.bb_reg_definition** %12, align 8
  %45 = getelementptr inbounds %struct.bb_reg_definition, %struct.bb_reg_definition* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @bMaskDWord, align 4
  %48 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %49 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 16
  %56 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %43, i32 %46, i32 %47, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %57, 30
  store i32 %58, i32* %11, align 4
  br label %98

59:                                               ; preds = %28
  %60 = load i32, i32* %7, align 4
  %61 = icmp sge i32 %60, 16
  br i1 %61, label %62, label %95

62:                                               ; preds = %59
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, 256
  store i32 %70, i32* %68, align 4
  %71 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %72 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, -65
  store i32 %78, i32* %76, align 4
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = load %struct.bb_reg_definition*, %struct.bb_reg_definition** %12, align 8
  %81 = getelementptr inbounds %struct.bb_reg_definition, %struct.bb_reg_definition* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @bMaskDWord, align 4
  %84 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %85 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 16
  %92 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %79, i32 %82, i32 %83, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, 15
  store i32 %94, i32* %11, align 4
  br label %97

95:                                               ; preds = %59
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %95, %62
  br label %98

98:                                               ; preds = %97, %34
  br label %105

99:                                               ; preds = %4
  %100 = load i32, i32* @COMP_PHY, align 4
  %101 = load i32, i32* @COMP_ERR, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @RT_TRACE(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %99, %98
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %106, 63
  %108 = load i32, i32* %8, align 4
  %109 = shl i32 %108, 16
  %110 = or i32 %107, %109
  store i32 %110, i32* %10, align 4
  %111 = load %struct.net_device*, %struct.net_device** %5, align 8
  %112 = load %struct.bb_reg_definition*, %struct.bb_reg_definition** %12, align 8
  %113 = getelementptr inbounds %struct.bb_reg_definition, %struct.bb_reg_definition* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @bMaskDWord, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %111, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %105
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %123 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  br label %128

128:                                              ; preds = %120, %105
  %129 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %130 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @RF_8256, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %164

134:                                              ; preds = %128
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %134
  %138 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %139 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 3775
  store i32 %145, i32* %143, align 4
  %146 = load %struct.net_device*, %struct.net_device** %5, align 8
  %147 = load %struct.bb_reg_definition*, %struct.bb_reg_definition** %12, align 8
  %148 = getelementptr inbounds %struct.bb_reg_definition, %struct.bb_reg_definition* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @bMaskDWord, align 4
  %151 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %152 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 16
  %159 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %146, i32 %149, i32 %150, i32 %158)
  br label %160

160:                                              ; preds = %137, %134
  %161 = load %struct.net_device*, %struct.net_device** %5, align 8
  %162 = load i32, i32* @rFPGA0_AnalogParameter4, align 4
  %163 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %161, i32 %162, i32 768, i32 3)
  br label %164

164:                                              ; preds = %160, %128
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_set_bb_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
