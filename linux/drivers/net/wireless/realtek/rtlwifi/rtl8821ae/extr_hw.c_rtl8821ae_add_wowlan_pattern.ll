; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_add_wowlan_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_add_wowlan_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_wow_pattern = type { i32, i64, i32* }
%struct.rtl_priv = type { i32 }

@MAX_RX_DMA_BUFFER_SIZE_8812 = common dso_local global i32 0, align 4
@REG_PKT_BUFF_ACCESS_CTRL = common dso_local global i32 0, align 4
@RXPKT_BUF_SELECT = common dso_local global i32 0, align 4
@WKFMCAM_ADDR_NUM = common dso_local global i32 0, align 4
@WKFMCAM_SIZE = common dso_local global i32 0, align 4
@REG_PKTBUF_DBG_CTRL = common dso_local global i32 0, align 4
@UNICAST_PATTERN = common dso_local global i64 0, align 8
@MULTICAST_PATTERN = common dso_local global i64 0, align 8
@BROADCAST_PATTERN = common dso_local global i64 0, align 8
@REG_PKTBUF_DBG_DATA_L = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"WRITE entry[%d] 0x%x: %x\0A\00", align 1
@REG_RXPKTBUF_CTRL = common dso_local global i32 0, align 4
@REG_PKTBUF_DBG_DATA_H = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"rtl8821ae: Write wake up frame mask FAIL %d value!\0A\00", align 1
@DISABLE_TRXPKT_BUF_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_add_wowlan_pattern(%struct.ieee80211_hw* %0, %struct.rtl_wow_pattern* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.rtl_wow_pattern*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.rtl_wow_pattern* %1, %struct.rtl_wow_pattern** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @MAX_RX_DMA_BUFFER_SIZE_8812, align 4
  %18 = sdiv i32 %17, 128
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = mul nsw i32 %19, 128
  store i32 %20, i32* %13, align 4
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %22 = load i32, i32* @REG_PKT_BUFF_ACCESS_CTRL, align 4
  %23 = load i32, i32* @RXPKT_BUF_SELECT, align 4
  %24 = call i32 @rtl_write_byte(%struct.rtl_priv* %21, i32 %22, i32 %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %179, %3
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @WKFMCAM_ADDR_NUM, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %182

29:                                               ; preds = %25
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @WKFMCAM_SIZE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %30, %33
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, 4
  %37 = add nsw i32 %34, %36
  %38 = ashr i32 %37, 3
  store i32 %38, i32* %10, align 4
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %40 = load i32, i32* @REG_PKTBUF_DBG_CTRL, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @rtl_write_word(%struct.rtl_priv* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %29
  %46 = call i32 @BIT(i32 31)
  %47 = load %struct.rtl_wow_pattern*, %struct.rtl_wow_pattern** %5, align 8
  %48 = getelementptr inbounds %struct.rtl_wow_pattern, %struct.rtl_wow_pattern* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %46, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.rtl_wow_pattern*, %struct.rtl_wow_pattern** %5, align 8
  %52 = getelementptr inbounds %struct.rtl_wow_pattern, %struct.rtl_wow_pattern* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UNICAST_PATTERN, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = call i32 @BIT(i32 24)
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %82

60:                                               ; preds = %45
  %61 = load %struct.rtl_wow_pattern*, %struct.rtl_wow_pattern** %5, align 8
  %62 = getelementptr inbounds %struct.rtl_wow_pattern, %struct.rtl_wow_pattern* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MULTICAST_PATTERN, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = call i32 @BIT(i32 25)
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %81

70:                                               ; preds = %60
  %71 = load %struct.rtl_wow_pattern*, %struct.rtl_wow_pattern** %5, align 8
  %72 = getelementptr inbounds %struct.rtl_wow_pattern, %struct.rtl_wow_pattern* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BROADCAST_PATTERN, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = call i32 @BIT(i32 26)
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80, %66
  br label %82

82:                                               ; preds = %81, %56
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %84 = load i32, i32* @REG_PKTBUF_DBG_DATA_L, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @rtl_write_dword(%struct.rtl_priv* %83, i32 %84, i32 %85)
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %88 = load i32, i32* @COMP_POWER, align 4
  %89 = load i32, i32* @DBG_TRACE, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @REG_PKTBUF_DBG_DATA_L, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @RT_TRACE(%struct.rtl_priv* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91, i32 %92)
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %95 = load i32, i32* @REG_RXPKTBUF_CTRL, align 4
  %96 = call i32 @rtl_write_word(%struct.rtl_priv* %94, i32 %95, i32 3841)
  br label %157

97:                                               ; preds = %29
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %103, label %126

103:                                              ; preds = %100, %97
  %104 = load %struct.rtl_wow_pattern*, %struct.rtl_wow_pattern** %5, align 8
  %105 = getelementptr inbounds %struct.rtl_wow_pattern, %struct.rtl_wow_pattern* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %8, align 4
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %113 = load i32, i32* @REG_PKTBUF_DBG_DATA_L, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @rtl_write_dword(%struct.rtl_priv* %112, i32 %113, i32 %114)
  %116 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %117 = load i32, i32* @COMP_POWER, align 4
  %118 = load i32, i32* @DBG_TRACE, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @REG_PKTBUF_DBG_DATA_L, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @RT_TRACE(%struct.rtl_priv* %116, i32 %117, i32 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %120, i32 %121)
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %124 = load i32, i32* @REG_RXPKTBUF_CTRL, align 4
  %125 = call i32 @rtl_write_word(%struct.rtl_priv* %123, i32 %124, i32 3841)
  br label %156

126:                                              ; preds = %100
  %127 = load i32, i32* %9, align 4
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %130, 5
  br i1 %131, label %132, label %155

132:                                              ; preds = %129, %126
  %133 = load %struct.rtl_wow_pattern*, %struct.rtl_wow_pattern** %5, align 8
  %134 = getelementptr inbounds %struct.rtl_wow_pattern, %struct.rtl_wow_pattern* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sub nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %8, align 4
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %142 = load i32, i32* @REG_PKTBUF_DBG_DATA_H, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @rtl_write_dword(%struct.rtl_priv* %141, i32 %142, i32 %143)
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %146 = load i32, i32* @COMP_POWER, align 4
  %147 = load i32, i32* @DBG_TRACE, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @REG_PKTBUF_DBG_DATA_H, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @RT_TRACE(%struct.rtl_priv* %145, i32 %146, i32 %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %148, i32 %149, i32 %150)
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %153 = load i32, i32* @REG_RXPKTBUF_CTRL, align 4
  %154 = call i32 @rtl_write_word(%struct.rtl_priv* %152, i32 %153, i32 61441)
  br label %155

155:                                              ; preds = %132, %129
  br label %156

156:                                              ; preds = %155, %103
  br label %157

157:                                              ; preds = %156, %82
  store i32 0, i32* %12, align 4
  br label %158

158:                                              ; preds = %171, %157
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %160 = load i32, i32* @REG_RXPKTBUF_CTRL, align 4
  %161 = call i32 @rtl_read_byte(%struct.rtl_priv* %159, i32 %160)
  store i32 %161, i32* %11, align 4
  %162 = call i32 @udelay(i32 2)
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %12, align 4
  %170 = icmp slt i32 %169, 100
  br label %171

171:                                              ; preds = %168, %165
  %172 = phi i1 [ false, %165 ], [ %170, %168 ]
  br i1 %172, label %158, label %173

173:                                              ; preds = %171
  %174 = load i32, i32* %12, align 4
  %175 = icmp sge i32 %174, 100
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @WARN_ONCE(i32 %176, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %173
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %25

182:                                              ; preds = %25
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %184 = load i32, i32* @REG_PKT_BUFF_ACCESS_CTRL, align 4
  %185 = load i32, i32* @DISABLE_TRXPKT_BUF_ACCESS, align 4
  %186 = call i32 @rtl_write_byte(%struct.rtl_priv* %183, i32 %184, i32 %185)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
