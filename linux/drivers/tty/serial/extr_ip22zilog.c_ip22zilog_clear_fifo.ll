; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_clear_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_clear_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zilog_channel = type { i32, i32 }

@Rx_CH_AV = common dso_local global i8 0, align 1
@R1 = common dso_local global i32 0, align 4
@PAR_ERR = common dso_local global i8 0, align 1
@Rx_OVR = common dso_local global i8 0, align 1
@CRC_ERR = common dso_local global i8 0, align 1
@ERR_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zilog_channel*)* @ip22zilog_clear_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip22zilog_clear_fifo(%struct.zilog_channel* %0) #0 {
  %2 = alloca %struct.zilog_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.zilog_channel* %0, %struct.zilog_channel** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %49, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 32
  br i1 %7, label %8, label %52

8:                                                ; preds = %5
  %9 = load %struct.zilog_channel*, %struct.zilog_channel** %2, align 8
  %10 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %9, i32 0, i32 0
  %11 = call zeroext i8 @readb(i32* %10)
  store i8 %11, i8* %4, align 1
  %12 = call i32 (...) @ZSDELAY()
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @Rx_CH_AV, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  br label %52

20:                                               ; preds = %8
  %21 = load %struct.zilog_channel*, %struct.zilog_channel** %2, align 8
  %22 = load i32, i32* @R1, align 4
  %23 = call zeroext i8 @read_zsreg(%struct.zilog_channel* %21, i32 %22)
  store i8 %23, i8* %4, align 1
  %24 = load %struct.zilog_channel*, %struct.zilog_channel** %2, align 8
  %25 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %24, i32 0, i32 1
  %26 = call zeroext i8 @readb(i32* %25)
  %27 = call i32 (...) @ZSDELAY()
  %28 = load i8, i8* %4, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @PAR_ERR, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @Rx_OVR, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  %35 = load i8, i8* @CRC_ERR, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %34, %36
  %38 = and i32 %29, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %20
  %41 = load i32, i32* @ERR_RES, align 4
  %42 = load %struct.zilog_channel*, %struct.zilog_channel** %2, align 8
  %43 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %42, i32 0, i32 0
  %44 = call i32 @writeb(i32 %41, i32* %43)
  %45 = call i32 (...) @ZSDELAY()
  %46 = load %struct.zilog_channel*, %struct.zilog_channel** %2, align 8
  %47 = call i32 @ZS_WSYNC(%struct.zilog_channel* %46)
  br label %48

48:                                               ; preds = %40, %20
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %5

52:                                               ; preds = %19, %5
  ret void
}

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @ZSDELAY(...) #1

declare dso_local zeroext i8 @read_zsreg(%struct.zilog_channel*, i32) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @ZS_WSYNC(%struct.zilog_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
