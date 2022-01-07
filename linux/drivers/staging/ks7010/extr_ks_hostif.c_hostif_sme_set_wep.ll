; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sme_set_wep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sme_set_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32 }

@DOT11_WEP_DEFAULT_KEY_ID = common dso_local global i32 0, align 4
@DOT11_WEP_DEFAULT_KEY_VALUE1 = common dso_local global i32 0, align 4
@DOT11_WEP_DEFAULT_KEY_VALUE2 = common dso_local global i32 0, align 4
@DOT11_WEP_DEFAULT_KEY_VALUE3 = common dso_local global i32 0, align 4
@DOT11_WEP_DEFAULT_KEY_VALUE4 = common dso_local global i32 0, align 4
@DOT11_PRIVACY_INVOKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*, i32)* @hostif_sme_set_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_sme_set_wep(%struct.ks_wlan_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ks_wlan_private*, align 8
  %4 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %126 [
    i32 132, label %6
    i32 131, label %14
    i32 130, label %40
    i32 129, label %66
    i32 128, label %92
    i32 133, label %118
  ]

6:                                                ; preds = %2
  %7 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %8 = load i32, i32* @DOT11_WEP_DEFAULT_KEY_ID, align 4
  %9 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %10 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @hostif_mib_set_request_int(%struct.ks_wlan_private* %7, i32 %8, i32 %12)
  br label %126

14:                                               ; preds = %2
  %15 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %16 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %126

21:                                               ; preds = %14
  %22 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %23 = load i32, i32* @DOT11_WEP_DEFAULT_KEY_VALUE1, align 4
  %24 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %25 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %33 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %22, i32 %23, i32* %31, i32 %38)
  br label %126

40:                                               ; preds = %2
  %41 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %42 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %126

47:                                               ; preds = %40
  %48 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %49 = load i32, i32* @DOT11_WEP_DEFAULT_KEY_VALUE2, align 4
  %50 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %51 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %59 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %48, i32 %49, i32* %57, i32 %64)
  br label %126

66:                                               ; preds = %2
  %67 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %68 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %126

73:                                               ; preds = %66
  %74 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %75 = load i32, i32* @DOT11_WEP_DEFAULT_KEY_VALUE3, align 4
  %76 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %77 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %85 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %74, i32 %75, i32* %83, i32 %90)
  br label %126

92:                                               ; preds = %2
  %93 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %94 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %126

99:                                               ; preds = %92
  %100 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %101 = load i32, i32* @DOT11_WEP_DEFAULT_KEY_VALUE4, align 4
  %102 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %103 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 3
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %111 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 3
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private* %100, i32 %101, i32* %109, i32 %116)
  br label %126

118:                                              ; preds = %2
  %119 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %120 = load i32, i32* @DOT11_PRIVACY_INVOKED, align 4
  %121 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %122 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @hostif_mib_set_request_bool(%struct.ks_wlan_private* %119, i32 %120, i32 %124)
  br label %126

126:                                              ; preds = %20, %46, %72, %98, %2, %118, %99, %73, %47, %21, %6
  ret void
}

declare dso_local i32 @hostif_mib_set_request_int(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i32 @hostif_mib_set_request_ostring(%struct.ks_wlan_private*, i32, i32*, i32) #1

declare dso_local i32 @hostif_mib_set_request_bool(%struct.ks_wlan_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
