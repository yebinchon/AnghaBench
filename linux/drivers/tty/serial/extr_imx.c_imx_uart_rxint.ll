; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_rxint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_rxint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@USR2 = common dso_local global i32 0, align 4
@USR2_RDR = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@URXD0 = common dso_local global i32 0, align 4
@USR2_BRCD = common dso_local global i32 0, align 4
@URXD_ERR = common dso_local global i32 0, align 4
@URXD_BRK = common dso_local global i32 0, align 4
@URXD_PRERR = common dso_local global i32 0, align 4
@URXD_FRMERR = common dso_local global i32 0, align 4
@URXD_OVRRUN = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@URXD_DUMMY_READ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @imx_uart_rxint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_rxint(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imx_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tty_port*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.imx_port*
  store %struct.imx_port* %12, %struct.imx_port** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %14 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.tty_port* %17, %struct.tty_port** %9, align 8
  %18 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %19 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = call i32 @spin_lock(i32* %20)
  br label %22

22:                                               ; preds = %196, %135, %65, %56, %2
  %23 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %24 = load i32, i32* @USR2, align 4
  %25 = call i32 @imx_uart_readl(%struct.imx_port* %23, i32 %24)
  %26 = load i32, i32* @USR2_RDR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %197

29:                                               ; preds = %22
  %30 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %32 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %38 = load i32, i32* @URXD0, align 4
  %39 = call i32 @imx_uart_readl(%struct.imx_port* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %41 = load i32, i32* @USR2, align 4
  %42 = call i32 @imx_uart_readl(%struct.imx_port* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @USR2_BRCD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %29
  %48 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %49 = load i32, i32* @USR2_BRCD, align 4
  %50 = load i32, i32* @USR2, align 4
  %51 = call i32 @imx_uart_writel(%struct.imx_port* %48, i32 %49, i32 %50)
  %52 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %53 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %52, i32 0, i32 0
  %54 = call i64 @uart_handle_break(%struct.TYPE_7__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %22

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %29
  %59 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %60 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %59, i32 0, i32 0
  %61 = load i32, i32* %6, align 4
  %62 = trunc i32 %61 to i8
  %63 = call i64 @uart_handle_sysrq_char(%struct.TYPE_7__* %60, i8 zeroext %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %22

66:                                               ; preds = %58
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @URXD_ERR, align 4
  %69 = and i32 %67, %68
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %174

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @URXD_BRK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %79 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %110

84:                                               ; preds = %72
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @URXD_PRERR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %91 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %109

96:                                               ; preds = %84
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @URXD_FRMERR, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %103 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %101, %96
  br label %109

109:                                              ; preds = %108, %89
  br label %110

110:                                              ; preds = %109, %77
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @URXD_OVRRUN, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %117 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %115, %110
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %125 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %123, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %122
  %131 = load i32, i32* %8, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %8, align 4
  %133 = icmp ugt i32 %132, 100
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %198

135:                                              ; preds = %130
  br label %22

136:                                              ; preds = %122
  %137 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %138 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, 255
  %142 = load i32, i32* %6, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @URXD_BRK, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %136
  %149 = load i32, i32* @TTY_BREAK, align 4
  store i32 %149, i32* %7, align 4
  br label %166

150:                                              ; preds = %136
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @URXD_PRERR, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32, i32* @TTY_PARITY, align 4
  store i32 %156, i32* %7, align 4
  br label %165

157:                                              ; preds = %150
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @URXD_FRMERR, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i32, i32* @TTY_FRAME, align 4
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %162, %157
  br label %165

165:                                              ; preds = %164, %155
  br label %166

166:                                              ; preds = %165, %148
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @URXD_OVRRUN, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32, i32* @TTY_OVERRUN, align 4
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %171, %166
  br label %174

174:                                              ; preds = %173, %66
  %175 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %176 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @URXD_DUMMY_READ, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %198

183:                                              ; preds = %174
  %184 = load %struct.tty_port*, %struct.tty_port** %9, align 8
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i64 @tty_insert_flip_char(%struct.tty_port* %184, i32 %185, i32 %186)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %183
  %190 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %191 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %189, %183
  br label %22

197:                                              ; preds = %22
  br label %198

198:                                              ; preds = %197, %182, %134
  %199 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %200 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  %202 = call i32 @spin_unlock(i32* %201)
  %203 = load %struct.tty_port*, %struct.tty_port** %9, align 8
  %204 = call i32 @tty_flip_buffer_push(%struct.tty_port* %203)
  %205 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %205
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_7__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_7__*, i8 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
