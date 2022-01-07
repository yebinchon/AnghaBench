; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt7601u_mac_set_protection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt7601u_mac_set_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }

@IEEE80211_HT_OP_MODE_PROTECTION = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT = common dso_local global i32 0, align 4
@MT_PROT_NAV_SHORT = common dso_local global i32 0, align 4
@MT_PROT_TXOP_ALLOW_ALL = common dso_local global i32 0, align 4
@MT_PROT_RTS_THR_EN = common dso_local global i32 0, align 4
@MT_PROT_CTRL_CTS2SELF = common dso_local global i32 0, align 4
@MT_PROT_TXOP_ALLOW_BW20 = common dso_local global i32 0, align 4
@MT_PROT_RATE_CCK_11 = common dso_local global i32 0, align 4
@MT_PROT_RATE_OFDM_24 = common dso_local global i32 0, align 4
@MT_PROT_RATE_DUP_OFDM_24 = common dso_local global i32 0, align 4
@MT_PROT_CTRL_RTS_CTS = common dso_local global i32 0, align 4
@MT_CCK_PROT_CFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7601u_mac_set_protection(%struct.mt7601u_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IEEE80211_HT_OP_MODE_PROTECTION, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 16, i1 false)
  %23 = load i32, i32* @MT_PROT_NAV_SHORT, align 4
  %24 = load i32, i32* @MT_PROT_TXOP_ALLOW_ALL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MT_PROT_RTS_THR_EN, align 4
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load i32, i32* @MT_PROT_CTRL_CTS2SELF, align 4
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %3
  %40 = load i32, i32* @MT_PROT_NAV_SHORT, align 4
  %41 = load i32, i32* @MT_PROT_TXOP_ALLOW_BW20, align 4
  %42 = or i32 %40, %41
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  store i32 %42, i32* %43, align 16
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @MT_PROT_NAV_SHORT, align 4
  %46 = load i32, i32* @MT_PROT_TXOP_ALLOW_ALL, align 4
  %47 = or i32 %45, %46
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %39
  %53 = load i32, i32* @MT_PROT_RATE_CCK_11, align 4
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @MT_PROT_RATE_CCK_11, align 4
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @MT_PROT_RATE_CCK_11, align 4
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  %63 = load i32, i32* %62, align 16
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 16
  %65 = load i32, i32* @MT_PROT_RATE_CCK_11, align 4
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %86

69:                                               ; preds = %39
  %70 = load i32, i32* @MT_PROT_RATE_OFDM_24, align 4
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @MT_PROT_RATE_DUP_OFDM_24, align 4
  %75 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @MT_PROT_RATE_OFDM_24, align 4
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  %80 = load i32, i32* %79, align 16
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 16
  %82 = load i32, i32* @MT_PROT_RATE_DUP_OFDM_24, align 4
  %83 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %69, %52
  %87 = load i32, i32* %7, align 4
  switch i32 %87, label %102 [
    i32 130, label %88
    i32 128, label %89
    i32 131, label %94
    i32 129, label %97
  ]

88:                                               ; preds = %86
  br label %102

89:                                               ; preds = %86
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 1, i32* %90, align 4
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 1, i32* %91, align 8
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 1, i32* %92, align 4
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 1, i32* %93, align 16
  br label %102

94:                                               ; preds = %86
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 1, i32* %95, align 4
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 1, i32* %96, align 4
  br label %102

97:                                               ; preds = %86
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 1, i32* %98, align 4
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 1, i32* %99, align 8
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 1, i32* %100, align 4
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 1, i32* %101, align 16
  br label %102

102:                                              ; preds = %86, %97, %94, %89, %88
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 1, i32* %106, align 4
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %102
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %127, %108
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 4
  br i1 %111, label %112, label %130

112:                                              ; preds = %109
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load i32, i32* @MT_PROT_CTRL_RTS_CTS, align 4
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %119
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %118, %112
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %109

130:                                              ; preds = %109
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %146, %130
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %132, 6
  br i1 %133, label %134, label %149

134:                                              ; preds = %131
  %135 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %136 = load i64, i64* @MT_CCK_PROT_CFG, align 8
  %137 = load i32, i32* %11, align 4
  %138 = mul nsw i32 %137, 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %136, %139
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %135, i64 %140, i32 %144)
  br label %146

146:                                              ; preds = %134
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %131

149:                                              ; preds = %131
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
