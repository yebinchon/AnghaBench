; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_send_config_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_send_config_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.wid = type { i32, i32, i32 }

@WILC_GET_CFG = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif* %0, i64 %1, %struct.wid* %2, i32 %3) #0 {
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wilc_vif* %0, %struct.wilc_vif** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.wid* %2, %struct.wid** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %13 = call i32 @wilc_get_vif_idx(%struct.wilc_vif* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @WILC_GET_CFG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %86

17:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %46, %17
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.wid*, %struct.wid** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.wid, %struct.wid* %28, i64 %30
  %32 = getelementptr inbounds %struct.wid, %struct.wid* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp eq i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @wilc_wlan_cfg_get(%struct.wilc_vif* %23, i32 %27, i32 %33, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %22
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %49

45:                                               ; preds = %22
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %18

49:                                               ; preds = %42, %18
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  %55 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %56 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.wid*, %struct.wid** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.wid, %struct.wid* %58, i64 %60
  %62 = getelementptr inbounds %struct.wid, %struct.wid* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.wid*, %struct.wid** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.wid, %struct.wid* %64, i64 %66
  %68 = getelementptr inbounds %struct.wid, %struct.wid* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wid*, %struct.wid** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.wid, %struct.wid* %70, i64 %72
  %74 = getelementptr inbounds %struct.wid, %struct.wid* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @wilc_wlan_cfg_get_val(i32 %57, i32 %63, i32 %69, i32 %75)
  %77 = load %struct.wid*, %struct.wid** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.wid, %struct.wid* %77, i64 %79
  %81 = getelementptr inbounds %struct.wid, %struct.wid* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 4
  br label %82

82:                                               ; preds = %54
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %50

85:                                               ; preds = %50
  br label %136

86:                                               ; preds = %4
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @WILC_SET_CFG, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %135

90:                                               ; preds = %86
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %131, %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %134

95:                                               ; preds = %91
  %96 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load %struct.wid*, %struct.wid** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.wid, %struct.wid* %101, i64 %103
  %105 = getelementptr inbounds %struct.wid, %struct.wid* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.wid*, %struct.wid** %7, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.wid, %struct.wid* %107, i64 %109
  %111 = getelementptr inbounds %struct.wid, %struct.wid* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.wid*, %struct.wid** %7, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.wid, %struct.wid* %113, i64 %115
  %117 = getelementptr inbounds %struct.wid, %struct.wid* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %120, 1
  %122 = icmp eq i32 %119, %121
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %96, i32 %100, i32 %106, i32 %112, i32 %118, i32 %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %95
  %128 = load i32, i32* @ETIMEDOUT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %10, align 4
  br label %134

130:                                              ; preds = %95
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %91

134:                                              ; preds = %127, %91
  br label %135

135:                                              ; preds = %134, %86
  br label %136

136:                                              ; preds = %135, %85
  %137 = load i32, i32* %10, align 4
  ret i32 %137
}

declare dso_local i32 @wilc_get_vif_idx(%struct.wilc_vif*) #1

declare dso_local i32 @wilc_wlan_cfg_get(%struct.wilc_vif*, i32, i32, i32, i32) #1

declare dso_local i32 @wilc_wlan_cfg_get_val(i32, i32, i32, i32) #1

declare dso_local i32 @wilc_wlan_cfg_set(%struct.wilc_vif*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
