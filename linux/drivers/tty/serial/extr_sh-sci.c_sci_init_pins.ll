; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_init_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_init_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32 }
%struct.sci_port = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.uart_port*, i32)* }
%struct.TYPE_6__ = type { i64 }

@PORT_SCIFA = common dso_local global i64 0, align 8
@PORT_SCIFB = common dso_local global i64 0, align 8
@SCPDR = common dso_local global i32 0, align 4
@SCPCR = common dso_local global i32 0, align 4
@SCPCR_RXDC = common dso_local global i32 0, align 4
@SCPCR_TXDC = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@SCPCR_RTSC = common dso_local global i32 0, align 4
@SCPDR_RTSD = common dso_local global i32 0, align 4
@SCPCR_CTSC = common dso_local global i32 0, align 4
@SCSPTR = common dso_local global i32 0, align 4
@SCSPTR_RTSIO = common dso_local global i32 0, align 4
@SCSPTR_RTSDT = common dso_local global i32 0, align 4
@SCSPTR_CTSIO = common dso_local global i32 0, align 4
@SCSPTR_SCKIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sci_init_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_init_pins(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sci_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %9)
  store %struct.sci_port* %10, %struct.sci_port** %5, align 8
  %11 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %12 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %19 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.uart_port*, i32)* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %28 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %32, align 8
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 %33(%struct.uart_port* %34, i32 %35)
  br label %161

37:                                               ; preds = %17, %2
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PORT_SCIFA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PORT_SCIFB, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %114

49:                                               ; preds = %43, %37
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = load i32, i32* @SCPDR, align 4
  %52 = call i32 @serial_port_in(%struct.uart_port* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %54 = load i32, i32* @SCPCR, align 4
  %55 = call i32 @serial_port_in(%struct.uart_port* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @SCPCR_RXDC, align 4
  %57 = load i32, i32* @SCPCR_TXDC, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %63 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %62)
  %64 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %105

67:                                               ; preds = %49
  %68 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TIOCM_RTS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @SCPCR_RTSC, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @SCPDR_RTSD, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %100

81:                                               ; preds = %67
  %82 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %83 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @SCPCR_RTSC, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @SCPDR_RTSD, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %99

94:                                               ; preds = %81
  %95 = load i32, i32* @SCPCR_RTSC, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %94, %86
  br label %100

100:                                              ; preds = %99, %74
  %101 = load i32, i32* @SCPCR_CTSC, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %7, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %100, %49
  %106 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %107 = load i32, i32* @SCPDR, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @serial_port_out(%struct.uart_port* %106, i32 %107, i32 %108)
  %110 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %111 = load i32, i32* @SCPCR, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @serial_port_out(%struct.uart_port* %110, i32 %111, i32 %112)
  br label %161

114:                                              ; preds = %43
  %115 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %116 = load i32, i32* @SCSPTR, align 4
  %117 = call %struct.TYPE_6__* @sci_getreg(%struct.uart_port* %115, i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %160

121:                                              ; preds = %114
  %122 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %123 = load i32, i32* @SCSPTR, align 4
  %124 = call i32 @serial_port_in(%struct.uart_port* %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* @SCSPTR_RTSIO, align 4
  %126 = load i32, i32* %8, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %8, align 4
  %128 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %129 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @TIOCM_RTS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %121
  %135 = load i32, i32* @SCSPTR_RTSDT, align 4
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %8, align 4
  br label %149

138:                                              ; preds = %121
  %139 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %140 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @SCSPTR_RTSDT, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %8, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %143, %138
  br label %149

149:                                              ; preds = %148, %134
  %150 = load i32, i32* @SCSPTR_CTSIO, align 4
  %151 = load i32, i32* @SCSPTR_SCKIO, align 4
  %152 = or i32 %150, %151
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %157 = load i32, i32* @SCSPTR, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @serial_port_out(%struct.uart_port* %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %149, %114
  br label %161

161:                                              ; preds = %26, %160, %105
  ret void
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @sci_getreg(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
