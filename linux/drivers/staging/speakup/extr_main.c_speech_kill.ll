; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speech_kill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speech_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8 (%struct.TYPE_3__*)* }
%struct.vc_data = type { i32 }

@synth = common dso_local global %struct.TYPE_3__* null, align 8
@spk_killed = common dso_local global i64 0, align 8
@spk_shut_up = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_IAM_ALIVE = common dso_local global i32 0, align 4
@MSG_YOU_KILLED_SPEAKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @speech_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speech_kill(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i8, align 1
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @synth, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i8 (%struct.TYPE_3__*)*, i8 (%struct.TYPE_3__*)** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @synth, align 8
  %8 = call signext i8 %6(%struct.TYPE_3__* %7)
  store i8 %8, i8* %3, align 1
  %9 = load i8, i8* %3, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %32

13:                                               ; preds = %1
  %14 = load i8, i8* %3, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* @spk_killed, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17, %13
  %21 = load i32, i32* @spk_shut_up, align 4
  %22 = and i32 %21, -65
  store i32 %22, i32* @spk_shut_up, align 4
  %23 = load i32, i32* @MSG_IAM_ALIVE, align 4
  %24 = call i32 @spk_msg_get(i32 %23)
  %25 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %32

26:                                               ; preds = %17
  %27 = load i32, i32* @MSG_YOU_KILLED_SPEAKUP, align 4
  %28 = call i32 @spk_msg_get(i32 %27)
  %29 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @spk_shut_up, align 4
  %31 = or i32 %30, 64
  store i32 %31, i32* @spk_shut_up, align 4
  br label %32

32:                                               ; preds = %12, %26, %20
  ret void
}

declare dso_local i32 @synth_printf(i8*, i32) #1

declare dso_local i32 @spk_msg_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
