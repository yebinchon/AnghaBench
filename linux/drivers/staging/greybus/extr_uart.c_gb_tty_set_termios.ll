; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_tty_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_tty_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ktermios, %struct.gb_tty* }
%struct.ktermios = type { i32 }
%struct.gb_tty = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gb_tty_line_coding = type { i32, i32, i32, i32, i32 }

@CSTOPB = common dso_local global i32 0, align 4
@GB_SERIAL_2_STOP_BITS = common dso_local global i32 0, align 4
@GB_SERIAL_1_STOP_BITS = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4
@GB_UART_CTRL_DTR = common dso_local global i32 0, align 4
@GB_UART_CTRL_RTS = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@GB_SERIAL_AUTO_RTSCTS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @gb_tty_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_tty_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.gb_tty*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.gb_tty_line_coding, align 4
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load %struct.gb_tty*, %struct.gb_tty** %10, align 8
  store %struct.gb_tty* %11, %struct.gb_tty** %5, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  store %struct.ktermios* %13, %struct.ktermios** %6, align 8
  %14 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %15 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %18 = call i32 @tty_get_baud_rate(%struct.tty_struct* %17)
  %19 = call i32 @cpu_to_le32(i32 %18)
  %20 = getelementptr inbounds %struct.gb_tty_line_coding, %struct.gb_tty_line_coding* %7, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %22 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CSTOPB, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @GB_SERIAL_2_STOP_BITS, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @GB_SERIAL_1_STOP_BITS, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.gb_tty_line_coding, %struct.gb_tty_line_coding* %7, i32 0, i32 4
  store i32 %32, i32* %33, align 4
  %34 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %35 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PARENB, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %31
  %41 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %42 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PARODD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 2
  %49 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %50 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CMSPAR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 2, i32 0
  %57 = add nsw i32 %48, %56
  br label %59

58:                                               ; preds = %31
  br label %59

59:                                               ; preds = %58, %40
  %60 = phi i32 [ %57, %40 ], [ 0, %58 ]
  %61 = getelementptr inbounds %struct.gb_tty_line_coding, %struct.gb_tty_line_coding* %7, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %63 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CSIZE, align 4
  %66 = and i32 %64, %65
  switch i32 %66, label %74 [
    i32 131, label %67
    i32 130, label %69
    i32 129, label %71
    i32 128, label %73
  ]

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.gb_tty_line_coding, %struct.gb_tty_line_coding* %7, i32 0, i32 1
  store i32 5, i32* %68, align 4
  br label %76

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.gb_tty_line_coding, %struct.gb_tty_line_coding* %7, i32 0, i32 1
  store i32 6, i32* %70, align 4
  br label %76

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.gb_tty_line_coding, %struct.gb_tty_line_coding* %7, i32 0, i32 1
  store i32 7, i32* %72, align 4
  br label %76

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %59, %73
  %75 = getelementptr inbounds %struct.gb_tty_line_coding, %struct.gb_tty_line_coding* %7, i32 0, i32 1
  store i32 8, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %71, %69, %67
  %77 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %78 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CLOCAL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %85 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %87 = call i32 @C_BAUD(%struct.tty_struct* %86)
  %88 = load i32, i32* @B0, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %76
  %91 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %92 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.gb_tty_line_coding, %struct.gb_tty_line_coding* %7, i32 0, i32 3
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @GB_UART_CTRL_DTR, align 4
  %97 = load i32, i32* @GB_UART_CTRL_RTS, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %8, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %8, align 4
  br label %120

102:                                              ; preds = %76
  %103 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %104 = icmp ne %struct.ktermios* %103, null
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %107 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CBAUD, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @B0, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load i32, i32* @GB_UART_CTRL_DTR, align 4
  %115 = load i32, i32* @GB_UART_CTRL_RTS, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %113, %105, %102
  br label %120

120:                                              ; preds = %119, %90
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %123 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %121, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %129 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @send_control(%struct.gb_tty* %130, i32 %131)
  br label %133

133:                                              ; preds = %126, %120
  %134 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %135 = call i64 @C_CRTSCTS(%struct.tty_struct* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %139 = call i32 @C_BAUD(%struct.tty_struct* %138)
  %140 = load i32, i32* @B0, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load i32, i32* @GB_SERIAL_AUTO_RTSCTS_EN, align 4
  %144 = getelementptr inbounds %struct.gb_tty_line_coding, %struct.gb_tty_line_coding* %7, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %143
  store i32 %146, i32* %144, align 4
  br label %153

147:                                              ; preds = %137, %133
  %148 = load i32, i32* @GB_SERIAL_AUTO_RTSCTS_EN, align 4
  %149 = xor i32 %148, -1
  %150 = getelementptr inbounds %struct.gb_tty_line_coding, %struct.gb_tty_line_coding* %7, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, %149
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %147, %142
  %154 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %155 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %154, i32 0, i32 2
  %156 = call i64 @memcmp(%struct.TYPE_3__* %155, %struct.gb_tty_line_coding* %7, i32 20)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %160 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %159, i32 0, i32 2
  %161 = call i32 @memcpy(%struct.TYPE_3__* %160, %struct.gb_tty_line_coding* %7, i32 20)
  %162 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %163 = call i32 @send_line_coding(%struct.gb_tty* %162)
  br label %164

164:                                              ; preds = %158, %153
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @C_BAUD(%struct.tty_struct*) #1

declare dso_local i32 @send_control(%struct.gb_tty*, i32) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i64 @memcmp(%struct.TYPE_3__*, %struct.gb_tty_line_coding*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.gb_tty_line_coding*, i32) #1

declare dso_local i32 @send_line_coding(%struct.gb_tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
