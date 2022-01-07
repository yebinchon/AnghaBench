; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl010.c_pl010_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl010.c_pl010_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_amba_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i64, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@UART01x_FR = common dso_local global i64 0, align 8
@UART01x_DR = common dso_local global i64 0, align 8
@TTY_NORMAL = common dso_local global i32 0, align 4
@UART01x_RSR = common dso_local global i64 0, align 8
@UART_DUMMY_RSR_RX = common dso_local global i32 0, align 4
@UART01x_RSR_ANY = common dso_local global i32 0, align 4
@UART01x_ECR = common dso_local global i64 0, align 8
@UART01x_RSR_BE = common dso_local global i32 0, align 4
@UART01x_RSR_FE = common dso_local global i32 0, align 4
@UART01x_RSR_PE = common dso_local global i32 0, align 4
@UART01x_RSR_OE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_amba_port*)* @pl010_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl010_rx_chars(%struct.uart_amba_port* %0) #0 {
  %2 = alloca %struct.uart_amba_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_amba_port* %0, %struct.uart_amba_port** %2, align 8
  store i32 256, i32* %7, align 4
  %8 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @UART01x_FR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readb(i64 %13)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %168, %1
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @UART_RX_DATA(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %20, 0
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %176

25:                                               ; preds = %23
  %26 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @UART01x_DR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readb(i64 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %33, i32* %5, align 4
  %34 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %41 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @UART01x_RSR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readb(i64 %45)
  %47 = load i32, i32* @UART_DUMMY_RSR_RX, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @UART01x_RSR_ANY, align 4
  %51 = and i32 %49, %50
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %153

54:                                               ; preds = %25
  %55 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %56 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @UART01x_ECR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 0, i64 %60)
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @UART01x_RSR_BE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %54
  %67 = load i32, i32* @UART01x_RSR_FE, align 4
  %68 = load i32, i32* @UART01x_RSR_PE, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %80 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %79, i32 0, i32 0
  %81 = call i64 @uart_handle_break(%struct.TYPE_8__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  br label %168

84:                                               ; preds = %66
  br label %111

85:                                               ; preds = %54
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @UART01x_RSR_PE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %92 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  br label %110

97:                                               ; preds = %85
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @UART01x_RSR_FE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %104 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %102, %97
  br label %110

110:                                              ; preds = %109, %90
  br label %111

111:                                              ; preds = %110, %84
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @UART01x_RSR_OE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %118 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %116, %111
  %124 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %125 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @UART01x_RSR_BE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %123
  %135 = load i32, i32* @TTY_BREAK, align 4
  store i32 %135, i32* %5, align 4
  br label %152

136:                                              ; preds = %123
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @UART01x_RSR_PE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @TTY_PARITY, align 4
  store i32 %142, i32* %5, align 4
  br label %151

143:                                              ; preds = %136
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @UART01x_RSR_FE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @TTY_FRAME, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %148, %143
  br label %151

151:                                              ; preds = %150, %141
  br label %152

152:                                              ; preds = %151, %134
  br label %153

153:                                              ; preds = %152, %25
  %154 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %155 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %154, i32 0, i32 0
  %156 = load i32, i32* %4, align 4
  %157 = call i64 @uart_handle_sysrq_char(%struct.TYPE_8__* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %168

160:                                              ; preds = %153
  %161 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %162 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %161, i32 0, i32 0
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @UART01x_RSR_OE, align 4
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @uart_insert_char(%struct.TYPE_8__* %162, i32 %163, i32 %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %160, %159, %83
  %169 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %170 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @UART01x_FR, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @readb(i64 %174)
  store i32 %175, i32* %3, align 4
  br label %15

176:                                              ; preds = %23
  %177 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %178 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = call i32 @spin_unlock(i32* %179)
  %181 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %182 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = call i32 @tty_flip_buffer_push(i32* %185)
  %187 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %188 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = call i32 @spin_lock(i32* %189)
  ret void
}

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @UART_RX_DATA(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_8__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
