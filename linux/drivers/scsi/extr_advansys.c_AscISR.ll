; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscISR.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscISR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, i64, i32 }

@ASC_FALSE = common dso_local global i32 0, align 4
@ASC_INIT_STATE_END_LOAD_MC = common dso_local global i32 0, align 4
@ASC_ERROR = common dso_local global i32 0, align 4
@ASCQ_ERR_ISR_ON_CRITICAL = common dso_local global i32 0, align 4
@ASCQ_ERR_ISR_RE_ENTRY = common dso_local global i32 0, align 4
@CC_SCSI_RESET = common dso_local global i32 0, align 4
@CC_CHIP_RESET = common dso_local global i32 0, align 4
@CC_SINGLE_STEP = common dso_local global i32 0, align 4
@CC_DIAG = common dso_local global i32 0, align 4
@CC_TEST = common dso_local global i32 0, align 4
@CSW_SCSI_RESET_LATCH = common dso_local global i32 0, align 4
@ASC_IS_VL = common dso_local global i32 0, align 4
@ASC_IS_EISA = common dso_local global i32 0, align 4
@ASC_TRUE = common dso_local global i32 0, align 4
@CC_HALT = common dso_local global i32 0, align 4
@CSW_SCSI_RESET_ACTIVE = common dso_local global i32 0, align 4
@CIW_CLR_SCSI_RESET_INT = common dso_local global i32 0, align 4
@ASCV_HOST_FLAG_B = common dso_local global i32 0, align 4
@ASC_HOST_FLAG_IN_ISR = common dso_local global i64 0, align 8
@CSW_INT_PENDING = common dso_local global i32 0, align 4
@CSW_HALTED = common dso_local global i32 0, align 4
@ASC_CNTL_INT_MULTI_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @AscISR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscISR(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @ASC_FALSE, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @AscIsIntPending(i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %2, align 4
  br label %214

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ASC_INIT_STATE_END_LOAD_MC, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @ASC_ERROR, align 4
  store i32 %30, i32* %2, align 4
  br label %214

31:                                               ; preds = %22
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = load i32, i32* @ASCQ_ERR_ISR_ON_CRITICAL, align 4
  %39 = call i32 @AscSetLibErrorCode(%struct.TYPE_6__* %37, i32 %38)
  %40 = load i32, i32* @ASC_ERROR, align 4
  store i32 %40, i32* %2, align 4
  br label %214

41:                                               ; preds = %31
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = load i32, i32* @ASCQ_ERR_ISR_RE_ENTRY, align 4
  %49 = call i32 @AscSetLibErrorCode(%struct.TYPE_6__* %47, i32 %48)
  %50 = load i32, i32* @ASC_ERROR, align 4
  store i32 %50, i32* %2, align 4
  br label %214

51:                                               ; preds = %41
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @AscGetChipControl(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @CC_SCSI_RESET, align 4
  %58 = load i32, i32* @CC_CHIP_RESET, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CC_SINGLE_STEP, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CC_DIAG, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @CC_TEST, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = and i32 %56, %66
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @AscGetChipStatus(i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @CSW_SCSI_RESET_LATCH, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %122

74:                                               ; preds = %51
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ASC_IS_VL, align 4
  %79 = load i32, i32* @ASC_IS_EISA, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %121, label %83

83:                                               ; preds = %74
  store i32 10, i32* %12, align 4
  %84 = load i32, i32* @ASC_TRUE, align 4
  store i32 %84, i32* %9, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @CC_HALT, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %103, %83
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @AscGetChipStatus(i32 %92)
  %94 = load i32, i32* @CSW_SCSI_RESET_ACTIVE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %12, align 4
  %100 = icmp sgt i32 %98, 0
  br label %101

101:                                              ; preds = %97, %91
  %102 = phi i1 [ false, %91 ], [ %100, %97 ]
  br i1 %102, label %103, label %105

103:                                              ; preds = %101
  %104 = call i32 @mdelay(i32 100)
  br label %91

105:                                              ; preds = %101
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @CC_CHIP_RESET, align 4
  %108 = load i32, i32* @CC_HALT, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @AscSetChipControl(i32 %106, i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @CC_HALT, align 4
  %113 = call i32 @AscSetChipControl(i32 %111, i32 %112)
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @CIW_CLR_SCSI_RESET_INT, align 4
  %116 = call i32 @AscSetChipStatus(i32 %114, i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @AscSetChipStatus(i32 %117, i32 0)
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @AscGetChipStatus(i32 %119)
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %105, %74
  br label %122

122:                                              ; preds = %121, %51
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @AscGetChipLramAddr(i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @ASCV_HOST_FLAG_B, align 4
  %127 = call i32 @AscReadLramByte(i32 %125, i32 %126)
  %128 = load i64, i64* @ASC_HOST_FLAG_IN_ISR, align 8
  %129 = xor i64 %128, -1
  %130 = trunc i64 %129 to i32
  %131 = and i32 %127, %130
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @ASCV_HOST_FLAG_B, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i64, i64* @ASC_HOST_FLAG_IN_ISR, align 8
  %136 = trunc i64 %135 to i32
  %137 = or i32 %134, %136
  %138 = call i32 @AscWriteLramByte(i32 %132, i32 %133, i32 %137)
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @CSW_INT_PENDING, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %122
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %200

146:                                              ; preds = %143, %122
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @AscAckInterrupt(i32 %147)
  %149 = load i32, i32* @ASC_TRUE, align 4
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @CSW_HALTED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %146
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @CC_SINGLE_STEP, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %161 = call i32 @AscIsrChipHalted(%struct.TYPE_6__* %160)
  %162 = load i32, i32* @CC_HALT, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %8, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %8, align 4
  br label %199

166:                                              ; preds = %154, %146
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ASC_CNTL_INT_MULTI_Q, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %179, %173
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %176 = call i32 @AscIsrQDone(%struct.TYPE_6__* %175)
  store i32 %176, i32* %10, align 4
  %177 = and i32 %176, 1
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %174

180:                                              ; preds = %174
  br label %192

181:                                              ; preds = %166
  br label %182

182:                                              ; preds = %188, %181
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %184 = call i32 @AscIsrQDone(%struct.TYPE_6__* %183)
  store i32 %184, i32* %10, align 4
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %191

187:                                              ; preds = %182
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %10, align 4
  %190 = icmp eq i32 %189, 17
  br i1 %190, label %182, label %191

191:                                              ; preds = %188, %186
  br label %192

192:                                              ; preds = %191, %180
  %193 = load i32, i32* %10, align 4
  %194 = and i32 %193, 128
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, i32* @ASC_ERROR, align 4
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %196, %192
  br label %199

199:                                              ; preds = %198, %159
  br label %200

200:                                              ; preds = %199, %143
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @ASCV_HOST_FLAG_B, align 4
  %203 = load i32, i32* %11, align 4
  %204 = call i32 @AscWriteLramByte(i32 %201, i32 %202, i32 %203)
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @AscSetChipLramAddr(i32 %205, i32 %206)
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @AscSetChipControl(i32 %208, i32 %209)
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  store i32 0, i32* %212, align 8
  %213 = load i32, i32* %9, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %200, %46, %36, %29, %20
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i64 @AscIsIntPending(i32) #1

declare dso_local i32 @AscSetLibErrorCode(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @AscGetChipControl(i32) #1

declare dso_local i32 @AscGetChipStatus(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @AscSetChipControl(i32, i32) #1

declare dso_local i32 @AscSetChipStatus(i32, i32) #1

declare dso_local i32 @AscGetChipLramAddr(i32) #1

declare dso_local i32 @AscReadLramByte(i32, i32) #1

declare dso_local i32 @AscWriteLramByte(i32, i32, i32) #1

declare dso_local i32 @AscAckInterrupt(i32) #1

declare dso_local i32 @AscIsrChipHalted(%struct.TYPE_6__*) #1

declare dso_local i32 @AscIsrQDone(%struct.TYPE_6__*) #1

declare dso_local i32 @AscSetChipLramAddr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
