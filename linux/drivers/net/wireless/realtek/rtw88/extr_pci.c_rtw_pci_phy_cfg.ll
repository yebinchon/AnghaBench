; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_phy_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_phy_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_3__, %struct.rtw_chip_info* }
%struct.TYPE_3__ = type { i32 }
%struct.rtw_chip_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.rtw_intf_phy_para*, %struct.rtw_intf_phy_para* }
%struct.rtw_intf_phy_para = type { i32, i32, i32, i64 }

@RTW_IP_SEL_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_pci_phy_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_phy_cfg(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_chip_info*, align 8
  %4 = alloca %struct.rtw_intf_phy_para*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 1
  %11 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %10, align 8
  store %struct.rtw_chip_info* %11, %struct.rtw_chip_info** %3, align 8
  %12 = call i32 @BIT(i32 0)
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %14 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %12, %16
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %71, %1
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %21 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %18
  %27 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %28 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load %struct.rtw_intf_phy_para*, %struct.rtw_intf_phy_para** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rtw_intf_phy_para, %struct.rtw_intf_phy_para* %31, i64 %33
  store %struct.rtw_intf_phy_para* %34, %struct.rtw_intf_phy_para** %4, align 8
  %35 = load %struct.rtw_intf_phy_para*, %struct.rtw_intf_phy_para** %4, align 8
  %36 = getelementptr inbounds %struct.rtw_intf_phy_para, %struct.rtw_intf_phy_para* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %26
  br label %71

42:                                               ; preds = %26
  %43 = load %struct.rtw_intf_phy_para*, %struct.rtw_intf_phy_para** %4, align 8
  %44 = getelementptr inbounds %struct.rtw_intf_phy_para, %struct.rtw_intf_phy_para* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 65535
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %74

48:                                               ; preds = %42
  %49 = load %struct.rtw_intf_phy_para*, %struct.rtw_intf_phy_para** %4, align 8
  %50 = getelementptr inbounds %struct.rtw_intf_phy_para, %struct.rtw_intf_phy_para* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  %52 = load %struct.rtw_intf_phy_para*, %struct.rtw_intf_phy_para** %4, align 8
  %53 = getelementptr inbounds %struct.rtw_intf_phy_para, %struct.rtw_intf_phy_para* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %6, align 4
  %55 = load %struct.rtw_intf_phy_para*, %struct.rtw_intf_phy_para** %4, align 8
  %56 = getelementptr inbounds %struct.rtw_intf_phy_para, %struct.rtw_intf_phy_para* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RTW_IP_SEL_PHY, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @rtw_mdio_write(%struct.rtw_dev* %61, i32 %62, i32 %63, i32 1)
  br label %70

65:                                               ; preds = %48
  %66 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @rtw_dbi_write8(%struct.rtw_dev* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %18

74:                                               ; preds = %47, %18
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %128, %74
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %78 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %76, %81
  br i1 %82, label %83, label %131

83:                                               ; preds = %75
  %84 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %85 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load %struct.rtw_intf_phy_para*, %struct.rtw_intf_phy_para** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.rtw_intf_phy_para, %struct.rtw_intf_phy_para* %88, i64 %90
  store %struct.rtw_intf_phy_para* %91, %struct.rtw_intf_phy_para** %4, align 8
  %92 = load %struct.rtw_intf_phy_para*, %struct.rtw_intf_phy_para** %4, align 8
  %93 = getelementptr inbounds %struct.rtw_intf_phy_para, %struct.rtw_intf_phy_para* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %83
  br label %128

99:                                               ; preds = %83
  %100 = load %struct.rtw_intf_phy_para*, %struct.rtw_intf_phy_para** %4, align 8
  %101 = getelementptr inbounds %struct.rtw_intf_phy_para, %struct.rtw_intf_phy_para* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 65535
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %131

105:                                              ; preds = %99
  %106 = load %struct.rtw_intf_phy_para*, %struct.rtw_intf_phy_para** %4, align 8
  %107 = getelementptr inbounds %struct.rtw_intf_phy_para, %struct.rtw_intf_phy_para* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %7, align 4
  %109 = load %struct.rtw_intf_phy_para*, %struct.rtw_intf_phy_para** %4, align 8
  %110 = getelementptr inbounds %struct.rtw_intf_phy_para, %struct.rtw_intf_phy_para* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %6, align 4
  %112 = load %struct.rtw_intf_phy_para*, %struct.rtw_intf_phy_para** %4, align 8
  %113 = getelementptr inbounds %struct.rtw_intf_phy_para, %struct.rtw_intf_phy_para* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @RTW_IP_SEL_PHY, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %105
  %118 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @rtw_mdio_write(%struct.rtw_dev* %118, i32 %119, i32 %120, i32 0)
  br label %127

122:                                              ; preds = %105
  %123 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @rtw_dbi_write8(%struct.rtw_dev* %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %117
  br label %128

128:                                              ; preds = %127, %98
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %75

131:                                              ; preds = %104, %75
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_mdio_write(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_dbi_write8(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
