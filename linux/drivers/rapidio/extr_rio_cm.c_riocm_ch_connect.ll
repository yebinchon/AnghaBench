; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cm_peer = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.rio_channel = type { i32, i32, i32, i32, i32*, %struct.TYPE_7__*, %struct.cm_dev* }
%struct.rio_ch_chan_hdr = type { i8*, i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i8* }

@ENODEV = common dso_local global i32 0, align 4
@RIO_CM_IDLE = common dso_local global i32 0, align 4
@RIO_CM_CONNECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cmbox = common dso_local global i8* null, align 8
@RIO_CM_CHAN = common dso_local global i32 0, align 4
@CM_CONN_REQ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RIOCM_CONNECT_TO = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"wait on %d returns %ld\00", align 1
@ETIME = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@RIO_CM_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cm_dev*, %struct.cm_peer*, i32)* @riocm_ch_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riocm_ch_connect(i32 %0, %struct.cm_dev* %1, %struct.cm_peer* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cm_dev*, align 8
  %8 = alloca %struct.cm_peer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rio_channel*, align 8
  %11 = alloca %struct.rio_ch_chan_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.cm_dev* %1, %struct.cm_dev** %7, align 8
  store %struct.cm_peer* %2, %struct.cm_peer** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.rio_channel* null, %struct.rio_channel** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.rio_channel* @riocm_get_channel(i32 %14)
  store %struct.rio_channel* %15, %struct.rio_channel** %10, align 8
  %16 = load %struct.rio_channel*, %struct.rio_channel** %10, align 8
  %17 = icmp ne %struct.rio_channel* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %171

21:                                               ; preds = %4
  %22 = load %struct.rio_channel*, %struct.rio_channel** %10, align 8
  %23 = load i32, i32* @RIO_CM_IDLE, align 4
  %24 = load i32, i32* @RIO_CM_CONNECT, align 4
  %25 = call i32 @riocm_cmp_exch(%struct.rio_channel* %22, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  br label %167

30:                                               ; preds = %21
  %31 = load %struct.cm_dev*, %struct.cm_dev** %7, align 8
  %32 = load %struct.rio_channel*, %struct.rio_channel** %10, align 8
  %33 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %32, i32 0, i32 6
  store %struct.cm_dev* %31, %struct.cm_dev** %33, align 8
  %34 = load %struct.cm_peer*, %struct.cm_peer** %8, align 8
  %35 = getelementptr inbounds %struct.cm_peer, %struct.cm_peer* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load %struct.rio_channel*, %struct.rio_channel** %10, align 8
  %38 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %37, i32 0, i32 5
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  %39 = load %struct.rio_channel*, %struct.rio_channel** %10, align 8
  %40 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %39, i32 0, i32 4
  store i32* null, i32** %40, align 8
  %41 = load %struct.cm_dev*, %struct.cm_dev** %7, align 8
  %42 = getelementptr inbounds %struct.cm_dev, %struct.cm_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rio_channel*, %struct.rio_channel** %10, align 8
  %47 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.rio_channel*, %struct.rio_channel** %10, align 8
  %50 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.rio_ch_chan_hdr* @kzalloc(i32 64, i32 %51)
  store %struct.rio_ch_chan_hdr* %52, %struct.rio_ch_chan_hdr** %11, align 8
  %53 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %11, align 8
  %54 = icmp eq %struct.rio_ch_chan_hdr* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %30
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %167

58:                                               ; preds = %30
  %59 = load %struct.rio_channel*, %struct.rio_channel** %10, align 8
  %60 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @htonl(i32 %61)
  %63 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %11, align 8
  %64 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  store i8* %62, i8** %65, align 8
  %66 = load %struct.cm_peer*, %struct.cm_peer** %8, align 8
  %67 = getelementptr inbounds %struct.cm_peer, %struct.cm_peer* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @htonl(i32 %70)
  %72 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %11, align 8
  %73 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  store i8* %71, i8** %74, align 8
  %75 = load i8*, i8** @cmbox, align 8
  %76 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %11, align 8
  %77 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i8* %75, i8** %78, align 8
  %79 = load i8*, i8** @cmbox, align 8
  %80 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %11, align 8
  %81 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  %83 = load i32, i32* @RIO_CM_CHAN, align 4
  %84 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %11, align 8
  %85 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* @CM_CONN_REQ, align 4
  %88 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %11, align 8
  %89 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i8* @htons(i32 %90)
  %92 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %11, align 8
  %93 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i8* @htons(i32 %94)
  %96 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %11, align 8
  %97 = getelementptr inbounds %struct.rio_ch_chan_hdr, %struct.rio_ch_chan_hdr* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.cm_dev*, %struct.cm_dev** %7, align 8
  %99 = load %struct.cm_peer*, %struct.cm_peer** %8, align 8
  %100 = getelementptr inbounds %struct.cm_peer, %struct.cm_peer* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %11, align 8
  %103 = call i32 @riocm_post_send(%struct.cm_dev* %98, %struct.TYPE_7__* %101, %struct.rio_ch_chan_hdr* %102, i32 64)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @EBUSY, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %58
  %109 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %11, align 8
  %110 = call i32 @kfree(%struct.rio_ch_chan_hdr* %109)
  br label %124

111:                                              ; preds = %58
  %112 = load %struct.cm_dev*, %struct.cm_dev** %7, align 8
  %113 = load %struct.cm_peer*, %struct.cm_peer** %8, align 8
  %114 = getelementptr inbounds %struct.cm_peer, %struct.cm_peer* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %11, align 8
  %117 = call i32 @riocm_queue_req(%struct.cm_dev* %112, %struct.TYPE_7__* %115, %struct.rio_ch_chan_hdr* %116, i32 64)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = load %struct.rio_ch_chan_hdr*, %struct.rio_ch_chan_hdr** %11, align 8
  %122 = call i32 @kfree(%struct.rio_ch_chan_hdr* %121)
  br label %123

123:                                              ; preds = %120, %111
  br label %124

124:                                              ; preds = %123, %108
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load %struct.rio_channel*, %struct.rio_channel** %10, align 8
  %129 = load i32, i32* @RIO_CM_CONNECT, align 4
  %130 = load i32, i32* @RIO_CM_IDLE, align 4
  %131 = call i32 @riocm_cmp_exch(%struct.rio_channel* %128, i32 %129, i32 %130)
  br label %167

132:                                              ; preds = %124
  %133 = load %struct.rio_channel*, %struct.rio_channel** %10, align 8
  %134 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %133, i32 0, i32 1
  %135 = load i32, i32* @RIOCM_CONNECT_TO, align 4
  %136 = load i32, i32* @HZ, align 4
  %137 = mul nsw i32 %135, %136
  %138 = call i64 @wait_for_completion_interruptible_timeout(i32* %134, i32 %137)
  store i64 %138, i64* %13, align 8
  %139 = load i32, i32* @WAIT, align 4
  %140 = load %struct.rio_channel*, %struct.rio_channel** %10, align 8
  %141 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i64, i64* %13, align 8
  %144 = call i32 @riocm_debug(i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %142, i64 %143)
  %145 = load i64, i64* %13, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %132
  %148 = load i32, i32* @ETIME, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %12, align 4
  br label %166

150:                                              ; preds = %132
  %151 = load i64, i64* %13, align 8
  %152 = load i64, i64* @ERESTARTSYS, align 8
  %153 = sub nsw i64 0, %152
  %154 = icmp eq i64 %151, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* @EINTR, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %12, align 4
  br label %165

158:                                              ; preds = %150
  %159 = load %struct.rio_channel*, %struct.rio_channel** %10, align 8
  %160 = load i32, i32* @RIO_CM_CONNECTED, align 4
  %161 = call i64 @riocm_cmp(%struct.rio_channel* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 0, i32 -1
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %158, %155
  br label %166

166:                                              ; preds = %165, %147
  br label %167

167:                                              ; preds = %166, %127, %55, %27
  %168 = load %struct.rio_channel*, %struct.rio_channel** %10, align 8
  %169 = call i32 @riocm_put_channel(%struct.rio_channel* %168)
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %167, %18
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local %struct.rio_channel* @riocm_get_channel(i32) #1

declare dso_local i32 @riocm_cmp_exch(%struct.rio_channel*, i32, i32) #1

declare dso_local %struct.rio_ch_chan_hdr* @kzalloc(i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @riocm_post_send(%struct.cm_dev*, %struct.TYPE_7__*, %struct.rio_ch_chan_hdr*, i32) #1

declare dso_local i32 @kfree(%struct.rio_ch_chan_hdr*) #1

declare dso_local i32 @riocm_queue_req(%struct.cm_dev*, %struct.TYPE_7__*, %struct.rio_ch_chan_hdr*, i32) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @riocm_debug(i32, i8*, i32, i64) #1

declare dso_local i64 @riocm_cmp(%struct.rio_channel*, i32) #1

declare dso_local i32 @riocm_put_channel(%struct.rio_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
