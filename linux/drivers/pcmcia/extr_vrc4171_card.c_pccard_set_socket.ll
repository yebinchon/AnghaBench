; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4171_card.c_pccard_set_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4171_card.c_pccard_set_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrc4171_socket = type { i32, i32, i32 }
%struct.pcmcia_socket = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32 }

@CARD_MAX_SLOTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vrc4171_sockets = common dso_local global %struct.vrc4171_socket* null, align 8
@CARD_VOLTAGE_SELECT = common dso_local global i32 0, align 4
@POWER_ENABLE = common dso_local global i32 0, align 4
@VPP_GET_VCC = common dso_local global i32 0, align 4
@SS_OUTPUT_ENA = common dso_local global i32 0, align 4
@I365_PWR_OUT = common dso_local global i32 0, align 4
@I365_POWER = common dso_local global i32 0, align 4
@SS_IOCARD = common dso_local global i32 0, align 4
@I365_PC_IOCARD = common dso_local global i32 0, align 4
@SS_RESET = common dso_local global i32 0, align 4
@I365_PC_RESET = common dso_local global i32 0, align 4
@I365_INTCTL = common dso_local global i32 0, align 4
@I365_CSCINT = common dso_local global i32 0, align 4
@I365_CSC = common dso_local global i32 0, align 4
@SS_STSCHG = common dso_local global i32 0, align 4
@I365_CSC_STSCHG = common dso_local global i32 0, align 4
@SS_BATDEAD = common dso_local global i32 0, align 4
@I365_CSC_BVD1 = common dso_local global i32 0, align 4
@SS_BATWARN = common dso_local global i32 0, align 4
@I365_CSC_BVD2 = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i32 0, align 4
@I365_CSC_READY = common dso_local global i32 0, align 4
@SS_DETECT = common dso_local global i32 0, align 4
@I365_CSC_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, %struct.TYPE_3__*)* @pccard_set_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_set_socket(%struct.pcmcia_socket* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.vrc4171_socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %13 = icmp eq %struct.pcmcia_socket* %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %2
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %16 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CARD_MAX_SLOTS, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %48, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %28, %20
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 50
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 33
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %28, %14, %2
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %230

51:                                               ; preds = %43, %38, %33
  %52 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %53 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** @vrc4171_sockets, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %55, i64 %57
  store %struct.vrc4171_socket* %58, %struct.vrc4171_socket** %6, align 8
  %59 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %6, align 8
  %60 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %59, i32 0, i32 2
  %61 = call i32 @spin_lock_irq(i32* %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @set_Vcc_value(i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @CARD_VOLTAGE_SELECT, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @exca_write_byte(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @POWER_ENABLE, align 4
  store i32 %70, i32* %9, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %51
  %79 = load i32, i32* @VPP_GET_VCC, align 4
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %78, %51
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SS_OUTPUT_ENA, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32, i32* @I365_PWR_OUT, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %89, %82
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @I365_POWER, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @exca_write_byte(i32 %94, i32 %95, i32 %96)
  store i32 0, i32* %10, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %6, align 8
  %104 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %102, %93
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SS_IOCARD, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32, i32* @I365_PC_IOCARD, align 4
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %115, %108
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SS_RESET, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load i32, i32* @I365_PC_RESET, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %10, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %10, align 4
  br label %135

131:                                              ; preds = %119
  %132 = load i32, i32* @I365_PC_RESET, align 4
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @I365_INTCTL, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @exca_write_byte(i32 %136, i32 %137, i32 %138)
  store i32 0, i32* %11, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @I365_CSCINT, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @exca_write_byte(i32 %140, i32 %141, i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @I365_CSC, align 4
  %146 = call i32 @exca_read_byte(i32 %144, i32 %145)
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %135
  %152 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %6, align 8
  %153 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 8
  %156 = load i32, i32* %11, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %11, align 4
  br label %158

158:                                              ; preds = %151, %135
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @SS_IOCARD, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %158
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @SS_STSCHG, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load i32, i32* @I365_CSC_STSCHG, align 4
  %174 = load i32, i32* %11, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %172, %165
  br label %200

177:                                              ; preds = %158
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @SS_BATDEAD, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = load i32, i32* @I365_CSC_BVD1, align 4
  %186 = load i32, i32* %11, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %184, %177
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @SS_BATWARN, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load i32, i32* @I365_CSC_BVD2, align 4
  %197 = load i32, i32* %11, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %11, align 4
  br label %199

199:                                              ; preds = %195, %188
  br label %200

200:                                              ; preds = %199, %176
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @SS_READY, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %200
  %208 = load i32, i32* @I365_CSC_READY, align 4
  %209 = load i32, i32* %11, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %11, align 4
  br label %211

211:                                              ; preds = %207, %200
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @SS_DETECT, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %211
  %219 = load i32, i32* @I365_CSC_DETECT, align 4
  %220 = load i32, i32* %11, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %11, align 4
  br label %222

222:                                              ; preds = %218, %211
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @I365_CSCINT, align 4
  %225 = load i32, i32* %11, align 4
  %226 = call i32 @exca_write_byte(i32 %223, i32 %224, i32 %225)
  %227 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %6, align 8
  %228 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %227, i32 0, i32 2
  %229 = call i32 @spin_unlock_irq(i32* %228)
  store i32 0, i32* %3, align 4
  br label %230

230:                                              ; preds = %222, %48
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_Vcc_value(i32) #1

declare dso_local i32 @exca_write_byte(i32, i32, i32) #1

declare dso_local i32 @exca_read_byte(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
