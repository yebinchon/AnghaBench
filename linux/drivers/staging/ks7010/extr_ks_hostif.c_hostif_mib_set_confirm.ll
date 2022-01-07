; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_mib_set_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_mib_set_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"error :: attribute=%08X, status=%08X\0A\00", align 1
@SME_RTS_THRESHOLD_CONFIRM = common dso_local global i32 0, align 4
@SME_FRAGMENTATION_THRESHOLD_CONFIRM = common dso_local global i32 0, align 4
@SME_WEP_INDEX_CONFIRM = common dso_local global i32 0, align 4
@SME_SET_PMK_TSC = common dso_local global i32 0, align 4
@SME_WEP_KEY1_CONFIRM = common dso_local global i32 0, align 4
@SME_SET_GMK1_TSC = common dso_local global i32 0, align 4
@SME_WEP_KEY2_CONFIRM = common dso_local global i32 0, align 4
@SME_SET_GMK2_TSC = common dso_local global i32 0, align 4
@SME_WEP_KEY3_CONFIRM = common dso_local global i32 0, align 4
@SME_WEP_KEY4_CONFIRM = common dso_local global i32 0, align 4
@SME_WEP_FLAG_CONFIRM = common dso_local global i32 0, align 4
@SME_RSN_ENABLED_CONFIRM = common dso_local global i32 0, align 4
@SME_RSN_MODE_CONFIRM = common dso_local global i32 0, align 4
@SME_MULTICAST_REQUEST = common dso_local global i32 0, align 4
@SME_MULTICAST_CONFIRM = common dso_local global i32 0, align 4
@SME_RSN_MCAST_CONFIRM = common dso_local global i32 0, align 4
@SME_RSN_UCAST_CONFIRM = common dso_local global i32 0, align 4
@SME_RSN_AUTH_CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_mib_set_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_mib_set_confirm(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %5 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %6 = call i32 @get_dword(%struct.ks_wlan_private* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %8 = call i32 @get_dword(%struct.ks_wlan_private* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %13 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @netdev_err(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %162 [
    i32 142, label %20
    i32 151, label %24
    i32 141, label %28
    i32 140, label %39
    i32 139, label %54
    i32 138, label %69
    i32 137, label %84
    i32 147, label %95
    i32 143, label %106
    i32 130, label %110
    i32 134, label %114
    i32 133, label %118
    i32 136, label %122
    i32 145, label %125
    i32 144, label %129
    i32 146, label %133
    i32 150, label %137
    i32 149, label %149
    i32 148, label %161
    i32 132, label %161
    i32 135, label %161
    i32 129, label %161
    i32 128, label %161
    i32 131, label %161
  ]

20:                                               ; preds = %18
  %21 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %22 = load i32, i32* @SME_RTS_THRESHOLD_CONFIRM, align 4
  %23 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %21, i32 %22)
  br label %163

24:                                               ; preds = %18
  %25 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %26 = load i32, i32* @SME_FRAGMENTATION_THRESHOLD_CONFIRM, align 4
  %27 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %25, i32 %26)
  br label %163

28:                                               ; preds = %18
  %29 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %30 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %36 = load i32, i32* @SME_WEP_INDEX_CONFIRM, align 4
  %37 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %28
  br label %163

39:                                               ; preds = %18
  %40 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %41 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %47 = load i32, i32* @SME_SET_PMK_TSC, align 4
  %48 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %46, i32 %47)
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %51 = load i32, i32* @SME_WEP_KEY1_CONFIRM, align 4
  %52 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  br label %163

54:                                               ; preds = %18
  %55 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %56 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %62 = load i32, i32* @SME_SET_GMK1_TSC, align 4
  %63 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %61, i32 %62)
  br label %68

64:                                               ; preds = %54
  %65 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %66 = load i32, i32* @SME_WEP_KEY2_CONFIRM, align 4
  %67 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %60
  br label %163

69:                                               ; preds = %18
  %70 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %71 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %77 = load i32, i32* @SME_SET_GMK2_TSC, align 4
  %78 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %76, i32 %77)
  br label %83

79:                                               ; preds = %69
  %80 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %81 = load i32, i32* @SME_WEP_KEY3_CONFIRM, align 4
  %82 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %75
  br label %163

84:                                               ; preds = %18
  %85 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %86 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %84
  %91 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %92 = load i32, i32* @SME_WEP_KEY4_CONFIRM, align 4
  %93 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %84
  br label %163

95:                                               ; preds = %18
  %96 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %97 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %103 = load i32, i32* @SME_WEP_FLAG_CONFIRM, align 4
  %104 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %95
  br label %163

106:                                              ; preds = %18
  %107 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %108 = load i32, i32* @SME_RSN_ENABLED_CONFIRM, align 4
  %109 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %107, i32 %108)
  br label %163

110:                                              ; preds = %18
  %111 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %112 = load i32, i32* @SME_RSN_MODE_CONFIRM, align 4
  %113 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %111, i32 %112)
  br label %163

114:                                              ; preds = %18
  %115 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %116 = load i32, i32* @SME_MULTICAST_REQUEST, align 4
  %117 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %115, i32 %116)
  br label %163

118:                                              ; preds = %18
  %119 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %120 = load i32, i32* @SME_MULTICAST_CONFIRM, align 4
  %121 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %119, i32 %120)
  br label %163

122:                                              ; preds = %18
  %123 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %124 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %123, i32 0, i32 0
  store i32 1, i32* %124, align 4
  br label %163

125:                                              ; preds = %18
  %126 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %127 = load i32, i32* @SME_RSN_MCAST_CONFIRM, align 4
  %128 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %126, i32 %127)
  br label %163

129:                                              ; preds = %18
  %130 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %131 = load i32, i32* @SME_RSN_UCAST_CONFIRM, align 4
  %132 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %130, i32 %131)
  br label %163

133:                                              ; preds = %18
  %134 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %135 = load i32, i32* @SME_RSN_AUTH_CONFIRM, align 4
  %136 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %134, i32 %135)
  br label %163

137:                                              ; preds = %18
  %138 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %139 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = call i32 @atomic_read(i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %145 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = call i32 @atomic_set(i32* %146, i32 0)
  br label %148

148:                                              ; preds = %143, %137
  br label %163

149:                                              ; preds = %18
  %150 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %151 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = call i32 @atomic_read(i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %157 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = call i32 @atomic_set(i32* %158, i32 0)
  br label %160

160:                                              ; preds = %155, %149
  br label %163

161:                                              ; preds = %18, %18, %18, %18, %18, %18
  br label %162

162:                                              ; preds = %18, %161
  br label %163

163:                                              ; preds = %162, %160, %148, %133, %129, %125, %122, %118, %114, %110, %106, %105, %94, %83, %68, %53, %38, %24, %20
  ret void
}

declare dso_local i32 @get_dword(%struct.ks_wlan_private*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @hostif_sme_enqueue(%struct.ks_wlan_private*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
