; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_irqhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TSI721_USING_MSI = common dso_local global i32 0, align 4
@TSI721_DEV_INTE = common dso_local global i64 0, align 8
@TSI721_DEV_INT = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@TSI721_DEV_CHAN_INT = common dso_local global i64 0, align 8
@TSI721_DEV_INT_SR2PC_CH = common dso_local global i32 0, align 4
@IDB_QUEUE = common dso_local global i32 0, align 4
@TSI721_SR_CHINT_IDBQRCV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unsupported SR_CH_INT %x\00", align 1
@TSI721_DEV_INT_SMSG_CH = common dso_local global i32 0, align 4
@TSI721_INT_IMSG_CHAN_M = common dso_local global i32 0, align 4
@TSI721_DEV_CHAN_INTE = common dso_local global i64 0, align 8
@RIO_MAX_MBOX = common dso_local global i32 0, align 4
@TSI721_INT_OMSG_CHAN_M = common dso_local global i32 0, align 4
@TSI721_DEV_INT_SRIO = common dso_local global i32 0, align 4
@TSI721_RIO_EM_INT_STAT = common dso_local global i64 0, align 8
@TSI721_RIO_EM_INT_STAT_PW_RX = common dso_local global i32 0, align 4
@TSI721_DEV_INT_BDMA_CH = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DMA = common dso_local global i32 0, align 4
@TSI721_DMA_MAXCH = common dso_local global i32 0, align 4
@TSI721_INT_BDMA_CHAN_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tsi721_irqhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_irqhandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tsi721_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.tsi721_device*
  store %struct.tsi721_device* %13, %struct.tsi721_device** %6, align 8
  %14 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %15 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TSI721_USING_MSI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %22 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TSI721_DEV_INTE, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @iowrite32(i32 0, i64 %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %29 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TSI721_DEV_INT, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @ioread32(i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %233

38:                                               ; preds = %27
  %39 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %40 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TSI721_DEV_CHAN_INT, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @ioread32(i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TSI721_DEV_INT_SR2PC_CH, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @IDB_QUEUE, align 4
  %52 = call i32 @TSI721_INT_SR2PC_CHAN(i32 %51)
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %93

55:                                               ; preds = %49
  %56 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %57 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @IDB_QUEUE, align 4
  %60 = call i64 @TSI721_SR_CHINT(i32 %59)
  %61 = add nsw i64 %58, %60
  %62 = call i32 @ioread32(i64 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @TSI721_SR_CHINT_IDBQRCV, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %69 = call i32 @tsi721_dbell_handler(%struct.tsi721_device* %68)
  br label %77

70:                                               ; preds = %55
  %71 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %72 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @tsi_info(i32* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %70, %67
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %80 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @IDB_QUEUE, align 4
  %83 = call i64 @TSI721_SR_CHINT(i32 %82)
  %84 = add nsw i64 %81, %83
  %85 = call i32 @iowrite32(i32 %78, i64 %84)
  %86 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %87 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @IDB_QUEUE, align 4
  %90 = call i64 @TSI721_SR_CHINT(i32 %89)
  %91 = add nsw i64 %88, %90
  %92 = call i32 @ioread32(i64 %91)
  br label %93

93:                                               ; preds = %77, %49
  br label %94

94:                                               ; preds = %93, %38
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @TSI721_DEV_INT_SMSG_CH, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %189

99:                                               ; preds = %94
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @TSI721_INT_IMSG_CHAN_M, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %144

104:                                              ; preds = %99
  %105 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %106 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TSI721_DEV_CHAN_INTE, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @ioread32(i64 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @TSI721_INT_IMSG_CHAN_M, align 4
  %113 = and i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %10, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %119 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TSI721_DEV_CHAN_INTE, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @iowrite32(i32 %117, i64 %122)
  store i32 4, i32* %11, align 4
  br label %124

124:                                              ; preds = %140, %104
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @RIO_MAX_MBOX, align 4
  %127 = add nsw i32 %126, 4
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %124
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @TSI721_INT_IMSG_CHAN(i32 %131)
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  br label %140

136:                                              ; preds = %129
  %137 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @tsi721_imsg_handler(%struct.tsi721_device* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %135
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %124

143:                                              ; preds = %124
  br label %144

144:                                              ; preds = %143, %99
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @TSI721_INT_OMSG_CHAN_M, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %188

149:                                              ; preds = %144
  %150 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %151 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TSI721_DEV_CHAN_INTE, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @ioread32(i64 %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @TSI721_INT_OMSG_CHAN_M, align 4
  %158 = and i32 %156, %157
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %10, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %164 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @TSI721_DEV_CHAN_INTE, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @iowrite32(i32 %162, i64 %167)
  store i32 0, i32* %11, align 4
  br label %169

169:                                              ; preds = %184, %149
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @RIO_MAX_MBOX, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %187

173:                                              ; preds = %169
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @TSI721_INT_OMSG_CHAN(i32 %175)
  %177 = and i32 %174, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %173
  br label %184

180:                                              ; preds = %173
  %181 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @tsi721_omsg_handler(%struct.tsi721_device* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %179
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %11, align 4
  br label %169

187:                                              ; preds = %169
  br label %188

188:                                              ; preds = %187, %144
  br label %189

189:                                              ; preds = %188, %94
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @TSI721_DEV_INT_SRIO, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %209

194:                                              ; preds = %189
  %195 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %196 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @TSI721_RIO_EM_INT_STAT, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @ioread32(i64 %199)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @TSI721_RIO_EM_INT_STAT_PW_RX, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %194
  %206 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %207 = call i32 @tsi721_pw_handler(%struct.tsi721_device* %206)
  br label %208

208:                                              ; preds = %205, %194
  br label %209

209:                                              ; preds = %208, %189
  %210 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %211 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @TSI721_USING_MSI, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %209
  %217 = load i32, i32* @TSI721_DEV_INT_SR2PC_CH, align 4
  %218 = load i32, i32* @TSI721_DEV_INT_SRIO, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @TSI721_DEV_INT_SMSG_CH, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @TSI721_DEV_INT_BDMA_CH, align 4
  %223 = or i32 %221, %222
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %226 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @TSI721_DEV_INTE, align 8
  %229 = add nsw i64 %227, %228
  %230 = call i32 @iowrite32(i32 %224, i64 %229)
  br label %231

231:                                              ; preds = %216, %209
  %232 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %231, %36
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @TSI721_INT_SR2PC_CHAN(i32) #1

declare dso_local i64 @TSI721_SR_CHINT(i32) #1

declare dso_local i32 @tsi721_dbell_handler(%struct.tsi721_device*) #1

declare dso_local i32 @tsi_info(i32*, i8*, i32) #1

declare dso_local i32 @TSI721_INT_IMSG_CHAN(i32) #1

declare dso_local i32 @tsi721_imsg_handler(%struct.tsi721_device*, i32) #1

declare dso_local i32 @TSI721_INT_OMSG_CHAN(i32) #1

declare dso_local i32 @tsi721_omsg_handler(%struct.tsi721_device*, i32) #1

declare dso_local i32 @tsi721_pw_handler(%struct.tsi721_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
