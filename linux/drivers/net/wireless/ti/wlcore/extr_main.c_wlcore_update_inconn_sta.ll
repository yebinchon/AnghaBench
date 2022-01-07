; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_update_inconn_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_update_inconn_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32, i32, i32 }
%struct.wl1271_station = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlcore_update_inconn_sta(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.wl1271_station* %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.wl1271_station*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.wl1271_station* %2, %struct.wl1271_station** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %4
  %12 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %13 = icmp ne %struct.wl1271_station* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %16 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %131

25:                                               ; preds = %19
  %26 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %27 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %32 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %37 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %38 = call i32 @wlcore_roc_if_possible(%struct.wl1271* %36, %struct.wl12xx_vif* %37)
  br label %39

39:                                               ; preds = %35, %30, %25
  %40 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %41 = icmp ne %struct.wl1271_station* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %44 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %46 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %52

49:                                               ; preds = %39
  %50 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %51 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %42
  br label %131

53:                                               ; preds = %4
  %54 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %55 = icmp ne %struct.wl1271_station* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %58 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %131

62:                                               ; preds = %56, %53
  %63 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %64 = icmp ne %struct.wl1271_station* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %67 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi i1 [ false, %62 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @WARN_ON(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %131

77:                                               ; preds = %71
  %78 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %79 = icmp ne %struct.wl1271_station* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %82 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %80, %77
  %87 = phi i1 [ false, %77 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  %89 = call i64 @WARN_ON(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %131

92:                                               ; preds = %86
  %93 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %94 = icmp ne %struct.wl1271_station* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %97 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  %98 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %99 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  br label %105

102:                                              ; preds = %92
  %103 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %104 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %103, i32 0, i32 0
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %95
  %106 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %107 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %105
  %111 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %112 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %110
  %116 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %117 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %120 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @test_bit(i32 %118, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %115
  %125 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %126 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %127 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @wl12xx_croc(%struct.wl1271* %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %115, %110, %105
  br label %131

131:                                              ; preds = %24, %61, %76, %91, %130, %52
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wlcore_roc_if_possible(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @wl12xx_croc(%struct.wl1271*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
