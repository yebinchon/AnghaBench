; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_srp_snd_msg_failed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_srp_snd_msg_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@H_DROPPED = common dso_local global i64 0, align 8
@H_CLOSED = common dso_local global i64 0, align 8
@CLIENT_FAILED = common dso_local global i32 0, align 4
@RESPONSE_Q_DOWN = common dso_local global i32 0, align 4
@ERR_DISCONNECT = common dso_local global i32 0, align 4
@ERR_DISCONNECT_RECONNECT = common dso_local global i32 0, align 4
@ERR_DISCONNECTED = common dso_local global i32 0, align 4
@UNDEFINED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"snd_msg_failed: setting RESPONSE_Q_DOWN, state 0x%hx, flags 0x%x, rc %ld\0A\00", align 1
@MAX_TIMER_POPS = common dso_local global i64 0, align 8
@SRP_PROCESSING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"snd_msg_failed: response queue full, flags 0x%x, timer started %d, pops %d\0A\00", align 1
@WAIT_NANO_SECONDS = common dso_local global i32 0, align 4
@WAIT_SECONDS = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"client crq full too long\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_info*, i64)* @srp_snd_msg_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_snd_msg_failed(%struct.scsi_info* %0, i64 %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @H_DROPPED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %62

9:                                                ; preds = %2
  %10 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %11 = call i32 @ibmvscsis_free_cmd_qs(%struct.scsi_info* %10)
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @H_CLOSED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load i32, i32* @CLIENT_FAILED, align 4
  %17 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %15, %9
  %22 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %30 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ERR_DISCONNECT, align 4
  %38 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ERR_DISCONNECTED, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @UNDEFINED, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %36, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %28
  %47 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %48 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %47, i32 0, i32 2
  %49 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i64 %55)
  br label %57

57:                                               ; preds = %46, %28
  %58 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %59 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %60 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %58, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %57, %21
  br label %147

62:                                               ; preds = %2
  %63 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MAX_TIMER_POPS, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %71 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @SRP_PROCESSING, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %119

76:                                               ; preds = %69, %62
  %77 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %78 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %77, i32 0, i32 2
  %79 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %80 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %83 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %87 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @dev_dbg(i32* %78, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %85, i64 %89)
  %91 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %92 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %118, label %96

96:                                               ; preds = %76
  %97 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %98 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MAX_TIMER_POPS, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @WAIT_NANO_SECONDS, align 4
  store i32 %104, i32* %5, align 4
  br label %108

105:                                              ; preds = %96
  %106 = load i32, i32* @WAIT_SECONDS, align 4
  %107 = call i32 @ktime_set(i32 %106, i32 0)
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %105, %103
  %109 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %110 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i32 1, i32* %111, align 8
  %112 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %113 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %117 = call i32 @hrtimer_start(i32* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %108, %76
  br label %147

119:                                              ; preds = %69
  %120 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %121 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %122 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %126 = call i32 @ibmvscsis_free_cmd_qs(%struct.scsi_info* %125)
  %127 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %128 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ERR_DISCONNECT, align 4
  %131 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @ERR_DISCONNECTED, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @UNDEFINED, align 4
  %136 = or i32 %134, %135
  %137 = and i32 %129, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %119
  %140 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %141 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %140, i32 0, i32 2
  %142 = call i32 (i32*, i8*, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %143 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %144 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %145 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %143, i32 %144, i32 0)
  br label %146

146:                                              ; preds = %139, %119
  br label %147

147:                                              ; preds = %61, %146, %118
  ret void
}

declare dso_local i32 @ibmvscsis_free_cmd_qs(%struct.scsi_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
