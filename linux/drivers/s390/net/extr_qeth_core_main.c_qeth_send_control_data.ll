; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_send_control_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_send_control_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_cmd_buffer = type { i64, i32, i32, i32, i32, i32, i32 (%struct.qeth_card.0*, %struct.qeth_cmd_buffer*)*, %struct.qeth_reply, %struct.qeth_channel* }
%struct.qeth_card.0 = type opaque
%struct.qeth_reply = type { i32 (%struct.qeth_card.1*, %struct.qeth_reply*, i64)*, i8* }
%struct.qeth_card.1 = type opaque
%struct.qeth_channel = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"sendctl\00", align 1
@ERESTARTSYS = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@QETH_DBF_CTRL_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"noirqpnd\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"qeth_send_control_data on device %x: ccw_device_start rc = %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" err%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, i8*)* @qeth_send_control_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_send_control_data(%struct.qeth_card* %0, %struct.qeth_cmd_buffer* %1, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca %struct.qeth_cmd_buffer*, align 8
  %8 = alloca i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.qeth_channel*, align 8
  %11 = alloca %struct.qeth_reply*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store %struct.qeth_cmd_buffer* %1, %struct.qeth_cmd_buffer** %7, align 8
  store i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %2, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %15 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %14, i32 0, i32 8
  %16 = load %struct.qeth_channel*, %struct.qeth_channel** %15, align 8
  store %struct.qeth_channel* %16, %struct.qeth_channel** %10, align 8
  %17 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %18 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %17, i32 0, i32 7
  store %struct.qeth_reply* %18, %struct.qeth_reply** %11, align 8
  %19 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %20 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %23 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %22, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = load i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %8, align 8
  %25 = bitcast i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %24 to i32 (%struct.qeth_card.1*, %struct.qeth_reply*, i64)*
  %26 = load %struct.qeth_reply*, %struct.qeth_reply** %11, align 8
  %27 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %26, i32 0, i32 0
  store i32 (%struct.qeth_card.1*, %struct.qeth_reply*, i64)* %25, i32 (%struct.qeth_card.1*, %struct.qeth_reply*, i64)** %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.qeth_reply*, %struct.qeth_reply** %11, align 8
  %30 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qeth_channel*, %struct.qeth_channel** %10, align 8
  %35 = call i32 @qeth_trylock_channel(%struct.qeth_channel* %34)
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @wait_event_interruptible_timeout(i32 %33, i32 %35, i64 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %4
  %41 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %42 = call i32 @qeth_put_cmd(%struct.qeth_cmd_buffer* %41)
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @ERESTARTSYS, align 8
  %45 = sub nsw i64 0, %44
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EINTR, align 4
  %49 = sub nsw i32 0, %48
  br label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @ETIME, align 4
  %52 = sub nsw i32 0, %51
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %49, %47 ], [ %52, %50 ]
  store i32 %54, i32* %5, align 4
  br label %178

55:                                               ; preds = %4
  %56 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %56, i32 0, i32 6
  %58 = load i32 (%struct.qeth_card.0*, %struct.qeth_cmd_buffer*)*, i32 (%struct.qeth_card.0*, %struct.qeth_cmd_buffer*)** %57, align 8
  %59 = icmp ne i32 (%struct.qeth_card.0*, %struct.qeth_cmd_buffer*)* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %62 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %61, i32 0, i32 6
  %63 = load i32 (%struct.qeth_card.0*, %struct.qeth_cmd_buffer*)*, i32 (%struct.qeth_card.0*, %struct.qeth_cmd_buffer*)** %62, align 8
  %64 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %65 = bitcast %struct.qeth_card* %64 to %struct.qeth_card.0*
  %66 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %67 = call i32 %63(%struct.qeth_card.0* %65, %struct.qeth_cmd_buffer* %66)
  br label %68

68:                                               ; preds = %60, %55
  %69 = load i32, i32* @CTRL, align 4
  %70 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %71 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %74 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @QETH_DBF_CTRL_LEN, align 4
  %77 = call i32 @min(i32 %75, i32 %76)
  %78 = call i32 @QETH_DBF_HEX(i32 %69, i32 2, i32 %72, i32 %77)
  %79 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %80 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %81 = call i32 @qeth_enqueue_cmd(%struct.qeth_card* %79, %struct.qeth_cmd_buffer* %80)
  %82 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %83 = call i32 @qeth_get_cmd(%struct.qeth_cmd_buffer* %82)
  %84 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %85 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %84, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.qeth_channel*, %struct.qeth_channel** %10, align 8
  %87 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32* @get_ccwdev_lock(i32 %88)
  %90 = call i32 @spin_lock_irq(i32* %89)
  %91 = load %struct.qeth_channel*, %struct.qeth_channel** %10, align 8
  %92 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %95 = call i32 @__ccw_from_cmd(%struct.qeth_cmd_buffer* %94)
  %96 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %97 = ptrtoint %struct.qeth_cmd_buffer* %96 to i32
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @ccw_device_start_timeout(i32 %93, i32 %95, i32 %97, i32 0, i32 0, i64 %98)
  store i32 %99, i32* %13, align 4
  %100 = load %struct.qeth_channel*, %struct.qeth_channel** %10, align 8
  %101 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32* @get_ccwdev_lock(i32 %102)
  %104 = call i32 @spin_unlock_irq(i32* %103)
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %68
  %108 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %109 = call i32 @CARD_DEVID(%struct.qeth_card* %108)
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %112, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %116 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %117 = call i32 @qeth_dequeue_cmd(%struct.qeth_card* %115, %struct.qeth_cmd_buffer* %116)
  %118 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %119 = call i32 @qeth_put_cmd(%struct.qeth_cmd_buffer* %118)
  %120 = load %struct.qeth_channel*, %struct.qeth_channel** %10, align 8
  %121 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %120, i32 0, i32 0
  %122 = call i32 @atomic_set(i32* %121, i32 0)
  %123 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %124 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %123, i32 0, i32 0
  %125 = call i32 @wake_up(i32* %124)
  br label %174

126:                                              ; preds = %68
  %127 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %128 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %127, i32 0, i32 3
  %129 = load i64, i64* %12, align 8
  %130 = call i64 @wait_for_completion_interruptible_timeout(i32* %128, i64 %129)
  store i64 %130, i64* %12, align 8
  %131 = load i64, i64* %12, align 8
  %132 = icmp sle i64 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %126
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* @ERESTARTSYS, align 8
  %136 = sub nsw i64 0, %135
  %137 = icmp eq i64 %134, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* @EINTR, align 4
  %140 = sub nsw i32 0, %139
  br label %144

141:                                              ; preds = %133
  %142 = load i32, i32* @ETIME, align 4
  %143 = sub nsw i32 0, %142
  br label %144

144:                                              ; preds = %141, %138
  %145 = phi i32 [ %140, %138 ], [ %143, %141 ]
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %144, %126
  %147 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %148 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %149 = call i32 @qeth_dequeue_cmd(%struct.qeth_card* %147, %struct.qeth_cmd_buffer* %148)
  %150 = load i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %8, align 8
  %151 = icmp ne i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %150, null
  br i1 %151, label %152, label %166

152:                                              ; preds = %146
  %153 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %154 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %153, i32 0, i32 2
  %155 = call i32 @spin_lock_irq(i32* %154)
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %161 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %158, %152
  %163 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %164 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %163, i32 0, i32 2
  %165 = call i32 @spin_unlock_irq(i32* %164)
  br label %166

166:                                              ; preds = %162, %146
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %171 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %169, %166
  br label %174

174:                                              ; preds = %173, %107
  %175 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %176 = call i32 @qeth_put_cmd(%struct.qeth_cmd_buffer* %175)
  %177 = load i32, i32* %13, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %174, %53
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @qeth_trylock_channel(%struct.qeth_channel*) #1

declare dso_local i32 @qeth_put_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @qeth_enqueue_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_get_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32* @get_ccwdev_lock(i32) #1

declare dso_local i32 @ccw_device_start_timeout(i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @__ccw_from_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @qeth_dequeue_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
