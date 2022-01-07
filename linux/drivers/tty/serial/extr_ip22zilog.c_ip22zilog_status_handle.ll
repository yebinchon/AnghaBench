; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_status_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_status_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_ip22zilog_port = type { i32*, i8, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.zilog_channel = type { i32 }

@RES_EXT_INT = common dso_local global i32 0, align 4
@R15 = common dso_local global i64 0, align 8
@BRKIE = common dso_local global i32 0, align 4
@BRK_ABRT = common dso_local global i8 0, align 1
@Rx_SYS = common dso_local global i32 0, align 4
@Rx_BRK = common dso_local global i32 0, align 4
@SYNC = common dso_local global i8 0, align 1
@DCD = common dso_local global i8 0, align 1
@CTS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_ip22zilog_port*, %struct.zilog_channel*)* @ip22zilog_status_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip22zilog_status_handle(%struct.uart_ip22zilog_port* %0, %struct.zilog_channel* %1) #0 {
  %3 = alloca %struct.uart_ip22zilog_port*, align 8
  %4 = alloca %struct.zilog_channel*, align 8
  %5 = alloca i8, align 1
  store %struct.uart_ip22zilog_port* %0, %struct.uart_ip22zilog_port** %3, align 8
  store %struct.zilog_channel* %1, %struct.zilog_channel** %4, align 8
  %6 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %7 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %6, i32 0, i32 0
  %8 = call zeroext i8 @readb(i32* %7)
  store i8 %8, i8* %5, align 1
  %9 = call i32 (...) @ZSDELAY()
  %10 = load i32, i32* @RES_EXT_INT, align 4
  %11 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %12 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %11, i32 0, i32 0
  %13 = call i32 @writeb(i32 %10, i32* %12)
  %14 = call i32 (...) @ZSDELAY()
  %15 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %16 = call i32 @ZS_WSYNC(%struct.zilog_channel* %15)
  %17 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @R15, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BRKIE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %2
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @BRK_ABRT, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %26
  %34 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 8
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @BRK_ABRT, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %33
  %43 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %43, i32 0, i32 2
  %45 = call i64 @uart_handle_break(%struct.TYPE_10__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @Rx_SYS, align 4
  %49 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  br label %55

51:                                               ; preds = %42
  %52 = load i32, i32* @Rx_BRK, align 4
  %53 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %54 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %33, %26
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %59 = call i64 @ZS_WANTS_MODEM_STATUS(%struct.uart_ip22zilog_port* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %127

61:                                               ; preds = %57
  %62 = load i8, i8* %5, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @SYNC, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %70 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i8, i8* %5, align 1
  %77 = zext i8 %76 to i32
  %78 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %79 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %78, i32 0, i32 1
  %80 = load i8, i8* %79, align 8
  %81 = zext i8 %80 to i32
  %82 = xor i32 %77, %81
  %83 = load i8, i8* @DCD, align 1
  %84 = zext i8 %83 to i32
  %85 = xor i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %75
  %88 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %89 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %88, i32 0, i32 2
  %90 = load i8, i8* %5, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @DCD, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %91, %93
  %95 = trunc i32 %94 to i8
  %96 = call i32 @uart_handle_dcd_change(%struct.TYPE_10__* %89, i8 zeroext %95)
  br label %97

97:                                               ; preds = %87, %75
  %98 = load i8, i8* %5, align 1
  %99 = zext i8 %98 to i32
  %100 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %101 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %100, i32 0, i32 1
  %102 = load i8, i8* %101, align 8
  %103 = zext i8 %102 to i32
  %104 = xor i32 %99, %103
  %105 = load i8, i8* @CTS, align 1
  %106 = zext i8 %105 to i32
  %107 = xor i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %97
  %110 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %111 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %110, i32 0, i32 2
  %112 = load i8, i8* %5, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* @CTS, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %113, %115
  %117 = trunc i32 %116 to i8
  %118 = call i32 @uart_handle_cts_change(%struct.TYPE_10__* %111, i8 zeroext %117)
  br label %119

119:                                              ; preds = %109, %97
  %120 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %121 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = call i32 @wake_up_interruptible(i32* %125)
  br label %127

127:                                              ; preds = %119, %57
  %128 = load i8, i8* %5, align 1
  %129 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %130 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %129, i32 0, i32 1
  store i8 %128, i8* %130, align 8
  ret void
}

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @ZSDELAY(...) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @ZS_WSYNC(%struct.zilog_channel*) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_10__*) #1

declare dso_local i64 @ZS_WANTS_MODEM_STATUS(%struct.uart_ip22zilog_port*) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.TYPE_10__*, i8 zeroext) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_10__*, i8 zeroext) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
