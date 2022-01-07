; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_bs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_bs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vc_data = type { i64 }

@speakup_console = common dso_local global i32* null, align 8
@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@spk_parked = common dso_local global i32 0, align 4
@spk_shut_up = common dso_local global i64 0, align 8
@synth = common dso_local global i32 0, align 4
@fg_console = common dso_local global i64 0, align 8
@spk_keydown = common dso_local global i64 0, align 8
@is_cursor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @speakup_bs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speakup_bs(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i64, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %4 = load i32*, i32** @speakup_console, align 8
  %5 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %6 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %51

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_trylock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %51

17:                                               ; preds = %12
  %18 = load i32, i32* @spk_parked, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %22 = call i32 @speakup_date(%struct.vc_data* %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i64, i64* @spk_shut_up, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @synth, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %30)
  br label %51

32:                                               ; preds = %26
  %33 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @fg_console, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i64, i64* @spk_keydown, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  store i64 0, i64* @spk_keydown, align 8
  %42 = load i32, i32* @is_cursor, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %46 = call i32 @say_char(%struct.vc_data* %45)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %38, %32
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %49)
  br label %51

51:                                               ; preds = %48, %29, %16, %11
  ret void
}

declare dso_local i32 @spin_trylock_irqsave(i32*, i64) #1

declare dso_local i32 @speakup_date(%struct.vc_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @say_char(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
