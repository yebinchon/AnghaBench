; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_mac.c_mt76x2u_mac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_mac.c_mt76x2u_mac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MT76_REMOVED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MT_TX_RTS_CFG = common dso_local global i32 0, align 4
@MT_TX_RTS_CFG_RETRY_LIMIT = common dso_local global i32 0, align 4
@MT_TXOP_CTRL_CFG = common dso_local global i32 0, align 4
@MT_TXOP_ED_CCA_EN = common dso_local global i32 0, align 4
@MT_TXOP_HLDR_ET = common dso_local global i32 0, align 4
@MT_TXOP_HLDR_TX40M_BLK_EN = common dso_local global i32 0, align 4
@CFG = common dso_local global i32 0, align 4
@MT_USB_U3DMA_CFG = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_TX_BUSY = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_ENABLE_RX = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_ENABLE_TX = common dso_local global i32 0, align 4
@MT_MAC_STATUS = common dso_local global i32 0, align 4
@MT_MAC_STATUS_TX = common dso_local global i32 0, align 4
@IBI = common dso_local global i32 0, align 4
@CORE = common dso_local global i32 0, align 4
@MT_MAC_STATUS_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"MAC RX failed to stop\0A\00", align 1
@MT_USB_DMA_CFG_RX_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x2u_mac_stop(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @MT76_REMOVED, align 4
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i64 @test_bit(i32 %9, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %203

18:                                               ; preds = %1
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %20 = load i32, i32* @MT_TX_RTS_CFG, align 4
  %21 = call i32 @mt76_rr(%struct.mt76x02_dev* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %23 = load i32, i32* @MT_TX_RTS_CFG, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MT_TX_RTS_CFG_RETRY_LIMIT, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @mt76_wr(%struct.mt76x02_dev* %22, i32 %23, i32 %27)
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %30 = load i32, i32* @MT_TXOP_CTRL_CFG, align 4
  %31 = load i32, i32* @MT_TXOP_ED_CCA_EN, align 4
  %32 = call i32 @mt76_clear(%struct.mt76x02_dev* %29, i32 %30, i32 %31)
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %34 = load i32, i32* @MT_TXOP_HLDR_ET, align 4
  %35 = load i32, i32* @MT_TXOP_HLDR_TX40M_BLK_EN, align 4
  %36 = call i32 @mt76_clear(%struct.mt76x02_dev* %33, i32 %34, i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %56, %18
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 2000
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %42 = load i32, i32* @CFG, align 4
  %43 = load i32, i32* @MT_USB_U3DMA_CFG, align 4
  %44 = call i32 @MT_VEND_ADDR(i32 %42, i32 %43)
  %45 = call i32 @mt76_rr(%struct.mt76x02_dev* %41, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MT_USB_DMA_CFG_TX_BUSY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %4, align 4
  %52 = icmp sgt i32 %51, 10
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %59

54:                                               ; preds = %50, %40
  %55 = call i32 @usleep_range(i32 50, i32 100)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %37

59:                                               ; preds = %53, %37
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %80, %59
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 200
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %65 = call i32 @mt76_rr(%struct.mt76x02_dev* %64, i32 1080)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %63
  %68 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %69 = call i32 @mt76_rr(%struct.mt76x02_dev* %68, i32 2608)
  %70 = and i32 %69, 255
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %74 = call i32 @mt76_rr(%struct.mt76x02_dev* %73, i32 2612)
  %75 = and i32 %74, -16711936
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %83

78:                                               ; preds = %72, %67, %63
  %79 = call i32 @usleep_range(i32 10, i32 20)
  br label %80

80:                                               ; preds = %78
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %60

83:                                               ; preds = %77, %60
  %84 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %85 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %86 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_RX, align 4
  %87 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_TX, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @mt76_clear(%struct.mt76x02_dev* %84, i32 %85, i32 %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %109, %83
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 1000
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %95 = load i32, i32* @MT_MAC_STATUS, align 4
  %96 = call i32 @mt76_rr(%struct.mt76x02_dev* %94, i32 %95)
  %97 = load i32, i32* @MT_MAC_STATUS_TX, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %102 = load i32, i32* @IBI, align 4
  %103 = call i32 @MT_BBP(i32 %102, i32 12)
  %104 = call i32 @mt76_rr(%struct.mt76x02_dev* %101, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  store i32 1, i32* %7, align 4
  br label %112

107:                                              ; preds = %100, %93
  %108 = call i32 @usleep_range(i32 10, i32 20)
  br label %109

109:                                              ; preds = %107
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %90

112:                                              ; preds = %106, %90
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %136, label %115

115:                                              ; preds = %112
  %116 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %117 = load i32, i32* @CORE, align 4
  %118 = call i32 @MT_BBP(i32 %117, i32 4)
  %119 = call i32 @BIT(i32 1)
  %120 = call i32 @mt76_set(%struct.mt76x02_dev* %116, i32 %118, i32 %119)
  %121 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %122 = load i32, i32* @CORE, align 4
  %123 = call i32 @MT_BBP(i32 %122, i32 4)
  %124 = call i32 @BIT(i32 1)
  %125 = call i32 @mt76_clear(%struct.mt76x02_dev* %121, i32 %123, i32 %124)
  %126 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %127 = load i32, i32* @CORE, align 4
  %128 = call i32 @MT_BBP(i32 %127, i32 4)
  %129 = call i32 @BIT(i32 0)
  %130 = call i32 @mt76_set(%struct.mt76x02_dev* %126, i32 %128, i32 %129)
  %131 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %132 = load i32, i32* @CORE, align 4
  %133 = call i32 @MT_BBP(i32 %132, i32 4)
  %134 = call i32 @BIT(i32 0)
  %135 = call i32 @mt76_clear(%struct.mt76x02_dev* %131, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %115, %112
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %160, %136
  %138 = load i32, i32* %4, align 4
  %139 = icmp slt i32 %138, 200
  br i1 %139, label %140, label %163

140:                                              ; preds = %137
  %141 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %142 = call i32 @mt76_rr(%struct.mt76x02_dev* %141, i32 1072)
  %143 = and i32 %142, 16711680
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %158, label %145

145:                                              ; preds = %140
  %146 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %147 = call i32 @mt76_rr(%struct.mt76x02_dev* %146, i32 2608)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %145
  %150 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %151 = call i32 @mt76_rr(%struct.mt76x02_dev* %150, i32 2612)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  %156 = icmp sgt i32 %155, 10
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %163

158:                                              ; preds = %153, %149, %145, %140
  %159 = call i32 @msleep(i32 50)
  br label %160

160:                                              ; preds = %158
  %161 = load i32, i32* %4, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %4, align 4
  br label %137

163:                                              ; preds = %157, %137
  %164 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %165 = load i32, i32* @MT_MAC_STATUS, align 4
  %166 = load i32, i32* @MT_MAC_STATUS_RX, align 4
  %167 = call i32 @mt76_poll(%struct.mt76x02_dev* %164, i32 %165, i32 %166, i32 0, i32 2000)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %163
  %170 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %171 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @dev_warn(i32 %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %175

175:                                              ; preds = %169, %163
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %195, %175
  %177 = load i32, i32* %4, align 4
  %178 = icmp slt i32 %177, 2000
  br i1 %178, label %179, label %198

179:                                              ; preds = %176
  %180 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %181 = load i32, i32* @CFG, align 4
  %182 = load i32, i32* @MT_USB_U3DMA_CFG, align 4
  %183 = call i32 @MT_VEND_ADDR(i32 %181, i32 %182)
  %184 = call i32 @mt76_rr(%struct.mt76x02_dev* %180, i32 %183)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @MT_USB_DMA_CFG_RX_BUSY, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %179
  %190 = load i32, i32* %4, align 4
  %191 = icmp sgt i32 %190, 10
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %198

193:                                              ; preds = %189, %179
  %194 = call i32 @usleep_range(i32 50, i32 100)
  br label %195

195:                                              ; preds = %193
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %4, align 4
  br label %176

198:                                              ; preds = %192, %176
  %199 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %200 = load i32, i32* @MT_TX_RTS_CFG, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @mt76_wr(%struct.mt76x02_dev* %199, i32 %200, i32 %201)
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %198, %15
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_VEND_ADDR(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mt76_poll(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
