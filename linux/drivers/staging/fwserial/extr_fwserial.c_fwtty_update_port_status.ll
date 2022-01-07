; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_update_port_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_update_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, %struct.TYPE_4__, i32, i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32 }

@MCTRL_MASK = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"status: %x delta: %x\0A\00", align 1
@OOB_TX_THROTTLE = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwtty_port*, i32)* @fwtty_update_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_update_port_status(%struct.fwtty_port* %0, i32 %1) #0 {
  %3 = alloca %struct.fwtty_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  store %struct.fwtty_port* %0, %struct.fwtty_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @MCTRL_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %12 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = xor i32 %13, %14
  %16 = load i32, i32* @MCTRL_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TIOCM_RNG, align 4
  %21 = and i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %27 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TIOCM_RNG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %34 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %2
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @TIOCM_DSR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %45 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @TIOCM_CAR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %56 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @TIOCM_CTS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %67 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @fwtty_dbg(%struct.fwtty_port* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @TIOCM_CAR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %108

80:                                               ; preds = %71
  %81 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %82 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %81, i32 0, i32 1
  %83 = call %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__* %82)
  store %struct.tty_struct* %83, %struct.tty_struct** %6, align 8
  %84 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %85 = icmp ne %struct.tty_struct* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %80
  %87 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %88 = call i32 @C_CLOCAL(%struct.tty_struct* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @TIOCM_CAR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %97 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = call i32 @wake_up_interruptible(i32* %98)
  br label %104

100:                                              ; preds = %90
  %101 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %102 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %101, i32 0, i32 5
  %103 = call i32 @schedule_work(i32* %102)
  br label %104

104:                                              ; preds = %100, %95
  br label %105

105:                                              ; preds = %104, %86, %80
  %106 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %107 = call i32 @tty_kref_put(%struct.tty_struct* %106)
  br label %108

108:                                              ; preds = %105, %71
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @TIOCM_CTS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %162

113:                                              ; preds = %108
  %114 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %115 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %114, i32 0, i32 1
  %116 = call %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__* %115)
  store %struct.tty_struct* %116, %struct.tty_struct** %6, align 8
  %117 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %118 = icmp ne %struct.tty_struct* %117, null
  br i1 %118, label %119, label %159

119:                                              ; preds = %113
  %120 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %121 = call i64 @C_CRTSCTS(%struct.tty_struct* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %159

123:                                              ; preds = %119
  %124 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %125 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %123
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @TIOCM_CTS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %128
  %134 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %135 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %134, i32 0, i32 0
  store i32 0, i32* %135, align 4
  %136 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %137 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %142 = call i32 @__fwtty_restart_tx(%struct.fwtty_port* %141)
  br label %146

143:                                              ; preds = %133
  %144 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %145 = call i32 @fwtty_restart_tx(%struct.fwtty_port* %144)
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %128
  br label %158

148:                                              ; preds = %123
  %149 = load i32, i32* %4, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* @TIOCM_CTS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %156 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %155, i32 0, i32 0
  store i32 1, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %148
  br label %158

158:                                              ; preds = %157, %147
  br label %159

159:                                              ; preds = %158, %119, %113
  %160 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %161 = call i32 @tty_kref_put(%struct.tty_struct* %160)
  br label %213

162:                                              ; preds = %108
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @OOB_TX_THROTTLE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %212

167:                                              ; preds = %162
  %168 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %169 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %168, i32 0, i32 1
  %170 = call %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__* %169)
  store %struct.tty_struct* %170, %struct.tty_struct** %6, align 8
  %171 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %172 = icmp ne %struct.tty_struct* %171, null
  br i1 %172, label %173, label %209

173:                                              ; preds = %167
  %174 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %175 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %199

178:                                              ; preds = %173
  %179 = load i32, i32* %4, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* @OOB_TX_THROTTLE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %198

184:                                              ; preds = %178
  %185 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %186 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %185, i32 0, i32 0
  store i32 0, i32* %186, align 4
  %187 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %188 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %184
  %192 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %193 = call i32 @__fwtty_restart_tx(%struct.fwtty_port* %192)
  br label %197

194:                                              ; preds = %184
  %195 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %196 = call i32 @fwtty_restart_tx(%struct.fwtty_port* %195)
  br label %197

197:                                              ; preds = %194, %191
  br label %198

198:                                              ; preds = %197, %178
  br label %208

199:                                              ; preds = %173
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @OOB_TX_THROTTLE, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %206 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %205, i32 0, i32 0
  store i32 1, i32* %206, align 4
  br label %207

207:                                              ; preds = %204, %199
  br label %208

208:                                              ; preds = %207, %198
  br label %209

209:                                              ; preds = %208, %167
  %210 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %211 = call i32 @tty_kref_put(%struct.tty_struct* %210)
  br label %212

212:                                              ; preds = %209, %162
  br label %213

213:                                              ; preds = %212, %159
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @UART_LSR_BI, align 4
  %216 = shl i32 %215, 24
  %217 = and i32 %214, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %238

219:                                              ; preds = %213
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* @UART_LSR_BI, align 4
  %222 = shl i32 %221, 24
  %223 = and i32 %220, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %219
  %226 = load i32, i32* @jiffies, align 4
  %227 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %228 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 8
  %229 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %230 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %229, i32 0, i32 2
  %231 = call i32 @schedule_delayed_work(i32* %230, i32 0)
  br label %237

232:                                              ; preds = %219
  %233 = load i32, i32* @system_wq, align 4
  %234 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %235 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %234, i32 0, i32 2
  %236 = call i32 @mod_delayed_work(i32 %233, i32* %235, i32 0)
  br label %237

237:                                              ; preds = %232, %225
  br label %238

238:                                              ; preds = %237, %213
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* @TIOCM_DSR, align 4
  %241 = load i32, i32* @TIOCM_CAR, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @TIOCM_CTS, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @TIOCM_RNG, align 4
  %246 = or i32 %244, %245
  %247 = and i32 %239, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %238
  %250 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %251 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = call i32 @wake_up_interruptible(i32* %252)
  br label %254

254:                                              ; preds = %249, %238
  ret void
}

declare dso_local i32 @fwtty_dbg(%struct.fwtty_port*, i8*, i32, i32) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__*) #1

declare dso_local i32 @C_CLOCAL(%struct.tty_struct*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @__fwtty_restart_tx(%struct.fwtty_port*) #1

declare dso_local i32 @fwtty_restart_tx(%struct.fwtty_port*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
