; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_rio_rx_data_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_rio_rx_data_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_dev = type { i32 }
%struct.rio_ch_chan_hdr = type { i32 }
%struct.rio_channel = type { i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i8** }

@RX_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"for ch=%d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RIO_CM_CONNECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"ch=%d is in wrong state=%d\00", align 1
@EIO = common dso_local global i32 0, align 4
@RIOCM_RX_RING_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"ch=%d is full\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_dev*, i8*)* @rio_rx_data_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_rx_data_handler(%struct.cm_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cm_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rio_ch_chan_hdr*, align 8
  %7 = alloca %struct.rio_channel*, align 8
  store %struct.cm_dev* %0, %struct.cm_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.rio_ch_chan_hdr*
  store %struct.rio_ch_chan_hdr* %9, %struct.rio_ch_chan_hdr** %6, align 8
  %10 = load i32, i32* @RX_DATA, align 4
  %11 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %6, align 8
  %12 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ntohs(i32 %13)
  %15 = call i32 (i32, i8*, i32, ...) @riocm_debug(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %6, align 8
  %17 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ntohs(i32 %18)
  %20 = call %struct.rio_channel* @riocm_get_channel(i32 %19)
  store %struct.rio_channel* %20, %struct.rio_channel** %7, align 8
  %21 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %22 = icmp ne %struct.rio_channel* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @kfree(i8* %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %112

28:                                               ; preds = %2
  %29 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %30 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %33 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RIO_CM_CONNECTED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %28
  %38 = load i32, i32* @RX_DATA, align 4
  %39 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %40 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %43 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32, i8*, i32, ...) @riocm_debug(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %41, i64 %44)
  %46 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %47 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @kfree(i8* %49)
  %51 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %52 = call i32 @riocm_put_channel(%struct.rio_channel* %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %112

55:                                               ; preds = %28
  %56 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %57 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @RIOCM_RX_RING_SIZE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %55
  %63 = load i32, i32* @RX_DATA, align 4
  %64 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %65 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, i32, ...) @riocm_debug(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %69 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @kfree(i8* %71)
  %73 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %74 = call i32 @riocm_put_channel(%struct.rio_channel* %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %112

77:                                               ; preds = %55
  %78 = load i8*, i8** %5, align 8
  %79 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %80 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i8**, i8*** %81, align 8
  %83 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %84 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i8*, i8** %82, i64 %86
  store i8* %78, i8** %87, align 8
  %88 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %89 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %94 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load i64, i64* @RIOCM_RX_RING_SIZE, align 8
  %99 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %100 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = urem i64 %102, %98
  store i64 %103, i64* %101, align 8
  %104 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %105 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %104, i32 0, i32 2
  %106 = call i32 @complete(i32* %105)
  %107 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %108 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %107, i32 0, i32 1
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %111 = call i32 @riocm_put_channel(%struct.rio_channel* %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %77, %62, %37, %23
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @riocm_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.rio_channel* @riocm_get_channel(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @riocm_put_channel(%struct.rio_channel*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
