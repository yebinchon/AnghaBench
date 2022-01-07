; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c___rp2_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c___rp2_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp2_uart_port = type { i64, i64 }

@RP2_BAUD = common dso_local global i64 0, align 8
@RP2_UART_CTL = common dso_local global i32 0, align 4
@RP2_UART_CTL_STOPBITS_m = common dso_local global i32 0, align 4
@RP2_UART_CTL_DATABITS_m = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i64 0, align 8
@CSIZE = common dso_local global i64 0, align 8
@CS8 = common dso_local global i64 0, align 8
@RP2_UART_CTL_DATABITS_8 = common dso_local global i32 0, align 4
@CS7 = common dso_local global i64 0, align 8
@RP2_UART_CTL_DATABITS_7 = common dso_local global i32 0, align 4
@CS6 = common dso_local global i64 0, align 8
@RP2_UART_CTL_DATABITS_6 = common dso_local global i32 0, align 4
@CS5 = common dso_local global i64 0, align 8
@RP2_UART_CTL_DATABITS_5 = common dso_local global i32 0, align 4
@RP2_TXRX_CTL = common dso_local global i32 0, align 4
@RP2_TXRX_CTL_PARENB_m = common dso_local global i32 0, align 4
@RP2_TXRX_CTL_nPARODD_m = common dso_local global i32 0, align 4
@RP2_TXRX_CTL_CMSPAR_m = common dso_local global i32 0, align 4
@RP2_TXRX_CTL_DTRFLOW_m = common dso_local global i32 0, align 4
@RP2_TXRX_CTL_DSRFLOW_m = common dso_local global i32 0, align 4
@RP2_TXRX_CTL_RTSFLOW_m = common dso_local global i32 0, align 4
@RP2_TXRX_CTL_CTSFLOW_m = common dso_local global i32 0, align 4
@PARENB = common dso_local global i64 0, align 8
@PARODD = common dso_local global i64 0, align 8
@CMSPAR = common dso_local global i64 0, align 8
@CRTSCTS = common dso_local global i64 0, align 8
@IXON = common dso_local global i64 0, align 8
@RP2_TX_SWFLOW_ena = common dso_local global i32 0, align 4
@RP2_TX_SWFLOW_dis = common dso_local global i32 0, align 4
@RP2_TX_SWFLOW = common dso_local global i64 0, align 8
@IXOFF = common dso_local global i64 0, align 8
@RP2_RX_SWFLOW_ena = common dso_local global i32 0, align 4
@RP2_RX_SWFLOW_dis = common dso_local global i32 0, align 4
@RP2_RX_SWFLOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rp2_uart_port*, i64, i64, i32)* @__rp2_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rp2_uart_set_termios(%struct.rp2_uart_port* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.rp2_uart_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rp2_uart_port* %0, %struct.rp2_uart_port** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = sub i32 %9, 1
  %11 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %5, align 8
  %12 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RP2_BAUD, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writew(i32 %10, i64 %15)
  %17 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %5, align 8
  %18 = load i32, i32* @RP2_UART_CTL, align 4
  %19 = load i32, i32* @RP2_UART_CTL_STOPBITS_m, align 4
  %20 = load i32, i32* @RP2_UART_CTL_DATABITS_m, align 4
  %21 = or i32 %19, %20
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @CSTOPB, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @RP2_UART_CTL_STOPBITS_m, align 4
  br label %29

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @CSIZE, align 8
  %33 = and i64 %31, %32
  %34 = load i64, i64* @CS8, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @RP2_UART_CTL_DATABITS_8, align 4
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = or i32 %30, %40
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @CSIZE, align 8
  %44 = and i64 %42, %43
  %45 = load i64, i64* @CS7, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @RP2_UART_CTL_DATABITS_7, align 4
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = or i32 %41, %51
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @CSIZE, align 8
  %55 = and i64 %53, %54
  %56 = load i64, i64* @CS6, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @RP2_UART_CTL_DATABITS_6, align 4
  br label %61

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = or i32 %52, %62
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @CSIZE, align 8
  %66 = and i64 %64, %65
  %67 = load i64, i64* @CS5, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @RP2_UART_CTL_DATABITS_5, align 4
  br label %72

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = or i32 %63, %73
  %75 = call i32 @rp2_rmw(%struct.rp2_uart_port* %17, i32 %18, i32 %21, i32 %74)
  %76 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %5, align 8
  %77 = load i32, i32* @RP2_TXRX_CTL, align 4
  %78 = load i32, i32* @RP2_TXRX_CTL_PARENB_m, align 4
  %79 = load i32, i32* @RP2_TXRX_CTL_nPARODD_m, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @RP2_TXRX_CTL_CMSPAR_m, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @RP2_TXRX_CTL_DTRFLOW_m, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @RP2_TXRX_CTL_DSRFLOW_m, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @RP2_TXRX_CTL_RTSFLOW_m, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @RP2_TXRX_CTL_CTSFLOW_m, align 4
  %90 = or i32 %88, %89
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @PARENB, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %72
  %96 = load i32, i32* @RP2_TXRX_CTL_PARENB_m, align 4
  br label %98

97:                                               ; preds = %72
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 0, %97 ]
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* @PARODD, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @RP2_TXRX_CTL_nPARODD_m, align 4
  br label %107

107:                                              ; preds = %105, %104
  %108 = phi i32 [ 0, %104 ], [ %106, %105 ]
  %109 = or i32 %99, %108
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @CMSPAR, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @RP2_TXRX_CTL_CMSPAR_m, align 4
  br label %117

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  %119 = or i32 %109, %118
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* @CRTSCTS, align 8
  %122 = and i64 %120, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i32, i32* @RP2_TXRX_CTL_RTSFLOW_m, align 4
  %126 = load i32, i32* @RP2_TXRX_CTL_CTSFLOW_m, align 4
  %127 = or i32 %125, %126
  br label %129

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %124
  %130 = phi i32 [ %127, %124 ], [ 0, %128 ]
  %131 = or i32 %119, %130
  %132 = call i32 @rp2_rmw(%struct.rp2_uart_port* %76, i32 %77, i32 %90, i32 %131)
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* @IXON, align 8
  %135 = and i64 %133, %134
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i32, i32* @RP2_TX_SWFLOW_ena, align 4
  br label %141

139:                                              ; preds = %129
  %140 = load i32, i32* @RP2_TX_SWFLOW_dis, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  %143 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %5, align 8
  %144 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @RP2_TX_SWFLOW, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writeb(i32 %142, i64 %147)
  %149 = load i64, i64* %7, align 8
  %150 = load i64, i64* @IXOFF, align 8
  %151 = and i64 %149, %150
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %141
  %154 = load i32, i32* @RP2_RX_SWFLOW_ena, align 4
  br label %157

155:                                              ; preds = %141
  %156 = load i32, i32* @RP2_RX_SWFLOW_dis, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %5, align 8
  %160 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @RP2_RX_SWFLOW, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writeb(i32 %158, i64 %163)
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @rp2_rmw(%struct.rp2_uart_port*, i32, i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
