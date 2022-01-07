; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_phy_RFSerialWrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_phy_RFSerialWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RF_8256 = common dso_local global i64 0, align 8
@bMaskDWord = common dso_local global i32 0, align 4
@COMP_PHY = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"check RF type here, need to be 8256\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @rtl8192_phy_RFSerialWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_phy_RFSerialWrite(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.r8192_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 63
  store i32 %22, i32* %7, align 4
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RF_8256, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %96

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 31
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  %32 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %33 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, 320
  store i32 %39, i32* %37, align 4
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @bMaskDWord, align 4
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 16
  %53 = call i32 @rtl8192_setBBreg(%struct.net_device* %40, i32 %43, i32 %44, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 30
  store i32 %55, i32* %11, align 4
  br label %95

56:                                               ; preds = %28
  %57 = load i32, i32* %7, align 4
  %58 = icmp sge i32 %57, 16
  br i1 %58, label %59, label %92

59:                                               ; preds = %56
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, 256
  store i32 %67, i32* %65, align 4
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, -65
  store i32 %75, i32* %73, align 4
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @bMaskDWord, align 4
  %81 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %82 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 16
  %89 = call i32 @rtl8192_setBBreg(%struct.net_device* %76, i32 %79, i32 %80, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, 15
  store i32 %91, i32* %11, align 4
  br label %94

92:                                               ; preds = %56
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %92, %59
  br label %95

95:                                               ; preds = %94, %31
  br label %102

96:                                               ; preds = %4
  %97 = load i32, i32* @COMP_PHY, align 4
  %98 = load i32, i32* @COMP_ERR, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @RT_TRACE(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %96, %95
  %103 = load i32, i32* %8, align 4
  %104 = shl i32 %103, 16
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, 63
  %107 = or i32 %104, %106
  store i32 %107, i32* %10, align 4
  %108 = load %struct.net_device*, %struct.net_device** %5, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @bMaskDWord, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @rtl8192_setBBreg(%struct.net_device* %108, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %102
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %120 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  br label %125

125:                                              ; preds = %117, %102
  %126 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %127 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @RF_8256, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %125
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %131
  %135 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %136 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 3775
  store i32 %142, i32* %140, align 4
  %143 = load %struct.net_device*, %struct.net_device** %5, align 8
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @bMaskDWord, align 4
  %148 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %149 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 16
  %156 = call i32 @rtl8192_setBBreg(%struct.net_device* %143, i32 %146, i32 %147, i32 %155)
  br label %157

157:                                              ; preds = %134, %131
  br label %158

158:                                              ; preds = %157, %125
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
