; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_dynamic_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_dynamic_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@IEEE_G = common dso_local global i64 0, align 8
@TX_POWER_ATHEROAP_THRESH_HIGH = common dso_local global i32 0, align 4
@TX_POWER_ATHEROAP_THRESH_LOW = common dso_local global i32 0, align 4
@TX_POWER_NEAR_FIELD_THRESH_HIGH = common dso_local global i32 0, align 4
@TX_POWER_NEAR_FIELD_THRESH_LOW = common dso_local global i32 0, align 4
@COMP_TXAGC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"priv->undecorated_smoothed_pwdb = %ld\0A\00", align 1
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"SetTxPowerLevel8190()  channel = %d\0A\00", align 1
@Adapter = common dso_local global i32 0, align 4
@pHalData = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_dynamic_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_dynamic_txpower(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %9 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %8, i32 0, i32 5
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  br label %147

19:                                               ; preds = %1
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IEEE_G, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @TX_POWER_ATHEROAP_THRESH_HIGH, align 4
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @TX_POWER_ATHEROAP_THRESH_LOW, align 4
  store i32 %37, i32* %5, align 4
  br label %41

38:                                               ; preds = %27, %19
  %39 = load i32, i32* @TX_POWER_NEAR_FIELD_THRESH_HIGH, align 4
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @TX_POWER_NEAR_FIELD_THRESH_LOW, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* @COMP_TXAGC, align 4
  %43 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @RT_TRACE(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 5
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IEEE80211_LINKED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %98

54:                                               ; preds = %41
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %62 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  br label %97

65:                                               ; preds = %54
  %66 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %67 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %73 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %78 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %71, %65
  %80 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %81 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ult i32 %82, 35
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %86 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  br label %96

87:                                               ; preds = %79
  %88 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %89 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp uge i32 %90, 40
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %94 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %87
  br label %96

96:                                               ; preds = %95, %84
  br label %97

97:                                               ; preds = %96, %60
  br label %103

98:                                               ; preds = %41
  %99 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %100 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %102 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %97
  %104 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %105 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %108 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %106, %109
  br i1 %110, label %119, label %111

111:                                              ; preds = %103
  %112 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %113 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %116 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %111, %103
  %120 = load i32, i32* @COMP_TXAGC, align 4
  %121 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %122 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %121, i32 0, i32 5
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @RT_TRACE(i32 %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %130 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %129, i32 0, i32 5
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @rtl8192_phy_setTxPower(%struct.net_device* %128, i32 %134)
  br label %136

136:                                              ; preds = %119, %111
  %137 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %138 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %141 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %143 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %146 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %136, %14
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

declare dso_local i32 @rtl8192_phy_setTxPower(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
