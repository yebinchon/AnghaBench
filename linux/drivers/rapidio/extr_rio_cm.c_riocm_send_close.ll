; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_send_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_send_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_channel = type { i32, i32, i32, i32, i32, i32 }
%struct.rio_ch_chan_hdr = type { i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cmbox = common dso_local global i8* null, align 8
@RIO_CM_CHAN = common dso_local global i32 0, align 4
@CM_CONN_CLOSE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ch(%d) send CLOSE failed (ret=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_channel*)* @riocm_send_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riocm_send_close(%struct.rio_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rio_channel*, align 8
  %4 = alloca %struct.rio_ch_chan_hdr*, align 8
  %5 = alloca i32, align 4
  store %struct.rio_channel* %0, %struct.rio_channel** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.rio_ch_chan_hdr* @kzalloc(i32 64, i32 %6)
  store %struct.rio_ch_chan_hdr* %7, %struct.rio_ch_chan_hdr** %4, align 8
  %8 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %4, align 8
  %9 = icmp eq %struct.rio_ch_chan_hdr* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %91

13:                                               ; preds = %1
  %14 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %15 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @htonl(i32 %16)
  %18 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i8* %17, i8** %20, align 8
  %21 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %22 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @htonl(i32 %23)
  %25 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %4, align 8
  %26 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i8* %24, i8** %27, align 8
  %28 = load i8*, i8** @cmbox, align 8
  %29 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %4, align 8
  %30 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** @cmbox, align 8
  %33 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %4, align 8
  %34 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @RIO_CM_CHAN, align 4
  %37 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %4, align 8
  %38 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @CM_CONN_CLOSE, align 4
  %41 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %4, align 8
  %42 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %44 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @htons(i32 %45)
  %47 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %4, align 8
  %48 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %50 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @htons(i32 %51)
  %53 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %4, align 8
  %54 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %56 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %59 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %4, align 8
  %62 = call i32 @riocm_post_send(i32 %57, i32 %60, %struct.rio_ch_chan_hdr* %61, i32 64)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %13
  %68 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %69 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %72 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %4, align 8
  %75 = call i32 @riocm_queue_req(i32 %70, i32 %73, %struct.rio_ch_chan_hdr* %74, i32 64)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %91

78:                                               ; preds = %67, %13
  %79 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %4, align 8
  %80 = call i32 @kfree(%struct.rio_ch_chan_hdr* %79)
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %85 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @riocm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %77, %10
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.rio_ch_chan_hdr* @kzalloc(i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @riocm_post_send(i32, i32, %struct.rio_ch_chan_hdr*, i32) #1

declare dso_local i32 @riocm_queue_req(i32, i32, %struct.rio_ch_chan_hdr*, i32) #1

declare dso_local i32 @kfree(%struct.rio_ch_chan_hdr*) #1

declare dso_local i32 @riocm_error(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
