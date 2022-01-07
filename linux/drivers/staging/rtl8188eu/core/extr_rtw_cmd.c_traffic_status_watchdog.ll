; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_traffic_status_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_traffic_status_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @traffic_status_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traffic_status_watchdog(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.mlme_priv* %12, %struct.mlme_priv** %10, align 8
  %13 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %14 = load i32, i32* @_FW_LINKED, align 4
  %15 = call i64 @check_fwstate(%struct.mlme_priv* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %96

17:                                               ; preds = %1
  %18 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %19 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 100
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %25 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 100
  br i1 %28, label %29, label %42

29:                                               ; preds = %23, %17
  store i32 1, i32* %4, align 4
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %31 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %35 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %41

40:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %39
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %44 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 4000
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %50 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 4000
  br i1 %53, label %54, label %67

54:                                               ; preds = %48, %42
  store i32 1, i32* %7, align 4
  %55 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %56 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %60 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %66

65:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %64
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %69 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %73 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %71, %75
  %77 = icmp sgt i32 %76, 8
  br i1 %77, label %84, label %78

78:                                               ; preds = %67
  %79 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %80 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 2
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %67
  store i32 0, i32* %3, align 4
  br label %86

85:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %84
  %87 = load i32, i32* %3, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.adapter*, %struct.adapter** %2, align 8
  %91 = call i32 @LPS_Enter(%struct.adapter* %90)
  br label %95

92:                                               ; preds = %86
  %93 = load %struct.adapter*, %struct.adapter** %2, align 8
  %94 = call i32 @LPS_Leave(%struct.adapter* %93)
  br label %95

95:                                               ; preds = %92, %89
  br label %99

96:                                               ; preds = %1
  %97 = load %struct.adapter*, %struct.adapter** %2, align 8
  %98 = call i32 @LPS_Leave(%struct.adapter* %97)
  br label %99

99:                                               ; preds = %96, %95
  %100 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %101 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  %103 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %104 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %107 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  store i32 0, i32* %108, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %111 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %115 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 4
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %119 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 5
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %123 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 6
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %127 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 7
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %131 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 8
  store i32 %129, i32* %132, align 4
  ret void
}

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @LPS_Enter(%struct.adapter*) #1

declare dso_local i32 @LPS_Leave(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
