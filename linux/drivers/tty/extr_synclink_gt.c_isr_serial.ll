; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_isr_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_isr_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i16, i32, i32, %struct.TYPE_5__, i64, %struct.TYPE_6__, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

@SSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s isr_serial status=%04X\0A\00", align 1
@MGSL_MODE_ASYNC = common dso_local global i64 0, align 8
@IRQ_TXIDLE = common dso_local global i16 0, align 2
@IRQ_RXDATA = common dso_local global i16 0, align 2
@IRQ_RXBREAK = common dso_local global i16 0, align 2
@RXBREAK = common dso_local global i16 0, align 2
@MASK_BREAK = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@ASYNC_SAK = common dso_local global i32 0, align 4
@IRQ_TXUNDER = common dso_local global i16 0, align 2
@IRQ_RXIDLE = common dso_local global i16 0, align 2
@RXIDLE = common dso_local global i16 0, align 2
@IRQ_RXOVER = common dso_local global i16 0, align 2
@IRQ_DSR = common dso_local global i16 0, align 2
@IRQ_CTS = common dso_local global i16 0, align 2
@IRQ_DCD = common dso_local global i16 0, align 2
@IRQ_RI = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @isr_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isr_serial(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = load i32, i32* @SSR, align 4
  %6 = call zeroext i16 @rd_reg16(%struct.slgt_info* %4, i32 %5)
  store i16 %6, i16* %3, align 2
  %7 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %8 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 8
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @DBGISR(i8* %12)
  %14 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %15 = load i32, i32* @SSR, align 4
  %16 = load i16, i16* %3, align 2
  %17 = call i32 @wr_reg16(%struct.slgt_info* %14, i32 %15, i16 zeroext %16)
  %18 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %19 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %122

26:                                               ; preds = %1
  %27 = load i16, i16* %3, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @IRQ_TXIDLE, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %35 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %40 = load i16, i16* %3, align 2
  %41 = call i32 @isr_txeom(%struct.slgt_info* %39, i16 zeroext %40)
  br label %42

42:                                               ; preds = %38, %33
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %45 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i16, i16* %3, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* @IRQ_RXDATA, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %57 = call i32 @isr_rxdata(%struct.slgt_info* %56)
  br label %58

58:                                               ; preds = %55, %48, %43
  %59 = load i16, i16* %3, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* @IRQ_RXBREAK, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %121

65:                                               ; preds = %58
  %66 = load i16, i16* %3, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, i16* @RXBREAK, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %121

72:                                               ; preds = %65
  %73 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %74 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %79 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %120

83:                                               ; preds = %72
  %84 = load i16, i16* %3, align 2
  %85 = zext i16 %84 to i32
  %86 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %87 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %86, i32 0, i32 1
  %88 = load i16, i16* %87, align 4
  %89 = zext i16 %88 to i32
  %90 = and i32 %85, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %119, label %92

92:                                               ; preds = %83
  %93 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %94 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MASK_BREAK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %92
  %100 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %101 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %100, i32 0, i32 6
  %102 = load i32, i32* @TTY_BREAK, align 4
  %103 = call i32 @tty_insert_flip_char(%struct.TYPE_6__* %101, i32 0, i32 %102)
  %104 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %105 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ASYNC_SAK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %99
  %112 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %113 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @do_SAK(i64 %115)
  br label %117

117:                                              ; preds = %111, %99
  br label %118

118:                                              ; preds = %117, %92
  br label %119

119:                                              ; preds = %118, %83
  br label %120

120:                                              ; preds = %119, %72
  br label %121

121:                                              ; preds = %120, %65, %58
  br label %192

122:                                              ; preds = %1
  %123 = load i16, i16* %3, align 2
  %124 = zext i16 %123 to i32
  %125 = load i16, i16* @IRQ_TXIDLE, align 2
  %126 = zext i16 %125 to i32
  %127 = load i16, i16* @IRQ_TXUNDER, align 2
  %128 = zext i16 %127 to i32
  %129 = add nsw i32 %126, %128
  %130 = and i32 %124, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %122
  %133 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %134 = load i16, i16* %3, align 2
  %135 = call i32 @isr_txeom(%struct.slgt_info* %133, i16 zeroext %134)
  br label %136

136:                                              ; preds = %132, %122
  %137 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %138 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load i16, i16* %3, align 2
  %143 = zext i16 %142 to i32
  %144 = load i16, i16* @IRQ_RXDATA, align 2
  %145 = zext i16 %144 to i32
  %146 = and i32 %143, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %150 = call i32 @isr_rxdata(%struct.slgt_info* %149)
  br label %151

151:                                              ; preds = %148, %141, %136
  %152 = load i16, i16* %3, align 2
  %153 = zext i16 %152 to i32
  %154 = load i16, i16* @IRQ_RXIDLE, align 2
  %155 = zext i16 %154 to i32
  %156 = and i32 %153, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %151
  %159 = load i16, i16* %3, align 2
  %160 = zext i16 %159 to i32
  %161 = load i16, i16* @RXIDLE, align 2
  %162 = zext i16 %161 to i32
  %163 = and i32 %160, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %167 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  br label %177

171:                                              ; preds = %158
  %172 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %173 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %165
  %178 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %179 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %178, i32 0, i32 3
  %180 = call i32 @wake_up_interruptible(i32* %179)
  br label %181

181:                                              ; preds = %177, %151
  %182 = load i16, i16* %3, align 2
  %183 = zext i16 %182 to i32
  %184 = load i16, i16* @IRQ_RXOVER, align 2
  %185 = zext i16 %184 to i32
  %186 = and i32 %183, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %190 = call i32 @rx_start(%struct.slgt_info* %189)
  br label %191

191:                                              ; preds = %188, %181
  br label %192

192:                                              ; preds = %191, %121
  %193 = load i16, i16* %3, align 2
  %194 = zext i16 %193 to i32
  %195 = load i16, i16* @IRQ_DSR, align 2
  %196 = zext i16 %195 to i32
  %197 = and i32 %194, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %192
  %200 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %201 = load i16, i16* %3, align 2
  %202 = call i32 @dsr_change(%struct.slgt_info* %200, i16 zeroext %201)
  br label %203

203:                                              ; preds = %199, %192
  %204 = load i16, i16* %3, align 2
  %205 = zext i16 %204 to i32
  %206 = load i16, i16* @IRQ_CTS, align 2
  %207 = zext i16 %206 to i32
  %208 = and i32 %205, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %203
  %211 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %212 = load i16, i16* %3, align 2
  %213 = call i32 @cts_change(%struct.slgt_info* %211, i16 zeroext %212)
  br label %214

214:                                              ; preds = %210, %203
  %215 = load i16, i16* %3, align 2
  %216 = zext i16 %215 to i32
  %217 = load i16, i16* @IRQ_DCD, align 2
  %218 = zext i16 %217 to i32
  %219 = and i32 %216, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %214
  %222 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %223 = load i16, i16* %3, align 2
  %224 = call i32 @dcd_change(%struct.slgt_info* %222, i16 zeroext %223)
  br label %225

225:                                              ; preds = %221, %214
  %226 = load i16, i16* %3, align 2
  %227 = zext i16 %226 to i32
  %228 = load i16, i16* @IRQ_RI, align 2
  %229 = zext i16 %228 to i32
  %230 = and i32 %227, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %225
  %233 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %234 = load i16, i16* %3, align 2
  %235 = call i32 @ri_change(%struct.slgt_info* %233, i16 zeroext %234)
  br label %236

236:                                              ; preds = %232, %225
  ret void
}

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @DBGISR(i8*) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @isr_txeom(%struct.slgt_info*, i16 zeroext) #1

declare dso_local i32 @isr_rxdata(%struct.slgt_info*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @do_SAK(i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @rx_start(%struct.slgt_info*) #1

declare dso_local i32 @dsr_change(%struct.slgt_info*, i16 zeroext) #1

declare dso_local i32 @cts_change(%struct.slgt_info*, i16 zeroext) #1

declare dso_local i32 @dcd_change(%struct.slgt_info*, i16 zeroext) #1

declare dso_local i32 @ri_change(%struct.slgt_info*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
