; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_pre_handle_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_pre_handle_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vc_data = type { i32 }

@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@cursor_track = common dso_local global i64 0, align 8
@read_all_mode = common dso_local global i64 0, align 8
@spk_parked = common dso_local global i32 0, align 4
@synth = common dso_local global i32 0, align 4
@spk_shut_up = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4
@cursor_timer = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i64, i8)* @pre_handle_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pre_handle_cursor(%struct.vc_data* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %9)
  %11 = load i64, i64* @cursor_track, align 8
  %12 = load i64, i64* @read_all_mode, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = load i32, i32* @spk_parked, align 4
  %16 = and i32 %15, 254
  store i32 %16, i32* @spk_parked, align 4
  %17 = load i32, i32* @synth, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i8, i8* %7, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @spk_shut_up, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %19, %14
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %27)
  %29 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %29, i32* %4, align 4
  br label %46

30:                                               ; preds = %23
  %31 = call i32 @del_timer(i32* @cursor_timer)
  %32 = load i32, i32* @spk_shut_up, align 4
  %33 = and i32 %32, 254
  store i32 %33, i32* @spk_shut_up, align 4
  %34 = call i32 (...) @spk_do_flush()
  %35 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i32 @start_read_all_timer(%struct.vc_data* %35, i64 %37)
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %39)
  %41 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %3
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %43)
  %45 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %30, %26
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spk_do_flush(...) #1

declare dso_local i32 @start_read_all_timer(%struct.vc_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
