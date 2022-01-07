; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_req_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_req_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_dev = type { i32 }
%struct.rio_channel = type { i64, i32, i32, i32 }
%struct.conn_req = type { i32, %struct.cm_dev*, i8*, i32 }
%struct.rio_ch_chan_hdr = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@RIO_CM_LISTEN = common dso_local global i64 0, align 8
@RX_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"channel %d is not in listen state\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_dev*, i8*)* @riocm_req_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riocm_req_handler(%struct.cm_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cm_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rio_channel*, align 8
  %7 = alloca %struct.conn_req*, align 8
  %8 = alloca %struct.rio_ch_chan_hdr*, align 8
  %9 = alloca i8*, align 8
  store %struct.cm_dev* %0, %struct.cm_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.rio_ch_chan_hdr*
  store %struct.rio_ch_chan_hdr* %11, %struct.rio_ch_chan_hdr** %8, align 8
  %12 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %8, align 8
  %13 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @ntohs(i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call %struct.rio_channel* @riocm_get_channel(i8* %16)
  store %struct.rio_channel* %17, %struct.rio_channel** %6, align 8
  %18 = load %struct.rio_channel*, %struct.rio_channel** %6, align 8
  %19 = icmp ne %struct.rio_channel* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %80

23:                                               ; preds = %2
  %24 = load %struct.rio_channel*, %struct.rio_channel** %6, align 8
  %25 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RIO_CM_LISTEN, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32, i32* @RX_CMD, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @riocm_debug(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.rio_channel*, %struct.rio_channel** %6, align 8
  %34 = call i32 @riocm_put_channel(%struct.rio_channel* %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %80

37:                                               ; preds = %23
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.conn_req* @kzalloc(i32 32, i32 %38)
  store %struct.conn_req* %39, %struct.conn_req** %7, align 8
  %40 = load %struct.conn_req*, %struct.conn_req** %7, align 8
  %41 = icmp ne %struct.conn_req* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.rio_channel*, %struct.rio_channel** %6, align 8
  %44 = call i32 @riocm_put_channel(%struct.rio_channel* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %80

47:                                               ; preds = %37
  %48 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %8, align 8
  %49 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntohl(i32 %51)
  %53 = load %struct.conn_req*, %struct.conn_req** %7, align 8
  %54 = getelementptr inbounds %struct.conn_req, %struct.conn_req* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %8, align 8
  %56 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @ntohs(i32 %57)
  %59 = load %struct.conn_req*, %struct.conn_req** %7, align 8
  %60 = getelementptr inbounds %struct.conn_req, %struct.conn_req* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.cm_dev*, %struct.cm_dev** %4, align 8
  %62 = load %struct.conn_req*, %struct.conn_req** %7, align 8
  %63 = getelementptr inbounds %struct.conn_req, %struct.conn_req* %62, i32 0, i32 1
  store %struct.cm_dev* %61, %struct.cm_dev** %63, align 8
  %64 = load %struct.rio_channel*, %struct.rio_channel** %6, align 8
  %65 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %64, i32 0, i32 2
  %66 = call i32 @spin_lock_bh(i32* %65)
  %67 = load %struct.conn_req*, %struct.conn_req** %7, align 8
  %68 = getelementptr inbounds %struct.conn_req, %struct.conn_req* %67, i32 0, i32 0
  %69 = load %struct.rio_channel*, %struct.rio_channel** %6, align 8
  %70 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %69, i32 0, i32 3
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  %72 = load %struct.rio_channel*, %struct.rio_channel** %6, align 8
  %73 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %72, i32 0, i32 2
  %74 = call i32 @spin_unlock_bh(i32* %73)
  %75 = load %struct.rio_channel*, %struct.rio_channel** %6, align 8
  %76 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %75, i32 0, i32 1
  %77 = call i32 @complete(i32* %76)
  %78 = load %struct.rio_channel*, %struct.rio_channel** %6, align 8
  %79 = call i32 @riocm_put_channel(%struct.rio_channel* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %47, %42, %29, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i8* @ntohs(i32) #1

declare dso_local %struct.rio_channel* @riocm_get_channel(i8*) #1

declare dso_local i32 @riocm_debug(i32, i8*, i8*) #1

declare dso_local i32 @riocm_put_channel(%struct.rio_channel*) #1

declare dso_local %struct.conn_req* @kzalloc(i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
