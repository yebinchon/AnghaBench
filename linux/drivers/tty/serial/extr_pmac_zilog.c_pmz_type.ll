; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pmac_port = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Z85c30 ESCC - Infrared port\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Z85c30 ESCC - Internal modem\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Z85c30 ESCC - Serial port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.uart_port*)* @pmz_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pmz_type(%struct.uart_port* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_pmac_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %5)
  store %struct.uart_pmac_port* %6, %struct.uart_pmac_port** %4, align 8
  %7 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %8 = call i64 @ZS_IS_IRDA(%struct.uart_pmac_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %13 = call i64 @ZS_IS_INTMODEM(%struct.uart_pmac_port* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %18

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %18

18:                                               ; preds = %17, %15, %10
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i64 @ZS_IS_IRDA(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_IS_INTMODEM(%struct.uart_pmac_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
