; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_parse_modem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_parse_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MSIGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"neo_parse_modem: port: %d msignals: %x\0A\00", align 1
@UART_MSR_DDCD = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@UART_MSR_DSR = common dso_local global i32 0, align 4
@UART_MSR_RI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Port: %d DTR: %d RTS: %d CTS: %d DSR: %d RI: %d CD: %d\0A\00", align 1
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*, i32)* @cls_parse_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cls_parse_modem(%struct.jsm_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.jsm_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @MSIGS, align 4
  %8 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %9 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %13 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32, i32*, i8*, i32, i32, ...) @jsm_dbg(i32 %7, i32* %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 248
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @UART_MSR_DDCD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %25 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %24, i32 0, i32 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @UART_MSR_DCD, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @uart_handle_dcd_change(i32* %25, i32 %28)
  br label %30

30:                                               ; preds = %23, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @UART_MSR_DDSR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %37 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %36, i32 0, i32 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @UART_MSR_CTS, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @uart_handle_dcd_change(i32* %37, i32 %40)
  br label %42

42:                                               ; preds = %35, %30
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @UART_MSR_DCD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @UART_MSR_DCD, align 4
  %49 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %50 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %60

53:                                               ; preds = %42
  %54 = load i32, i32* @UART_MSR_DCD, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %57 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %53, %47
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @UART_MSR_DSR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @UART_MSR_DSR, align 4
  %67 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %68 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %78

71:                                               ; preds = %60
  %72 = load i32, i32* @UART_MSR_DSR, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %75 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %71, %65
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @UART_MSR_RI, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @UART_MSR_RI, align 4
  %85 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %86 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %96

89:                                               ; preds = %78
  %90 = load i32, i32* @UART_MSR_RI, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %93 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %89, %83
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @UART_MSR_CTS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32, i32* @UART_MSR_CTS, align 4
  %103 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %104 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %114

107:                                              ; preds = %96
  %108 = load i32, i32* @UART_MSR_CTS, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %111 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %107, %101
  %115 = load i32, i32* @MSIGS, align 4
  %116 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %117 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %116, i32 0, i32 3
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %121 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %124 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %127 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %125, %128
  %130 = load i32, i32* @UART_MCR_DTR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %137 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %140 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %138, %141
  %143 = load i32, i32* @UART_MCR_RTS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %150 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %153 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %151, %154
  %156 = load i32, i32* @UART_MSR_CTS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %163 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %166 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %164, %167
  %169 = load i32, i32* @UART_MSR_DSR, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %176 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %179 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %177, %180
  %182 = load i32, i32* @UART_MSR_RI, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %189 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %192 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %190, %193
  %195 = load i32, i32* @UART_MSR_DCD, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = call i32 (i32, i32*, i8*, i32, i32, ...) @jsm_dbg(i32 %115, i32* %119, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %135, i32 %148, i32 %161, i32 %174, i32 %187, i32 %200)
  ret void
}

declare dso_local i32 @jsm_dbg(i32, i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @uart_handle_dcd_change(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
