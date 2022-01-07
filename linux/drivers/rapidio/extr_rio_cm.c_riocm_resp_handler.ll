; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_resp_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_resp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_channel = type { i64, i32, i8* }
%struct.rio_ch_chan_hdr = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@RIO_CM_CONNECT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RIO_CM_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @riocm_resp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riocm_resp_handler(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rio_channel*, align 8
  %5 = alloca %struct.rio_ch_chan_hdr*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.rio_ch_chan_hdr*
  store %struct.rio_ch_chan_hdr* %8, %struct.rio_ch_chan_hdr** %5, align 8
  %9 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @ntohs(i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.rio_channel* @riocm_get_channel(i8* %13)
  store %struct.rio_channel* %14, %struct.rio_channel** %4, align 8
  %15 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %16 = icmp ne %struct.rio_channel* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %22 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RIO_CM_CONNECT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %28 = call i32 @riocm_put_channel(%struct.rio_channel* %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %46

31:                                               ; preds = %20
  %32 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %33 = load i32, i32* @RIO_CM_CONNECTED, align 4
  %34 = call i32 @riocm_exch(%struct.rio_channel* %32, i32 %33)
  %35 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %5, align 8
  %36 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @ntohs(i32 %37)
  %39 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %40 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %42 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %41, i32 0, i32 1
  %43 = call i32 @complete(i32* %42)
  %44 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %45 = call i32 @riocm_put_channel(%struct.rio_channel* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %31, %26, %17
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i8* @ntohs(i32) #1

declare dso_local %struct.rio_channel* @riocm_get_channel(i8*) #1

declare dso_local i32 @riocm_put_channel(%struct.rio_channel*) #1

declare dso_local i32 @riocm_exch(%struct.rio_channel*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
