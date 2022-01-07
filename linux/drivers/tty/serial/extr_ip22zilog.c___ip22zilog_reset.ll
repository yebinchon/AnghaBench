; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c___ip22zilog_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c___ip22zilog_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_ip22zilog_port = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.zilog_channel = type { i32 }

@IP22ZILOG_FLAG_RESET_DONE = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@ALL_SNT = common dso_local global i8 0, align 1
@R9 = common dso_local global i32 0, align 4
@FHWRES = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_ip22zilog_port*)* @__ip22zilog_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip22zilog_reset(%struct.uart_ip22zilog_port* %0) #0 {
  %2 = alloca %struct.uart_ip22zilog_port*, align 8
  %3 = alloca %struct.zilog_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.uart_ip22zilog_port* %0, %struct.uart_ip22zilog_port** %2, align 8
  %6 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IP22ZILOG_FLAG_RESET_DONE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %67

13:                                               ; preds = %1
  %14 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %14, i32 0, i32 2
  %16 = call %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(i32* %15)
  store %struct.zilog_channel* %16, %struct.zilog_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %33, %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 1000
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %22 = load i32, i32* @R1, align 4
  %23 = call zeroext i8 @read_zsreg(%struct.zilog_channel* %21, i32 %22)
  store i8 %23, i8* %5, align 1
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @ALL_SNT, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %36

31:                                               ; preds = %20
  %32 = call i32 @udelay(i32 100)
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %17

36:                                               ; preds = %30, %17
  %37 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %38 = call i32 @ZS_IS_CHANNEL_A(%struct.uart_ip22zilog_port* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %42 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %41, i32 1
  store %struct.uart_ip22zilog_port* %42, %struct.uart_ip22zilog_port** %2, align 8
  %43 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %44 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %43, i32 0, i32 2
  %45 = call %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(i32* %44)
  store %struct.zilog_channel* %45, %struct.zilog_channel** %3, align 8
  br label %46

46:                                               ; preds = %40, %36
  %47 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %48 = load i32, i32* @R9, align 4
  %49 = load i32, i32* @FHWRES, align 4
  %50 = call i32 @write_zsreg(%struct.zilog_channel* %47, i32 %48, i32 %49)
  %51 = call i32 (...) @ZSDELAY_LONG()
  %52 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %53 = load i32, i32* @R0, align 4
  %54 = call zeroext i8 @read_zsreg(%struct.zilog_channel* %52, i32 %53)
  %55 = load i32, i32* @IP22ZILOG_FLAG_RESET_DONE, align 4
  %56 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %57 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* @IP22ZILOG_FLAG_RESET_DONE, align 4
  %61 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %62 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %60
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %46, %12
  ret void
}

declare dso_local %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(i32*) #1

declare dso_local zeroext i8 @read_zsreg(%struct.zilog_channel*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ZS_IS_CHANNEL_A(%struct.uart_ip22zilog_port*) #1

declare dso_local i32 @write_zsreg(%struct.zilog_channel*, i32, i32) #1

declare dso_local i32 @ZSDELAY_LONG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
