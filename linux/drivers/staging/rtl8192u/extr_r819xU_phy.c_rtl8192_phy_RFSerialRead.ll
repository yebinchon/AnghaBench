; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_phy_RFSerialRead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_phy_RFSerialRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@bLSSIReadBackData = common dso_local global i32 0, align 4
@RF_8256 = common dso_local global i64 0, align 8
@bMaskDWord = common dso_local global i32 0, align 4
@COMP_PHY = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"check RF type here, need to be 8256\0A\00", align 1
@bLSSIReadAddress = common dso_local global i32 0, align 4
@bLSSIReadEdge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @rtl8192_phy_RFSerialRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8192_phy_RFSerialRead(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %11)
  store %struct.r8192_priv* %12, %struct.r8192_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @bLSSIReadBackData, align 4
  %24 = call i32 @rtl8192_setBBreg(%struct.net_device* %19, i32 %22, i32 %23, i32 0)
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 63
  store i32 %26, i32* %6, align 4
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RF_8256, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %100

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %33, 31
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %37 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 320
  store i32 %43, i32* %41, align 4
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @bMaskDWord, align 4
  %49 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %50 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 16
  %57 = call i32 @rtl8192_setBBreg(%struct.net_device* %44, i32 %47, i32 %48, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 30
  store i32 %59, i32* %9, align 4
  br label %99

60:                                               ; preds = %32
  %61 = load i32, i32* %6, align 4
  %62 = icmp sge i32 %61, 16
  br i1 %62, label %63, label %96

63:                                               ; preds = %60
  %64 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %65 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, 256
  store i32 %71, i32* %69, align 4
  %72 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %73 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, -65
  store i32 %79, i32* %77, align 4
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @bMaskDWord, align 4
  %85 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %86 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 16
  %93 = call i32 @rtl8192_setBBreg(%struct.net_device* %80, i32 %83, i32 %84, i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %94, 15
  store i32 %95, i32* %9, align 4
  br label %98

96:                                               ; preds = %60
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %96, %63
  br label %99

99:                                               ; preds = %98, %35
  br label %106

100:                                              ; preds = %3
  %101 = load i32, i32* @COMP_PHY, align 4
  %102 = load i32, i32* @COMP_ERR, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @RT_TRACE(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %100, %99
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @bLSSIReadAddress, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @rtl8192_setBBreg(%struct.net_device* %107, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.net_device*, %struct.net_device** %4, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @bLSSIReadEdge, align 4
  %119 = call i32 @rtl8192_setBBreg(%struct.net_device* %114, i32 %117, i32 %118, i32 0)
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @bLSSIReadEdge, align 4
  %125 = call i32 @rtl8192_setBBreg(%struct.net_device* %120, i32 %123, i32 %124, i32 1)
  %126 = call i32 @usleep_range(i32 1000, i32 1000)
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @bLSSIReadBackData, align 4
  %132 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %127, i32 %130, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %134 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @RF_8256, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %161

138:                                              ; preds = %106
  %139 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %140 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 3775
  store i32 %146, i32* %144, align 4
  %147 = load %struct.net_device*, %struct.net_device** %4, align 8
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @bMaskDWord, align 4
  %152 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %153 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 16
  %160 = call i32 @rtl8192_setBBreg(%struct.net_device* %147, i32 %150, i32 %151, i32 %159)
  br label %161

161:                                              ; preds = %138, %106
  %162 = load i32, i32* %8, align 4
  ret i32 %162
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
