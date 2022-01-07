; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_wait_until_sent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_wait_until_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.uart_state* }
%struct.uart_state = type { i32 }
%struct.uart_port = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*)* }

@PORT_UNKNOWN = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"uart_wait_until_sent(%d), jiffies=%lu, expire=%lu...\0A\00", align 1
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32)* @uart_wait_until_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_wait_until_sent(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_state*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  store %struct.uart_state* %11, %struct.uart_state** %5, align 8
  %12 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %13 = call %struct.uart_port* @uart_port_ref(%struct.uart_state* %12)
  store %struct.uart_port* %13, %struct.uart_port** %6, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %15 = icmp ne %struct.uart_port* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %113

17:                                               ; preds = %2
  %18 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PORT_UNKNOWN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %17
  %29 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %30 = call i32 @uart_port_deref(%struct.uart_port* %29)
  br label %113

31:                                               ; preds = %23
  %32 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HZ, align 4
  %36 = sdiv i32 %35, 50
  %37 = sub nsw i32 %34, %36
  %38 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %37, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = udiv i64 %43, 5
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  store i64 1, i64* %7, align 8
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %7, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %56, %51, %48
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %65 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 2, %66
  %68 = icmp sgt i32 %63, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62, %59
  %70 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 2, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %62
  %75 = load i32, i32* @jiffies, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %8, align 8
  %79 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @jiffies, align 4
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i64 %83)
  br label %85

85:                                               ; preds = %109, %74
  %86 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %87 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %89, align 8
  %91 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %92 = call i32 %90(%struct.uart_port* %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br i1 %94, label %95, label %110

95:                                               ; preds = %85
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @jiffies_to_msecs(i64 %96)
  %98 = call i32 @msleep_interruptible(i32 %97)
  %99 = load i32, i32* @current, align 4
  %100 = call i64 @signal_pending(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %110

103:                                              ; preds = %95
  %104 = load i32, i32* @jiffies, align 4
  %105 = load i64, i64* %8, align 8
  %106 = call i64 @time_after(i32 %104, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %110

109:                                              ; preds = %103
  br label %85

110:                                              ; preds = %108, %102, %85
  %111 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %112 = call i32 @uart_port_deref(%struct.uart_port* %111)
  br label %113

113:                                              ; preds = %110, %28, %16
  ret void
}

declare dso_local %struct.uart_port* @uart_port_ref(%struct.uart_state*) #1

declare dso_local i32 @uart_port_deref(%struct.uart_port*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
