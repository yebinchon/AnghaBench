; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.rio_channel = type { i64, i64, i32, i32, i32, i32 }
%struct.rio_ch_chan_hdr = type { i8*, i8*, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8* }

@RIO_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s(%d) ch_%d not found\00", align 1
@current = common dso_local global %struct.TYPE_5__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@RIO_CM_CONNECTED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@cmbox = common dso_local global i8* null, align 8
@RIO_CM_CHAN = common dso_local global i32 0, align 4
@CM_DATA_MSG = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ch %d send_err=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @riocm_ch_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riocm_ch_send(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rio_channel*, align 8
  %9 = alloca %struct.rio_ch_chan_hdr*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @RIO_MAX_MSG_SIZE, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %16, %13, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %121

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = call %struct.rio_channel* @riocm_get_channel(i64 %27)
  store %struct.rio_channel* %28, %struct.rio_channel** %8, align 8
  %29 = load %struct.rio_channel*, %struct.rio_channel** %8, align 8
  %30 = icmp ne %struct.rio_channel* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %36 = call i32 @task_pid_nr(%struct.TYPE_5__* %35)
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @riocm_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36, i64 %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %121

41:                                               ; preds = %26
  %42 = load %struct.rio_channel*, %struct.rio_channel** %8, align 8
  %43 = load i32, i32* @RIO_CM_CONNECTED, align 4
  %44 = call i32 @riocm_cmp(%struct.rio_channel* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %117

49:                                               ; preds = %41
  %50 = load i8*, i8** %6, align 8
  %51 = bitcast i8* %50 to %struct.rio_ch_chan_hdr*
  store %struct.rio_ch_chan_hdr* %51, %struct.rio_ch_chan_hdr** %9, align 8
  %52 = load %struct.rio_channel*, %struct.rio_channel** %8, align 8
  %53 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @htonl(i32 %54)
  %56 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %9, align 8
  %57 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  store i8* %55, i8** %58, align 8
  %59 = load %struct.rio_channel*, %struct.rio_channel** %8, align 8
  %60 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @htonl(i32 %61)
  %63 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %9, align 8
  %64 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  store i8* %62, i8** %65, align 8
  %66 = load i8*, i8** @cmbox, align 8
  %67 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %9, align 8
  %68 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i8* %66, i8** %69, align 8
  %70 = load i8*, i8** @cmbox, align 8
  %71 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %9, align 8
  %72 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load i32, i32* @RIO_CM_CHAN, align 4
  %75 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %9, align 8
  %76 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* @CM_DATA_MSG, align 4
  %79 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %9, align 8
  %80 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.rio_channel*, %struct.rio_channel** %8, align 8
  %82 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @htons(i64 %83)
  %85 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %9, align 8
  %86 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.rio_channel*, %struct.rio_channel** %8, align 8
  %88 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @htons(i64 %89)
  %91 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %9, align 8
  %92 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = call i8* @htons(i64 %94)
  %96 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %9, align 8
  %97 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.rio_channel*, %struct.rio_channel** %8, align 8
  %99 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rio_channel*, %struct.rio_channel** %8, align 8
  %102 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @riocm_post_send(i32 %100, i32 %103, i8* %104, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %49
  %110 = load i32, i32* @TX, align 4
  %111 = load %struct.rio_channel*, %struct.rio_channel** %8, align 8
  %112 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @riocm_debug(i32 %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %49
  br label %117

117:                                              ; preds = %116, %46
  %118 = load %struct.rio_channel*, %struct.rio_channel** %8, align 8
  %119 = call i32 @riocm_put_channel(%struct.rio_channel* %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %117, %31, %23
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.rio_channel* @riocm_get_channel(i64) #1

declare dso_local i32 @riocm_error(i8*, i32, i32, i64) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_5__*) #1

declare dso_local i32 @riocm_cmp(%struct.rio_channel*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @riocm_post_send(i32, i32, i8*, i32) #1

declare dso_local i32 @riocm_debug(i32, i8*, i64, i32) #1

declare dso_local i32 @riocm_put_channel(%struct.rio_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
