; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_ip22zilog_port = type { i8, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.zilog_channel = type { i32, i32 }

@Rx_CH_AV = common dso_local global i8 0, align 1
@R1 = common dso_local global i32 0, align 4
@PAR_ERR = common dso_local global i32 0, align 4
@Rx_OVR = common dso_local global i32 0, align 4
@CRC_ERR = common dso_local global i32 0, align 4
@ERR_RES = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@Rx_SYS = common dso_local global i32 0, align 4
@Rx_BRK = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_ip22zilog_port*, %struct.zilog_channel*)* @ip22zilog_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip22zilog_receive_chars(%struct.uart_ip22zilog_port* %0, %struct.zilog_channel* %1) #0 {
  %3 = alloca %struct.uart_ip22zilog_port*, align 8
  %4 = alloca %struct.zilog_channel*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_ip22zilog_port* %0, %struct.uart_ip22zilog_port** %3, align 8
  store %struct.zilog_channel* %1, %struct.zilog_channel** %4, align 8
  %9 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %202, %190, %108, %2
  %16 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %17 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %16, i32 0, i32 1
  %18 = call zeroext i8 @readb(i32* %17)
  store i8 %18, i8* %5, align 1
  %19 = call i32 (...) @ZSDELAY()
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @Rx_CH_AV, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %203

27:                                               ; preds = %15
  %28 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %29 = load i32, i32* @R1, align 4
  %30 = call i32 @read_zsreg(%struct.zilog_channel* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PAR_ERR, align 4
  %33 = load i32, i32* @Rx_OVR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CRC_ERR, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load i32, i32* @ERR_RES, align 4
  %41 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %42 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %41, i32 0, i32 1
  %43 = call i32 @writeb(i32 %40, i32* %42)
  %44 = call i32 (...) @ZSDELAY()
  %45 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %46 = call i32 @ZS_WSYNC(%struct.zilog_channel* %45)
  br label %47

47:                                               ; preds = %39, %27
  %48 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %49 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %48, i32 0, i32 0
  %50 = call zeroext i8 @readb(i32* %49)
  store i8 %50, i8* %5, align 1
  %51 = call i32 (...) @ZSDELAY()
  %52 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %53 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 8
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* %5, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %5, align 1
  %60 = load i8, i8* %5, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %47
  %63 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %64 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %62, %47
  %69 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %69, i8* %6, align 1
  %70 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %71 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @PAR_ERR, align 4
  %78 = load i32, i32* @Rx_OVR, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @CRC_ERR, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @Rx_SYS, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @Rx_BRK, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %76, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %184

88:                                               ; preds = %68
  %89 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %90 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @Rx_SYS, align 4
  %93 = load i32, i32* @Rx_BRK, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %88
  %98 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %99 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @Rx_SYS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %15

109:                                              ; preds = %97
  %110 = load i32, i32* @PAR_ERR, align 4
  %111 = load i32, i32* @CRC_ERR, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %7, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %7, align 4
  br label %142

116:                                              ; preds = %88
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @PAR_ERR, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %123 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %141

128:                                              ; preds = %116
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @CRC_ERR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %135 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %133, %128
  br label %141

141:                                              ; preds = %140, %121
  br label %142

142:                                              ; preds = %141, %109
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @Rx_OVR, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %149 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %147, %142
  %155 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %156 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @Rx_BRK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %154
  %166 = load i8, i8* @TTY_BREAK, align 1
  store i8 %166, i8* %6, align 1
  br label %183

167:                                              ; preds = %154
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @PAR_ERR, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i8, i8* @TTY_PARITY, align 1
  store i8 %173, i8* %6, align 1
  br label %182

174:                                              ; preds = %167
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @CRC_ERR, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i8, i8* @TTY_FRAME, align 1
  store i8 %180, i8* %6, align 1
  br label %181

181:                                              ; preds = %179, %174
  br label %182

182:                                              ; preds = %181, %172
  br label %183

183:                                              ; preds = %182, %165
  br label %184

184:                                              ; preds = %183, %68
  %185 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %186 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %185, i32 0, i32 2
  %187 = load i8, i8* %5, align 1
  %188 = call i64 @uart_handle_sysrq_char(%struct.TYPE_5__* %186, i8 zeroext %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %15

191:                                              ; preds = %184
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %196 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %195, i32 0, i32 2
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @Rx_OVR, align 4
  %199 = load i8, i8* %5, align 1
  %200 = load i8, i8* %6, align 1
  %201 = call i32 @uart_insert_char(%struct.TYPE_5__* %196, i32 %197, i32 %198, i8 zeroext %199, i8 zeroext %200)
  br label %202

202:                                              ; preds = %194, %191
  br label %15

203:                                              ; preds = %26
  %204 = load i32, i32* %8, align 4
  ret i32 %204
}

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @ZSDELAY(...) #1

declare dso_local i32 @read_zsreg(%struct.zilog_channel*, i32) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @ZS_WSYNC(%struct.zilog_channel*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_5__*, i8 zeroext) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_5__*, i32, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
