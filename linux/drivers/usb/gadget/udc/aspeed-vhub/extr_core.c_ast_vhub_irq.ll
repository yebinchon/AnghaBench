; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_core.c_ast_vhub_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_core.c_ast_vhub_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub = type { i32, i32, %struct.TYPE_2__*, i32*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@AST_VHUB_ISR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"irq status=%08x, ep_acks=%08x ep_nacks=%08x\0A\00", align 1
@AST_VHUB_EP_ACK_ISR = common dso_local global i64 0, align 8
@AST_VHUB_EP_NACK_ISR = common dso_local global i64 0, align 8
@VHUB_IRQ_EP_POOL_ACK_STALL = common dso_local global i32 0, align 4
@AST_VHUB_NUM_GEN_EPs = common dso_local global i32 0, align 4
@VHUB_IRQ_DEVICE1 = common dso_local global i32 0, align 4
@VHUB_IRQ_DEVICE2 = common dso_local global i32 0, align 4
@VHUB_IRQ_DEVICE3 = common dso_local global i32 0, align 4
@VHUB_IRQ_DEVICE4 = common dso_local global i32 0, align 4
@VHUB_IRQ_DEVICE5 = common dso_local global i32 0, align 4
@VHUB_IRQ_HUB_EP0_OUT_ACK_STALL = common dso_local global i32 0, align 4
@VHUB_IRQ_HUB_EP0_IN_ACK_STALL = common dso_local global i32 0, align 4
@VHUB_IRQ_HUB_EP0_SETUP = common dso_local global i32 0, align 4
@VHUB_IRQ_BUS_RESUME = common dso_local global i32 0, align 4
@VHUB_IRQ_BUS_SUSPEND = common dso_local global i32 0, align 4
@VHUB_IRQ_BUS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ast_vhub_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ast_vhub*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ast_vhub*
  store %struct.ast_vhub* %13, %struct.ast_vhub** %6, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %16 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %260

21:                                               ; preds = %2
  %22 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %23 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %26 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AST_VHUB_ISR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  br label %255

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %37 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AST_VHUB_ISR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %46 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AST_VHUB_EP_ACK_ISR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  %51 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %52 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AST_VHUB_EP_NACK_ISR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  %57 = call i32 @UDCVDBG(%struct.ast_vhub* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %50, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @VHUB_IRQ_EP_POOL_ACK_STALL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %109

62:                                               ; preds = %34
  %63 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %64 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AST_VHUB_EP_ACK_ISR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @readl(i64 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %71 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AST_VHUB_EP_ACK_ISR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %105, %62
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @AST_VHUB_NUM_GEN_EPs, align 4
  %82 = icmp slt i32 %80, %81
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i1 [ false, %76 ], [ %82, %79 ]
  br i1 %84, label %85, label %108

85:                                               ; preds = %83
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @VHUB_EP_IRQ(i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %94 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = call i32 @ast_vhub_epn_ack_irq(i32* %98)
  %100 = load i32, i32* %11, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %10, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %92, %85
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %76

108:                                              ; preds = %83
  br label %109

109:                                              ; preds = %108, %34
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @VHUB_IRQ_DEVICE1, align 4
  %112 = load i32, i32* @VHUB_IRQ_DEVICE2, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @VHUB_IRQ_DEVICE3, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @VHUB_IRQ_DEVICE4, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @VHUB_IRQ_DEVICE5, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %110, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %183

122:                                              ; preds = %109
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @VHUB_IRQ_DEVICE1, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %129 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %128, i32 0, i32 2
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = call i32 @ast_vhub_dev_irq(i32* %132)
  br label %134

134:                                              ; preds = %127, %122
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @VHUB_IRQ_DEVICE2, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %141 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = call i32 @ast_vhub_dev_irq(i32* %144)
  br label %146

146:                                              ; preds = %139, %134
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @VHUB_IRQ_DEVICE3, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %153 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 2
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = call i32 @ast_vhub_dev_irq(i32* %156)
  br label %158

158:                                              ; preds = %151, %146
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @VHUB_IRQ_DEVICE4, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %165 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %164, i32 0, i32 2
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 3
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = call i32 @ast_vhub_dev_irq(i32* %168)
  br label %170

170:                                              ; preds = %163, %158
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @VHUB_IRQ_DEVICE5, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %170
  %176 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %177 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %176, i32 0, i32 2
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 4
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = call i32 @ast_vhub_dev_irq(i32* %180)
  br label %182

182:                                              ; preds = %175, %170
  br label %183

183:                                              ; preds = %182, %109
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @VHUB_IRQ_HUB_EP0_OUT_ACK_STALL, align 4
  %186 = load i32, i32* @VHUB_IRQ_HUB_EP0_IN_ACK_STALL, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @VHUB_IRQ_HUB_EP0_SETUP, align 4
  %189 = or i32 %187, %188
  %190 = and i32 %184, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %220

192:                                              ; preds = %183
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @VHUB_IRQ_HUB_EP0_IN_ACK_STALL, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %199 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %198, i32 0, i32 1
  %200 = call i32 @ast_vhub_ep0_handle_ack(i32* %199, i32 1)
  br label %201

201:                                              ; preds = %197, %192
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @VHUB_IRQ_HUB_EP0_OUT_ACK_STALL, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %208 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %207, i32 0, i32 1
  %209 = call i32 @ast_vhub_ep0_handle_ack(i32* %208, i32 0)
  br label %210

210:                                              ; preds = %206, %201
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @VHUB_IRQ_HUB_EP0_SETUP, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %217 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %216, i32 0, i32 1
  %218 = call i32 @ast_vhub_ep0_handle_setup(i32* %217)
  br label %219

219:                                              ; preds = %215, %210
  br label %220

220:                                              ; preds = %219, %183
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @VHUB_IRQ_BUS_RESUME, align 4
  %223 = load i32, i32* @VHUB_IRQ_BUS_SUSPEND, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @VHUB_IRQ_BUS_RESET, align 4
  %226 = or i32 %224, %225
  %227 = and i32 %221, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %254

229:                                              ; preds = %220
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @VHUB_IRQ_BUS_RESUME, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %236 = call i32 @ast_vhub_hub_resume(%struct.ast_vhub* %235)
  br label %237

237:                                              ; preds = %234, %229
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @VHUB_IRQ_BUS_SUSPEND, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %244 = call i32 @ast_vhub_hub_suspend(%struct.ast_vhub* %243)
  br label %245

245:                                              ; preds = %242, %237
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* @VHUB_IRQ_BUS_RESET, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  %251 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %252 = call i32 @ast_vhub_hub_reset(%struct.ast_vhub* %251)
  br label %253

253:                                              ; preds = %250, %245
  br label %254

254:                                              ; preds = %253, %220
  br label %255

255:                                              ; preds = %254, %33
  %256 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %257 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %256, i32 0, i32 0
  %258 = call i32 @spin_unlock(i32* %257)
  %259 = load i32, i32* %7, align 4
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %255, %19
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @UDCVDBG(%struct.ast_vhub*, i8*, i32, i32, i32) #1

declare dso_local i32 @VHUB_EP_IRQ(i32) #1

declare dso_local i32 @ast_vhub_epn_ack_irq(i32*) #1

declare dso_local i32 @ast_vhub_dev_irq(i32*) #1

declare dso_local i32 @ast_vhub_ep0_handle_ack(i32*, i32) #1

declare dso_local i32 @ast_vhub_ep0_handle_setup(i32*) #1

declare dso_local i32 @ast_vhub_hub_resume(%struct.ast_vhub*) #1

declare dso_local i32 @ast_vhub_hub_suspend(%struct.ast_vhub*) #1

declare dso_local i32 @ast_vhub_hub_reset(%struct.ast_vhub*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
