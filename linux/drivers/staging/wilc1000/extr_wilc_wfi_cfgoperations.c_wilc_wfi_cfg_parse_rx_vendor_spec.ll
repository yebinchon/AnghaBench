; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_wilc_wfi_cfg_parse_rx_vendor_spec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_wilc_wfi_cfg_parse_rx_vendor_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_priv = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.wilc_vif = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@P2P_PUB_ACTION_SUBTYPE = common dso_local global i64 0, align 8
@GO_NEG_REQ = common dso_local global i64 0, align 8
@GO_NEG_RSP = common dso_local global i64 0, align 8
@p2p_vendor_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"PEER WILL BE GO LocaRand=%02x RecvRand %02x\0A\00", align 1
@P2P_INV_REQ = common dso_local global i64 0, align 8
@P2P_INV_RSP = common dso_local global i64 0, align 8
@P2PELEM_ATTR_ID = common dso_local global i64 0, align 8
@p2p_oui = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wilc_priv*, i64*, i32)* @wilc_wfi_cfg_parse_rx_vendor_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wilc_wfi_cfg_parse_rx_vendor_spec(%struct.wilc_priv* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.wilc_priv*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.wilc_vif*, align 8
  store %struct.wilc_priv* %0, %struct.wilc_priv** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wilc_priv*, %struct.wilc_priv** %4, align 8
  %11 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.wilc_vif* @netdev_priv(i32 %12)
  store %struct.wilc_vif* %13, %struct.wilc_vif** %9, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* @P2P_PUB_ACTION_SUBTYPE, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @GO_NEG_REQ, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @GO_NEG_RSP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %21, %3
  %26 = load %struct.wilc_priv*, %struct.wilc_priv** %4, align 8
  %27 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %64, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* @P2P_PUB_ACTION_SUBTYPE, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %60, %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load i32, i32* @p2p_vendor_spec, align 4
  %40 = load i64*, i64** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = call i32 @memcmp(i32 %39, i64* %43, i32 6)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %38
  %47 = load i64*, i64** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 6
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.wilc_priv*, %struct.wilc_priv** %4, align 8
  %54 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  %56 = load %struct.wilc_priv*, %struct.wilc_priv** %4, align 8
  %57 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %63

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %34

63:                                               ; preds = %46, %34
  br label %64

64:                                               ; preds = %63, %25, %21
  %65 = load %struct.wilc_priv*, %struct.wilc_priv** %4, align 8
  %66 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.wilc_priv*, %struct.wilc_priv** %4, align 8
  %70 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %68, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %64
  %75 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %76 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.wilc_priv*, %struct.wilc_priv** %4, align 8
  %79 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.wilc_priv*, %struct.wilc_priv** %4, align 8
  %83 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @netdev_dbg(i32 %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %81, i64 %85)
  br label %149

87:                                               ; preds = %64
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @GO_NEG_REQ, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %103, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @GO_NEG_RSP, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @P2P_INV_REQ, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @P2P_INV_RSP, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %149

103:                                              ; preds = %99, %95, %91, %87
  %104 = load i64, i64* @P2P_PUB_ACTION_SUBTYPE, align 8
  %105 = add i64 %104, 2
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %145, %103
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %148

111:                                              ; preds = %107
  %112 = load i64*, i64** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @P2PELEM_ATTR_ID, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %144

119:                                              ; preds = %111
  %120 = load i32, i32* @p2p_oui, align 4
  %121 = load i64*, i64** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %121, i64 %124
  %126 = call i32 @memcmp(i32 %120, i64* %125, i32 4)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %144, label %128

128:                                              ; preds = %119
  %129 = load i64*, i64** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 6
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 6
  %137 = sub nsw i32 %134, %136
  %138 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %139 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @wilc_wfi_cfg_parse_rx_action(i64* %133, i32 %137, i32 %142)
  br label %148

144:                                              ; preds = %119, %111
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %107

148:                                              ; preds = %128, %107
  br label %149

149:                                              ; preds = %74, %148, %99
  ret void
}

declare dso_local %struct.wilc_vif* @netdev_priv(i32) #1

declare dso_local i32 @memcmp(i32, i64*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @wilc_wfi_cfg_parse_rx_action(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
