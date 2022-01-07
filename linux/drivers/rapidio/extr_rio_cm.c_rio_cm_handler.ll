; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_rio_cm_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_rio_cm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_dev = type { i32 }
%struct.rio_ch_chan_hdr = type { i32, i32, i32 }

@RX_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"OP=%x for ch=%d from %d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid packet header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_dev*, i8*)* @rio_cm_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rio_cm_handler(%struct.cm_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.cm_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rio_ch_chan_hdr*, align 8
  store %struct.cm_dev* %0, %struct.cm_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.cm_dev*, %struct.cm_dev** %3, align 8
  %7 = getelementptr inbounds %struct.cm_dev, %struct.cm_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @rio_mport_is_running(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %44

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.rio_ch_chan_hdr*
  store %struct.rio_ch_chan_hdr* %14, %struct.rio_ch_chan_hdr** %5, align 8
  %15 = load i32, i32* @RX_CMD, align 4
  %16 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %5, align 8
  %20 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohs(i32 %21)
  %23 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %5, align 8
  %24 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = call i32 @riocm_debug(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i32 %26)
  %28 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %41 [
    i32 128, label %31
    i32 130, label %35
    i32 129, label %38
  ]

31:                                               ; preds = %12
  %32 = load %struct.cm_dev*, %struct.cm_dev** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @riocm_req_handler(%struct.cm_dev* %32, i8* %33)
  br label %43

35:                                               ; preds = %12
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @riocm_resp_handler(i8* %36)
  br label %43

38:                                               ; preds = %12
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @riocm_close_handler(i8* %39)
  br label %43

41:                                               ; preds = %12
  %42 = call i32 @riocm_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38, %35, %31
  br label %44

44:                                               ; preds = %43, %11
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @kfree(i8* %45)
  ret void
}

declare dso_local i32 @rio_mport_is_running(i32) #1

declare dso_local i32 @riocm_debug(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @riocm_req_handler(%struct.cm_dev*, i8*) #1

declare dso_local i32 @riocm_resp_handler(i8*) #1

declare dso_local i32 @riocm_close_handler(i8*) #1

declare dso_local i32 @riocm_error(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
