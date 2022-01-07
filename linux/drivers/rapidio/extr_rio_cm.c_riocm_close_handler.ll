; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_close_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_close_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_channel = type { i32 }
%struct.rio_ch_chan_hdr = type { i32 }

@RX_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"for ch=%d\00", align 1
@idr_lock = common dso_local global i32 0, align 4
@ch_idr = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@RIO_CM_DISCONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"riocm_ch_close() returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @riocm_close_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riocm_close_handler(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rio_channel*, align 8
  %5 = alloca %struct.rio_ch_chan_hdr*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.rio_ch_chan_hdr*
  store %struct.rio_ch_chan_hdr* %8, %struct.rio_ch_chan_hdr** %5, align 8
  %9 = load i32, i32* @RX_CMD, align 4
  %10 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ntohs(i32 %12)
  %14 = call i32 @riocm_debug(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @spin_lock_bh(i32* @idr_lock)
  %16 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ntohs(i32 %18)
  %20 = call %struct.rio_channel* @idr_find(i32* @ch_idr, i32 %19)
  store %struct.rio_channel* %20, %struct.rio_channel** %4, align 8
  %21 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %22 = icmp ne %struct.rio_channel* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = call i32 @spin_unlock_bh(i32* @idr_lock)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %29 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @idr_remove(i32* @ch_idr, i32 %30)
  %32 = call i32 @spin_unlock_bh(i32* @idr_lock)
  %33 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %34 = load i32, i32* @RIO_CM_DISCONNECT, align 4
  %35 = call i32 @riocm_exch(%struct.rio_channel* %33, i32 %34)
  %36 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %37 = call i32 @riocm_ch_close(%struct.rio_channel* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i32, i32* @RX_CMD, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @riocm_debug(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %27
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %23
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @riocm_debug(i32, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.rio_channel* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @riocm_exch(%struct.rio_channel*, i32) #1

declare dso_local i32 @riocm_ch_close(%struct.rio_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
