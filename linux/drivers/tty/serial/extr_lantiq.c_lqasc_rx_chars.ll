; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@LTQ_ASC_FSTAT = common dso_local global i64 0, align 8
@ASCFSTAT_RXFFLMASK = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@LTQ_ASC_RBUF = common dso_local global i64 0, align 8
@LTQ_ASC_STATE = common dso_local global i64 0, align 8
@ASCSTATE_ANY = common dso_local global i32 0, align 4
@UART_DUMMY_UER_RX = common dso_local global i32 0, align 4
@ASCSTATE_PE = common dso_local global i32 0, align 4
@ASCWHBSTATE_CLRPE = common dso_local global i32 0, align 4
@LTQ_ASC_WHBSTATE = common dso_local global i64 0, align 8
@ASCSTATE_FE = common dso_local global i32 0, align 4
@ASCWHBSTATE_CLRFE = common dso_local global i32 0, align 4
@ASCSTATE_ROE = common dso_local global i32 0, align 4
@ASCWHBSTATE_CLRROE = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @lqasc_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lqasc_rx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.tty_port* %11, %struct.tty_port** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LTQ_ASC_FSTAT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @__raw_readl(i64 %16)
  %18 = load i32, i32* @ASCFSTAT_RXFFLMASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %150, %1
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %151

24:                                               ; preds = %20
  %25 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LTQ_ASC_RBUF, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readb(i64 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LTQ_ASC_STATE, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @__raw_readl(i64 %36)
  %38 = load i32, i32* @ASCSTATE_ANY, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @UART_DUMMY_UER_RX, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %43 = call i32 @tty_flip_buffer_push(%struct.tty_port* %42)
  %44 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ASCSTATE_ANY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %129

53:                                               ; preds = %24
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @ASCSTATE_PE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @ASCWHBSTATE_CLRPE, align 4
  %65 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @LTQ_ASC_WHBSTATE, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @asc_update_bits(i32 0, i32 %64, i64 %69)
  br label %90

71:                                               ; preds = %53
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @ASCSTATE_FE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @ASCWHBSTATE_CLRFE, align 4
  %83 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @LTQ_ASC_WHBSTATE, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @asc_update_bits(i32 0, i32 %82, i64 %87)
  br label %89

89:                                               ; preds = %76, %71
  br label %90

90:                                               ; preds = %89, %58
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @ASCSTATE_ROE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %97 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @ASCWHBSTATE_CLRROE, align 4
  %102 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %103 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @LTQ_ASC_WHBSTATE, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @asc_update_bits(i32 0, i32 %101, i64 %106)
  br label %108

108:                                              ; preds = %95, %90
  %109 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %110 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @ASCSTATE_PE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* @TTY_PARITY, align 4
  store i32 %119, i32* %7, align 4
  br label %128

120:                                              ; preds = %108
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @ASCSTATE_FE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* @TTY_FRAME, align 4
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %125, %120
  br label %128

128:                                              ; preds = %127, %118
  br label %129

129:                                              ; preds = %128, %24
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %132 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %130, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @tty_insert_flip_char(%struct.tty_port* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %129
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @ASCSTATE_ROE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %148 = load i32, i32* @TTY_OVERRUN, align 4
  %149 = call i32 @tty_insert_flip_char(%struct.tty_port* %147, i32 0, i32 %148)
  br label %150

150:                                              ; preds = %146, %141
  br label %20

151:                                              ; preds = %20
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %156 = call i32 @tty_flip_buffer_push(%struct.tty_port* %155)
  br label %157

157:                                              ; preds = %154, %151
  ret i32 0
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @asc_update_bits(i32, i32, i64) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
