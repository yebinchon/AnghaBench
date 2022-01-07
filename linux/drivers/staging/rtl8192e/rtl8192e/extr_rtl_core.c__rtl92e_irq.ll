; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32, %struct.TYPE_10__*, %struct.TYPE_8__, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.net_device*, i32*, i32*)* }

@IMR_TBDOK = common dso_local global i32 0, align 4
@COMP_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"beacon ok interrupt!\0A\00", align 1
@IMR_TBDER = common dso_local global i32 0, align 4
@IMR_BDOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"beacon interrupt!\0A\00", align 1
@IMR_MGNTDOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Manage ok interrupt!\0A\00", align 1
@MGNT_QUEUE = common dso_local global i32 0, align 4
@IMR_COMDOK = common dso_local global i32 0, align 4
@TXCMD_QUEUE = common dso_local global i32 0, align 4
@IMR_HIGHDOK = common dso_local global i32 0, align 4
@HIGH_QUEUE = common dso_local global i32 0, align 4
@IMR_ROK = common dso_local global i32 0, align 4
@IMR_BcnInt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"prepare beacon for interrupt!\0A\00", align 1
@IMR_RDU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"rx descriptor unavailable!\0A\00", align 1
@INTA_MASK = common dso_local global i32 0, align 4
@IMR_RXFOVW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"rx overflow !\0A\00", align 1
@IMR_TXFOVW = common dso_local global i32 0, align 4
@IMR_BKDOK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"BK Tx OK interrupt!\0A\00", align 1
@BK_QUEUE = common dso_local global i32 0, align 4
@IMR_BEDOK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"BE TX OK interrupt!\0A\00", align 1
@BE_QUEUE = common dso_local global i32 0, align 4
@IMR_VIDOK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"VI TX OK interrupt!\0A\00", align 1
@VI_QUEUE = common dso_local global i32 0, align 4
@IMR_VODOK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Vo TX OK interrupt!\0A\00", align 1
@VO_QUEUE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @_rtl92e_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %12)
  store %struct.r8192_priv* %13, %struct.r8192_priv** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %346

19:                                               ; preds = %2
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 7
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.net_device*, i32*, i32*)*, i32 (%struct.net_device*, i32*, i32*)** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call i32 %28(%struct.net_device* %29, i32* %8, i32* %9)
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %19
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 1
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %346

43:                                               ; preds = %19
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 65535
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 1
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  br label %346

51:                                               ; preds = %43
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 12
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = call i32 @netif_running(%struct.net_device* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %51
  %61 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %62 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %61, i32 0, i32 1
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  br label %346

65:                                               ; preds = %51
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @IMR_TBDOK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32, i32* @COMP_INTR, align 4
  %72 = call i32 @RT_TRACE(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %74 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %70, %65
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @IMR_TBDER, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i32, i32* @COMP_INTR, align 4
  %85 = call i32 @RT_TRACE(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %86 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %87 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %83, %78
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @IMR_BDOK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @COMP_INTR, align 4
  %98 = call i32 @RT_TRACE(i32 %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @IMR_MGNTDOK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %144

104:                                              ; preds = %99
  %105 = load i32, i32* @COMP_INTR, align 4
  %106 = call i32 @RT_TRACE(i32 %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %107 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %108 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = load i32, i32* @MGNT_QUEUE, align 4
  %114 = call i32 @_rtl92e_tx_isr(%struct.net_device* %112, i32 %113)
  %115 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %116 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %115, i32 0, i32 1
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %120 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %119, i32 0, i32 2
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %104
  %126 = load %struct.net_device*, %struct.net_device** %5, align 8
  %127 = call i64 @_rtl92e_is_tx_queue_empty(%struct.net_device* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %131 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %130, i32 0, i32 2
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  %134 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %135 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %134, i32 0, i32 2
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = call i32 @rtllib_ps_tx_ack(%struct.TYPE_10__* %136, i32 1)
  br label %138

138:                                              ; preds = %129, %125
  br label %139

139:                                              ; preds = %138, %104
  %140 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %141 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %140, i32 0, i32 1
  %142 = load i64, i64* %7, align 8
  %143 = call i32 @spin_lock_irqsave(i32* %141, i64 %142)
  br label %144

144:                                              ; preds = %139, %99
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @IMR_COMDOK, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %144
  %150 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %151 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  %155 = load %struct.net_device*, %struct.net_device** %5, align 8
  %156 = load i32, i32* @TXCMD_QUEUE, align 4
  %157 = call i32 @_rtl92e_tx_isr(%struct.net_device* %155, i32 %156)
  br label %158

158:                                              ; preds = %149, %144
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @IMR_HIGHDOK, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load %struct.net_device*, %struct.net_device** %5, align 8
  %165 = load i32, i32* @HIGH_QUEUE, align 4
  %166 = call i32 @_rtl92e_tx_isr(%struct.net_device* %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %158
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @IMR_ROK, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %167
  %173 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %174 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  %178 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %179 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  %183 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %184 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %183, i32 0, i32 4
  %185 = call i32 @tasklet_schedule(i32* %184)
  br label %186

186:                                              ; preds = %172, %167
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @IMR_BcnInt, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load i32, i32* @COMP_INTR, align 4
  %193 = call i32 @RT_TRACE(i32 %192, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %194 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %195 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %194, i32 0, i32 5
  %196 = call i32 @tasklet_schedule(i32* %195)
  br label %197

197:                                              ; preds = %191, %186
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @IMR_RDU, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %222

202:                                              ; preds = %197
  %203 = load i32, i32* @COMP_INTR, align 4
  %204 = call i32 @RT_TRACE(i32 %203, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %205 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %206 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  %210 = load %struct.net_device*, %struct.net_device** %5, align 8
  %211 = load i32, i32* @INTA_MASK, align 4
  %212 = load %struct.net_device*, %struct.net_device** %5, align 8
  %213 = load i32, i32* @INTA_MASK, align 4
  %214 = call i32 @rtl92e_readl(%struct.net_device* %212, i32 %213)
  %215 = load i32, i32* @IMR_RDU, align 4
  %216 = xor i32 %215, -1
  %217 = and i32 %214, %216
  %218 = call i32 @rtl92e_writel(%struct.net_device* %210, i32 %211, i32 %217)
  %219 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %220 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %219, i32 0, i32 4
  %221 = call i32 @tasklet_schedule(i32* %220)
  br label %222

222:                                              ; preds = %202, %197
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* @IMR_RXFOVW, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %222
  %228 = load i32, i32* @COMP_INTR, align 4
  %229 = call i32 @RT_TRACE(i32 %228, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %230 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %231 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %232, align 4
  %235 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %236 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %235, i32 0, i32 4
  %237 = call i32 @tasklet_schedule(i32* %236)
  br label %238

238:                                              ; preds = %227, %222
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* @IMR_TXFOVW, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %238
  %244 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %245 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %246, align 8
  br label %249

249:                                              ; preds = %243, %238
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* @IMR_BKDOK, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %272

254:                                              ; preds = %249
  %255 = load i32, i32* @COMP_INTR, align 4
  %256 = call i32 @RT_TRACE(i32 %255, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %257 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %258 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 4
  %262 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %263 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %262, i32 0, i32 2
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 8
  %269 = load %struct.net_device*, %struct.net_device** %5, align 8
  %270 = load i32, i32* @BK_QUEUE, align 4
  %271 = call i32 @_rtl92e_tx_isr(%struct.net_device* %269, i32 %270)
  br label %272

272:                                              ; preds = %254, %249
  %273 = load i32, i32* %8, align 4
  %274 = load i32, i32* @IMR_BEDOK, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %295

277:                                              ; preds = %272
  %278 = load i32, i32* @COMP_INTR, align 4
  %279 = call i32 @RT_TRACE(i32 %278, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %280 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %281 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %282, align 8
  %285 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %286 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %285, i32 0, i32 2
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 8
  %292 = load %struct.net_device*, %struct.net_device** %5, align 8
  %293 = load i32, i32* @BE_QUEUE, align 4
  %294 = call i32 @_rtl92e_tx_isr(%struct.net_device* %292, i32 %293)
  br label %295

295:                                              ; preds = %277, %272
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* @IMR_VIDOK, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %318

300:                                              ; preds = %295
  %301 = load i32, i32* @COMP_INTR, align 4
  %302 = call i32 @RT_TRACE(i32 %301, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %303 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %304 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %305, align 4
  %308 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %309 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %308, i32 0, i32 2
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %312, align 8
  %315 = load %struct.net_device*, %struct.net_device** %5, align 8
  %316 = load i32, i32* @VI_QUEUE, align 4
  %317 = call i32 @_rtl92e_tx_isr(%struct.net_device* %315, i32 %316)
  br label %318

318:                                              ; preds = %300, %295
  %319 = load i32, i32* %8, align 4
  %320 = load i32, i32* @IMR_VODOK, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %341

323:                                              ; preds = %318
  %324 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %325 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %324, i32 0, i32 3
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 8
  %329 = load i32, i32* @COMP_INTR, align 4
  %330 = call i32 @RT_TRACE(i32 %329, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %331 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %332 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %331, i32 0, i32 2
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %335, align 8
  %338 = load %struct.net_device*, %struct.net_device** %5, align 8
  %339 = load i32, i32* @VO_QUEUE, align 4
  %340 = call i32 @_rtl92e_tx_isr(%struct.net_device* %338, i32 %339)
  br label %341

341:                                              ; preds = %323, %318
  %342 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %343 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %342, i32 0, i32 1
  %344 = load i64, i64* %7, align 8
  %345 = call i32 @spin_unlock_irqrestore(i32* %343, i64 %344)
  br label %346

346:                                              ; preds = %341, %60, %46, %38, %18
  %347 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %347
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @_rtl92e_tx_isr(%struct.net_device*, i32) #1

declare dso_local i64 @_rtl92e_is_tx_queue_empty(%struct.net_device*) #1

declare dso_local i32 @rtllib_ps_tx_ack(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @rtl92e_writel(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl92e_readl(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
