; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_send_offchannel_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_send_offchannel_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { %struct.device }
%struct.device = type { i32 }
%struct.virtio_rpmsg_channel = type { %struct.virtproc_info* }
%struct.virtproc_info = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.rpmsg_hdr = type { i32, i64, i64, i8*, i8*, i32 }

@RPMSG_ADDR_ANY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"invalid addr (src 0x%x, dst 0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"message is too big (%d)\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"timeout waiting for a tx buffer\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"TX From 0x%x, To 0x%x, Len %d, Flags %d, Reserved %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"virtqueue_add_outbuf failed: %d\0A\00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*, i8*, i8*, i8*, i32, i32)* @rpmsg_send_offchannel_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmsg_send_offchannel_raw(%struct.rpmsg_device* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpmsg_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.virtio_rpmsg_channel*, align 8
  %15 = alloca %struct.virtproc_info*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.scatterlist, align 4
  %18 = alloca %struct.rpmsg_hdr*, align 8
  %19 = alloca i32, align 4
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.rpmsg_device*, %struct.rpmsg_device** %8, align 8
  %21 = call %struct.virtio_rpmsg_channel* @to_virtio_rpmsg_channel(%struct.rpmsg_device* %20)
  store %struct.virtio_rpmsg_channel* %21, %struct.virtio_rpmsg_channel** %14, align 8
  %22 = load %struct.virtio_rpmsg_channel*, %struct.virtio_rpmsg_channel** %14, align 8
  %23 = getelementptr inbounds %struct.virtio_rpmsg_channel, %struct.virtio_rpmsg_channel* %22, i32 0, i32 0
  %24 = load %struct.virtproc_info*, %struct.virtproc_info** %23, align 8
  store %struct.virtproc_info* %24, %struct.virtproc_info** %15, align 8
  %25 = load %struct.rpmsg_device*, %struct.rpmsg_device** %8, align 8
  %26 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %25, i32 0, i32 0
  store %struct.device* %26, %struct.device** %16, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** @RPMSG_ADDR_ANY, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %6
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** @RPMSG_ADDR_ANY, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30, %6
  %35 = load %struct.device*, %struct.device** %16, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %160

41:                                               ; preds = %30
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.virtproc_info*, %struct.virtproc_info** %15, align 8
  %45 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 48
  %49 = icmp ugt i64 %43, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.device*, %struct.device** %16, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EMSGSIZE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %160

56:                                               ; preds = %41
  %57 = load %struct.virtproc_info*, %struct.virtproc_info** %15, align 8
  %58 = call %struct.rpmsg_hdr* @get_a_tx_buf(%struct.virtproc_info* %57)
  store %struct.rpmsg_hdr* %58, %struct.rpmsg_hdr** %18, align 8
  %59 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %60 = icmp ne %struct.rpmsg_hdr* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %160

67:                                               ; preds = %61, %56
  br label %68

68:                                               ; preds = %91, %67
  %69 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %70 = icmp ne %struct.rpmsg_hdr* %69, null
  %71 = xor i1 %70, true
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load %struct.virtproc_info*, %struct.virtproc_info** %15, align 8
  %74 = call i32 @rpmsg_upref_sleepers(%struct.virtproc_info* %73)
  %75 = load %struct.virtproc_info*, %struct.virtproc_info** %15, align 8
  %76 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.virtproc_info*, %struct.virtproc_info** %15, align 8
  %79 = call %struct.rpmsg_hdr* @get_a_tx_buf(%struct.virtproc_info* %78)
  store %struct.rpmsg_hdr* %79, %struct.rpmsg_hdr** %18, align 8
  %80 = call i32 @msecs_to_jiffies(i32 15000)
  %81 = call i32 @wait_event_interruptible_timeout(i32 %77, %struct.rpmsg_hdr* %79, i32 %80)
  store i32 %81, i32* %19, align 4
  %82 = load %struct.virtproc_info*, %struct.virtproc_info** %15, align 8
  %83 = call i32 @rpmsg_downref_sleepers(%struct.virtproc_info* %82)
  %84 = load i32, i32* %19, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %72
  %87 = load %struct.device*, %struct.device** %16, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @ERESTARTSYS, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %160

91:                                               ; preds = %72
  br label %68

92:                                               ; preds = %68
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %95 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %97 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %100 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %103 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %105 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %107 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @memcpy(i32 %108, i8* %109, i32 %110)
  %112 = load %struct.device*, %struct.device** %16, align 8
  %113 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %114 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %117 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %120 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %123 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %126 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @dev_dbg(%struct.device* %112, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %115, i8* %118, i32 %121, i64 %124, i64 %127)
  %129 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = add i64 48, %131
  %133 = trunc i64 %132 to i32
  %134 = call i32 @rpmsg_sg_init(%struct.scatterlist* %17, %struct.rpmsg_hdr* %129, i32 %133)
  %135 = load %struct.virtproc_info*, %struct.virtproc_info** %15, align 8
  %136 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %135, i32 0, i32 1
  %137 = call i32 @mutex_lock(i32* %136)
  %138 = load %struct.virtproc_info*, %struct.virtproc_info** %15, align 8
  %139 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %18, align 8
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = call i32 @virtqueue_add_outbuf(i32 %140, %struct.scatterlist* %17, i32 1, %struct.rpmsg_hdr* %141, i32 %142)
  store i32 %143, i32* %19, align 4
  %144 = load i32, i32* %19, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %92
  %147 = load %struct.device*, %struct.device** %16, align 8
  %148 = load i32, i32* %19, align 4
  %149 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  br label %155

150:                                              ; preds = %92
  %151 = load %struct.virtproc_info*, %struct.virtproc_info** %15, align 8
  %152 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @virtqueue_kick(i32 %153)
  br label %155

155:                                              ; preds = %150, %146
  %156 = load %struct.virtproc_info*, %struct.virtproc_info** %15, align 8
  %157 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %156, i32 0, i32 1
  %158 = call i32 @mutex_unlock(i32* %157)
  %159 = load i32, i32* %19, align 4
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %155, %86, %64, %50, %34
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local %struct.virtio_rpmsg_channel* @to_virtio_rpmsg_channel(%struct.rpmsg_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.rpmsg_hdr* @get_a_tx_buf(%struct.virtproc_info*) #1

declare dso_local i32 @rpmsg_upref_sleepers(%struct.virtproc_info*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, %struct.rpmsg_hdr*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @rpmsg_downref_sleepers(%struct.virtproc_info*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i8*, i32, i64, i64) #1

declare dso_local i32 @rpmsg_sg_init(%struct.scatterlist*, %struct.rpmsg_hdr*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @virtqueue_add_outbuf(i32, %struct.scatterlist*, i32, %struct.rpmsg_hdr*, i32) #1

declare dso_local i32 @virtqueue_kick(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
