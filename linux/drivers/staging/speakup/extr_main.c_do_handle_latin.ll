; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_do_handle_latin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_do_handle_latin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vc_data = type { i32 }

@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@spk_lastkey = common dso_local global i64 0, align 8
@spk_keydown = common dso_local global i64 0, align 8
@synth = common dso_local global i32 0, align 4
@spk_killed = common dso_local global i64 0, align 8
@spk_shut_up = common dso_local global i32 0, align 4
@spk_parked = common dso_local global i32 0, align 4
@spk_key_echo = common dso_local global i32 0, align 4
@MINECHOCHAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i64, i8)* @do_handle_latin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_handle_latin(%struct.vc_data* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %8)
  %10 = load i8, i8* %6, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  store i64 0, i64* @spk_lastkey, align 8
  store i64 0, i64* @spk_keydown, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %13)
  br label %44

15:                                               ; preds = %3
  %16 = load i32, i32* @synth, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* @spk_killed, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %15
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %22)
  br label %44

24:                                               ; preds = %18
  %25 = load i32, i32* @spk_shut_up, align 4
  %26 = and i32 %25, 254
  store i32 %26, i32* @spk_shut_up, align 4
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* @spk_lastkey, align 8
  %28 = load i64, i64* @spk_keydown, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* @spk_keydown, align 8
  %30 = load i32, i32* @spk_parked, align 4
  %31 = and i32 %30, 254
  store i32 %31, i32* @spk_parked, align 4
  %32 = load i32, i32* @spk_key_echo, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @MINECHOCHAR, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @speak_char(i64 %39)
  br label %41

41:                                               ; preds = %38, %34, %24
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %42)
  br label %44

44:                                               ; preds = %41, %21, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @speak_char(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
