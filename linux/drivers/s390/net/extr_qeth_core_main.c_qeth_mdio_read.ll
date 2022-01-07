; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@QETH_LINK_TYPE_GBIT_ETH = common dso_local global i32 0, align 4
@QETH_LINK_TYPE_OSN = common dso_local global i32 0, align 4
@QETH_LINK_TYPE_10GBIT_ETH = common dso_local global i32 0, align 4
@QETH_LINK_TYPE_25GBIT_ETH = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMSR_ERCAP = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@BMSR_10HALF = common dso_local global i32 0, align 4
@BMSR_10FULL = common dso_local global i32 0, align 4
@BMSR_100HALF = common dso_local global i32 0, align 4
@BMSR_100FULL = common dso_local global i32 0, align 4
@BMSR_100BASE4 = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@LPA_10HALF = common dso_local global i32 0, align 4
@LPA_10FULL = common dso_local global i32 0, align 4
@LPA_100HALF = common dso_local global i32 0, align 4
@LPA_100FULL = common dso_local global i32 0, align 4
@LPA_100BASE4 = common dso_local global i32 0, align 4
@LPA_LPACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @qeth_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  store %struct.qeth_card* %11, %struct.qeth_card** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %124 [
    i32 144, label %13
    i32 143, label %47
    i32 134, label %63
    i32 133, label %86
    i32 145, label %94
    i32 138, label %96
    i32 141, label %108
    i32 142, label %109
    i32 140, label %110
    i32 136, label %111
    i32 132, label %112
    i32 129, label %117
    i32 131, label %118
    i32 139, label %119
    i32 135, label %120
    i32 130, label %121
    i32 128, label %122
    i32 137, label %123
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @BMCR_FULLDPLX, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %16 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @QETH_LINK_TYPE_GBIT_ETH, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %13
  %22 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @QETH_LINK_TYPE_OSN, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @QETH_LINK_TYPE_10GBIT_ETH, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @QETH_LINK_TYPE_25GBIT_ETH, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @BMCR_SPEED100, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %42, %35, %28, %21, %13
  br label %125

47:                                               ; preds = %3
  %48 = load i32, i32* @BMSR_ERCAP, align 4
  %49 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @BMSR_LSTATUS, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @BMSR_10HALF, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @BMSR_10FULL, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @BMSR_100HALF, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @BMSR_100FULL, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @BMSR_100BASE4, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %8, align 4
  br label %125

63:                                               ; preds = %3
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 16
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %69, %75
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %76, %81
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = ashr i32 %83, 5
  %85 = and i32 %84, 65535
  store i32 %85, i32* %8, align 4
  br label %125

86:                                               ; preds = %3
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 10
  %93 = and i32 %92, 65535
  store i32 %93, i32* %8, align 4
  br label %125

94:                                               ; preds = %3
  %95 = load i32, i32* @ADVERTISE_ALL, align 4
  store i32 %95, i32* %8, align 4
  br label %125

96:                                               ; preds = %3
  %97 = load i32, i32* @LPA_10HALF, align 4
  %98 = load i32, i32* @LPA_10FULL, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @LPA_100HALF, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @LPA_100FULL, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @LPA_100BASE4, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @LPA_LPACK, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %8, align 4
  br label %125

108:                                              ; preds = %3
  br label %125

109:                                              ; preds = %3
  br label %125

110:                                              ; preds = %3
  br label %125

111:                                              ; preds = %3
  br label %125

112:                                              ; preds = %3
  %113 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %114 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %8, align 4
  br label %125

117:                                              ; preds = %3
  br label %125

118:                                              ; preds = %3
  br label %125

119:                                              ; preds = %3
  br label %125

120:                                              ; preds = %3
  br label %125

121:                                              ; preds = %3
  br label %125

122:                                              ; preds = %3
  br label %125

123:                                              ; preds = %3
  br label %125

124:                                              ; preds = %3
  br label %125

125:                                              ; preds = %124, %123, %122, %121, %120, %119, %118, %117, %112, %111, %110, %109, %108, %96, %94, %86, %63, %47, %46
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
