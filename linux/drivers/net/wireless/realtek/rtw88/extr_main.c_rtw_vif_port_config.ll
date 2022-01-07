; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_vif_port_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_vif_port_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_vif = type { i32, %struct.TYPE_12__*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@PORT_SET_MAC_ADDR = common dso_local global i32 0, align 4
@PORT_SET_BSSID = common dso_local global i32 0, align 4
@PORT_SET_NET_TYPE = common dso_local global i32 0, align 4
@PORT_SET_AID = common dso_local global i32 0, align 4
@PORT_SET_BCN_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_vif_port_config(%struct.rtw_dev* %0, %struct.rtw_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.rtw_vif* %1, %struct.rtw_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @PORT_SET_MAC_ADDR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load %struct.rtw_vif*, %struct.rtw_vif** %5, align 8
  %15 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.rtw_vif*, %struct.rtw_vif** %5, align 8
  %23 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rtw_vif_write_addr(%struct.rtw_dev* %20, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %13, %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PORT_SET_BSSID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.rtw_vif*, %struct.rtw_vif** %5, align 8
  %33 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.rtw_vif*, %struct.rtw_vif** %5, align 8
  %41 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @rtw_vif_write_addr(%struct.rtw_dev* %38, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %31, %26
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PORT_SET_NET_TYPE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load %struct.rtw_vif*, %struct.rtw_vif** %5, align 8
  %51 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.rtw_vif*, %struct.rtw_vif** %5, align 8
  %57 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.rtw_vif*, %struct.rtw_vif** %5, align 8
  %66 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rtw_write32_mask(%struct.rtw_dev* %62, i32 %63, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %49, %44
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @PORT_SET_AID, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load %struct.rtw_vif*, %struct.rtw_vif** %5, align 8
  %76 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %75, i32 0, i32 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  %81 = load %struct.rtw_vif*, %struct.rtw_vif** %5, align 8
  %82 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %81, i32 0, i32 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %8, align 4
  %87 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.rtw_vif*, %struct.rtw_vif** %5, align 8
  %91 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @rtw_write32_mask(%struct.rtw_dev* %87, i32 %88, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %74, %69
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @PORT_SET_BCN_CTRL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load %struct.rtw_vif*, %struct.rtw_vif** %5, align 8
  %101 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %100, i32 0, i32 1
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %7, align 4
  %106 = load %struct.rtw_vif*, %struct.rtw_vif** %5, align 8
  %107 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %106, i32 0, i32 1
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %8, align 4
  %112 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.rtw_vif*, %struct.rtw_vif** %5, align 8
  %116 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @rtw_write8_mask(%struct.rtw_dev* %112, i32 %113, i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %99, %94
  ret void
}

declare dso_local i32 @rtw_vif_write_addr(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_write8_mask(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
