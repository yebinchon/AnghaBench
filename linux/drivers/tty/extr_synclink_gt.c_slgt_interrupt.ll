; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_slgt_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_slgt_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_2__, %struct.slgt_info**, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"slgt_interrupt irq=%d entry\0A\00", align 1
@GSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s gsr=%08x\0A\00", align 1
@BIT8 = common dso_local global i32 0, align 4
@BIT16 = common dso_local global i32 0, align 4
@BIT17 = common dso_local global i32 0, align 4
@IOSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%s iosr=%08x\0A\00", align 1
@IOVR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"%s bh queued\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"slgt_interrupt irq=%d exit\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @slgt_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slgt_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.slgt_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.slgt_info*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.slgt_info*
  store %struct.slgt_info* %12, %struct.slgt_info** %5, align 8
  %13 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %14 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @DBGISR(i8* %17)
  br label %19

19:                                               ; preds = %123, %2
  %20 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %21 = load i32, i32* @GSR, align 4
  %22 = call i32 @rd_reg32(%struct.slgt_info* %20, i32 %21)
  %23 = and i32 %22, -256
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %124

25:                                               ; preds = %19
  %26 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %27 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @DBGISR(i8* %31)
  %33 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %34 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %120, %25
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %38 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %123

41:                                               ; preds = %35
  %42 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %43 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %42, i32 0, i32 11
  %44 = load %struct.slgt_info**, %struct.slgt_info*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %44, i64 %46
  %48 = load %struct.slgt_info*, %struct.slgt_info** %47, align 8
  %49 = icmp eq %struct.slgt_info* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %120

51:                                               ; preds = %41
  %52 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %53 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %52, i32 0, i32 11
  %54 = load %struct.slgt_info**, %struct.slgt_info*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %54, i64 %56
  %58 = load %struct.slgt_info*, %struct.slgt_info** %57, align 8
  %59 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %58, i32 0, i32 4
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @BIT8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %51
  %68 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %69 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %68, i32 0, i32 11
  %70 = load %struct.slgt_info**, %struct.slgt_info*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %70, i64 %72
  %74 = load %struct.slgt_info*, %struct.slgt_info** %73, align 8
  %75 = call i32 @isr_serial(%struct.slgt_info* %74)
  br label %76

76:                                               ; preds = %67, %51
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @BIT16, align 4
  %79 = load i32, i32* %7, align 4
  %80 = mul i32 %79, 2
  %81 = shl i32 %78, %80
  %82 = and i32 %77, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %86 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %85, i32 0, i32 11
  %87 = load %struct.slgt_info**, %struct.slgt_info*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %87, i64 %89
  %91 = load %struct.slgt_info*, %struct.slgt_info** %90, align 8
  %92 = call i32 @isr_rdma(%struct.slgt_info* %91)
  br label %93

93:                                               ; preds = %84, %76
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @BIT17, align 4
  %96 = load i32, i32* %7, align 4
  %97 = mul i32 %96, 2
  %98 = shl i32 %95, %97
  %99 = and i32 %94, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %103 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %102, i32 0, i32 11
  %104 = load %struct.slgt_info**, %struct.slgt_info*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %104, i64 %106
  %108 = load %struct.slgt_info*, %struct.slgt_info** %107, align 8
  %109 = call i32 @isr_tdma(%struct.slgt_info* %108)
  br label %110

110:                                              ; preds = %101, %93
  %111 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %112 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %111, i32 0, i32 11
  %113 = load %struct.slgt_info**, %struct.slgt_info*** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %113, i64 %115
  %117 = load %struct.slgt_info*, %struct.slgt_info** %116, align 8
  %118 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %117, i32 0, i32 4
  %119 = call i32 @spin_unlock(i32* %118)
  br label %120

120:                                              ; preds = %110, %50
  %121 = load i32, i32* %7, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %35

123:                                              ; preds = %35
  br label %19

124:                                              ; preds = %19
  %125 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %126 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %125, i32 0, i32 12
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %188

129:                                              ; preds = %124
  %130 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %131 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %130, i32 0, i32 4
  %132 = call i32 @spin_lock(i32* %131)
  br label %133

133:                                              ; preds = %183, %129
  %134 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %135 = load i32, i32* @IOSR, align 4
  %136 = call i32 @rd_reg32(%struct.slgt_info* %134, i32 %135)
  store i32 %136, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %184

138:                                              ; preds = %133
  %139 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %140 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = zext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = call i32 @DBGISR(i8* %144)
  %146 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %147 = load i32, i32* @IOVR, align 4
  %148 = call i32 @rd_reg32(%struct.slgt_info* %146, i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %150 = load i32, i32* @IOSR, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @wr_reg32(%struct.slgt_info* %149, i32 %150, i32 %151)
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %180, %138
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %156 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ult i32 %154, %157
  br i1 %158, label %159, label %183

159:                                              ; preds = %153
  %160 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %161 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %160, i32 0, i32 11
  %162 = load %struct.slgt_info**, %struct.slgt_info*** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %162, i64 %164
  %166 = load %struct.slgt_info*, %struct.slgt_info** %165, align 8
  %167 = icmp ne %struct.slgt_info* %166, null
  br i1 %167, label %168, label %179

168:                                              ; preds = %159
  %169 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %170 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %169, i32 0, i32 11
  %171 = load %struct.slgt_info**, %struct.slgt_info*** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %171, i64 %173
  %175 = load %struct.slgt_info*, %struct.slgt_info** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @isr_gpio(%struct.slgt_info* %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %168, %159
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %7, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %7, align 4
  br label %153

183:                                              ; preds = %153
  br label %133

184:                                              ; preds = %133
  %185 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %186 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %185, i32 0, i32 4
  %187 = call i32 @spin_unlock(i32* %186)
  br label %188

188:                                              ; preds = %184, %124
  store i32 0, i32* %7, align 4
  br label %189

189:                                              ; preds = %251, %188
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %192 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp ult i32 %190, %193
  br i1 %194, label %195, label %254

195:                                              ; preds = %189
  %196 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %197 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %196, i32 0, i32 11
  %198 = load %struct.slgt_info**, %struct.slgt_info*** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %198, i64 %200
  %202 = load %struct.slgt_info*, %struct.slgt_info** %201, align 8
  store %struct.slgt_info* %202, %struct.slgt_info** %10, align 8
  %203 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %204 = icmp eq %struct.slgt_info* %203, null
  br i1 %204, label %205, label %206

205:                                              ; preds = %195
  br label %251

206:                                              ; preds = %195
  %207 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %208 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %207, i32 0, i32 4
  %209 = call i32 @spin_lock(i32* %208)
  %210 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %211 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %210, i32 0, i32 10
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %206
  %216 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %217 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %216, i32 0, i32 9
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %247

220:                                              ; preds = %215, %206
  %221 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %222 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %221, i32 0, i32 8
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %247

225:                                              ; preds = %220
  %226 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %227 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %247, label %230

230:                                              ; preds = %225
  %231 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %232 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %247, label %235

235:                                              ; preds = %230
  %236 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %237 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = inttoptr i64 %239 to i8*
  %241 = call i32 @DBGISR(i8* %240)
  %242 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %243 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %242, i32 0, i32 5
  %244 = call i32 @schedule_work(i32* %243)
  %245 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %246 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %245, i32 0, i32 2
  store i32 1, i32* %246, align 8
  br label %247

247:                                              ; preds = %235, %230, %225, %220, %215
  %248 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %249 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %248, i32 0, i32 4
  %250 = call i32 @spin_unlock(i32* %249)
  br label %251

251:                                              ; preds = %247, %205
  %252 = load i32, i32* %7, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %7, align 4
  br label %189

254:                                              ; preds = %189
  %255 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %256 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = inttoptr i64 %258 to i8*
  %260 = call i32 @DBGISR(i8* %259)
  %261 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %261
}

declare dso_local i32 @DBGISR(i8*) #1

declare dso_local i32 @rd_reg32(%struct.slgt_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @isr_serial(%struct.slgt_info*) #1

declare dso_local i32 @isr_rdma(%struct.slgt_info*) #1

declare dso_local i32 @isr_tdma(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wr_reg32(%struct.slgt_info*, i32, i32) #1

declare dso_local i32 @isr_gpio(%struct.slgt_info*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
