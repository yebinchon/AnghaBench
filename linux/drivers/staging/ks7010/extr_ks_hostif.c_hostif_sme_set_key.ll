; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sme_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sme_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@DOT11_PRIVACY_INVOKED = common dso_local global i32 0, align 4
@DOT11_WEP_DEFAULT_KEY_ID = common dso_local global i32 0, align 4
@DOT11_WEP_DEFAULT_KEY_VALUE1 = common dso_local global i32 0, align 4
@DOT11_WEP_DEFAULT_KEY_VALUE2 = common dso_local global i32 0, align 4
@DOT11_WEP_DEFAULT_KEY_VALUE3 = common dso_local global i32 0, align 4
@DOT11_WEP_DEFAULT_KEY_VALUE4 = common dso_local global i32 0, align 4
@DOT11_PMK_TSC = common dso_local global i32 0, align 4
@WPA_RX_SEQ_LEN = common dso_local global i32 0, align 4
@DOT11_GMK1_TSC = common dso_local global i32 0, align 4
@DOT11_GMK2_TSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*, i32)* @hostif_sme_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_sme_set_key(%struct.ks_wlan_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ks_wlan_private*, align 8
  %4 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %137 [
    i32 136, label %6
    i32 128, label %14
    i32 133, label %22
    i32 132, label %41
    i32 131, label %60
    i32 130, label %79
    i32 129, label %98
    i32 135, label %111
    i32 134, label %124
  ]

6:                                                ; preds = %2
  %7 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %8 = load i32, i32* @DOT11_PRIVACY_INVOKED, align 4
  %9 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %10 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @hostif_mib_set_request_bool(%struct.ks_wlan_private* %7, i32 %8, i32 %12)
  br label %137

14:                                               ; preds = %2
  %15 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %16 = load i32, i32* @DOT11_WEP_DEFAULT_KEY_ID, align 4
  %17 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %18 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @hostif_mib_set_request_int(%struct.ks_wlan_private* %15, i32 %16, i32 %20)
  br label %137

22:                                               ; preds = %2
  %23 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %24 = load i32, i32* @DOT11_WEP_DEFAULT_KEY_VALUE1, align 4
  %25 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %26 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %34 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %23, i32 %24, i32* %32, i32 %39)
  br label %137

41:                                               ; preds = %2
  %42 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %43 = load i32, i32* @DOT11_WEP_DEFAULT_KEY_VALUE2, align 4
  %44 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %45 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %53 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %42, i32 %43, i32* %51, i32 %58)
  br label %137

60:                                               ; preds = %2
  %61 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %62 = load i32, i32* @DOT11_WEP_DEFAULT_KEY_VALUE3, align 4
  %63 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %64 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %72 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %61, i32 %62, i32* %70, i32 %77)
  br label %137

79:                                               ; preds = %2
  %80 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %81 = load i32, i32* @DOT11_WEP_DEFAULT_KEY_VALUE4, align 4
  %82 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %83 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 3
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %91 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 3
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %80, i32 %81, i32* %89, i32 %96)
  br label %137

98:                                               ; preds = %2
  %99 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %100 = load i32, i32* @DOT11_PMK_TSC, align 4
  %101 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %102 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* @WPA_RX_SEQ_LEN, align 4
  %110 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %99, i32 %100, i32* %108, i32 %109)
  br label %137

111:                                              ; preds = %2
  %112 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %113 = load i32, i32* @DOT11_GMK1_TSC, align 4
  %114 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %115 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* @WPA_RX_SEQ_LEN, align 4
  %123 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %112, i32 %113, i32* %121, i32 %122)
  br label %137

124:                                              ; preds = %2
  %125 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %126 = load i32, i32* @DOT11_GMK2_TSC, align 4
  %127 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %128 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 2
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* @WPA_RX_SEQ_LEN, align 4
  %136 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %125, i32 %126, i32* %134, i32 %135)
  br label %137

137:                                              ; preds = %2, %124, %111, %98, %79, %60, %41, %22, %14, %6
  ret void
}

declare dso_local i32 @hostif_mib_set_request_bool(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i32 @hostif_mib_set_request_int(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
