; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_dynamic_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_dynamic_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@HT_IOT_PEER_ATHEROS = common dso_local global i64 0, align 8
@IEEE_G = common dso_local global i64 0, align 8
@TX_POWER_ATHEROAP_THRESH_HIGH = common dso_local global i32 0, align 4
@TX_POWER_ATHEROAP_THRESH_LOW = common dso_local global i32 0, align 4
@TX_POWER_NEAR_FIELD_THRESH_HIGH = common dso_local global i32 0, align 4
@TX_POWER_NEAR_FIELD_THRESH_LOW = common dso_local global i32 0, align 4
@COMP_TXAGC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"priv->undecorated_smoothed_pwdb = %ld\0A\00", align 1
@RTLLIB_LINKED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"SetTxPowerLevel8190()  channel = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_dm_dynamic_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_dm_dynamic_tx_power(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %9 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %8, i32 0, i32 5
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
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
  br label %149

19:                                               ; preds = %1
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 5
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HT_IOT_PEER_ATHEROS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %19
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 5
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IEEE_G, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @TX_POWER_ATHEROAP_THRESH_HIGH, align 4
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @TX_POWER_ATHEROAP_THRESH_LOW, align 4
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %29, %19
  %41 = load i32, i32* @TX_POWER_NEAR_FIELD_THRESH_HIGH, align 4
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @TX_POWER_NEAR_FIELD_THRESH_LOW, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @COMP_TXAGC, align 4
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @RT_TRACE(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %50 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %49, i32 0, i32 5
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RTLLIB_LINKED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %100

56:                                               ; preds = %43
  %57 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %58 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = icmp uge i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  br label %99

67:                                               ; preds = %56
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %75 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %80 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %73, %67
  %82 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %83 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ult i32 %84, 35
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %88 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  br label %98

89:                                               ; preds = %81
  %90 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %91 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp uge i32 %92, 40
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %96 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %89
  br label %98

98:                                               ; preds = %97, %86
  br label %99

99:                                               ; preds = %98, %62
  br label %105

100:                                              ; preds = %43
  %101 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %102 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %104 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %99
  %106 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %107 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %110 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %108, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %105
  %114 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %115 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %118 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %113, %105
  %122 = load i32, i32* @COMP_TXAGC, align 4
  %123 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %124 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %123, i32 0, i32 5
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @RT_TRACE(i32 %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %132 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %131, i32 0, i32 5
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @rtl92e_set_tx_power(%struct.net_device* %130, i32 %136)
  br label %138

138:                                              ; preds = %121, %113
  %139 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %140 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %143 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %145 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %148 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %138, %14
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

declare dso_local i32 @rtl92e_set_tx_power(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
