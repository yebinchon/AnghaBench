; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32*, i32*, i64, i32*, i32*, i32*, i32*, i32, i32*, i32 }

@EEPROM_93C46 = common dso_local global i64 0, align 8
@EEPROM_93C56 = common dso_local global i64 0, align 8
@RF_1T2R = common dso_local global i64 0, align 8
@RF_2T4R = common dso_local global i64 0, align 8
@rFPGA0_TxGainStage = common dso_local global i32 0, align 4
@bXBTxAGC = common dso_local global i32 0, align 4
@bXCTxAGC = common dso_local global i32 0, align 4
@bXDTxAGC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid RF Chip ID.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_set_tx_power(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EEPROM_93C46, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  br label %152

34:                                               ; preds = %2
  %35 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %36 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EEPROM_93C56, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %151

40:                                               ; preds = %34
  %41 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %42 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RF_1T2R, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  br label %150

63:                                               ; preds = %40
  %64 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %65 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RF_2T4R, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %149

69:                                               ; preds = %63
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %6, align 4
  %78 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %79 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %78, i32 0, i32 7
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %7, align 4
  %86 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %87 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %95 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %94, i32 0, i32 7
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %93, %101
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %105 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %104, i32 0, i32 8
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, 15
  store i32 %107, i32* %8, align 4
  %108 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %109 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %108, i32 0, i32 9
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  store i32 0, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %114 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %113, i32 0, i32 9
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 %112, i32* %116, align 4
  %117 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %118 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %117, i32 0, i32 9
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 0, i32* %120, align 4
  %121 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %122 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %121, i32 0, i32 9
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 8
  %127 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %128 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %127, i32 0, i32 9
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 4
  %133 = or i32 %126, %132
  %134 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %135 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %134, i32 0, i32 9
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %133, %138
  store i32 %139, i32* %9, align 4
  %140 = load %struct.net_device*, %struct.net_device** %3, align 8
  %141 = load i32, i32* @rFPGA0_TxGainStage, align 4
  %142 = load i32, i32* @bXBTxAGC, align 4
  %143 = load i32, i32* @bXCTxAGC, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @bXDTxAGC, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %140, i32 %141, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %69, %63
  br label %150

150:                                              ; preds = %149, %46
  br label %151

151:                                              ; preds = %150, %34
  br label %152

152:                                              ; preds = %151, %17
  %153 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %154 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 8
  switch i32 %155, label %165 [
    i32 130, label %156
    i32 129, label %157
    i32 128, label %164
  ]

156:                                              ; preds = %152
  br label %168

157:                                              ; preds = %152
  %158 = load %struct.net_device*, %struct.net_device** %3, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @rtl92e_set_cck_tx_power(%struct.net_device* %158, i32 %159)
  %161 = load %struct.net_device*, %struct.net_device** %3, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @rtl92e_set_ofdm_tx_power(%struct.net_device* %161, i32 %162)
  br label %168

164:                                              ; preds = %152
  br label %168

165:                                              ; preds = %152
  %166 = load %struct.net_device*, %struct.net_device** %3, align 8
  %167 = call i32 @netdev_err(%struct.net_device* %166, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %164, %157, %156
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_set_bb_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rtl92e_set_cck_tx_power(%struct.net_device*, i32) #1

declare dso_local i32 @rtl92e_set_ofdm_tx_power(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
