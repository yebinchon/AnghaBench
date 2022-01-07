; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_con_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_con_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vc_data = type { i64, i64 }

@speakup_console = common dso_local global i32* null, align 8
@spk_parked = common dso_local global i64 0, align 8
@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KD_GRAPHICS = common dso_local global i64 0, align 8
@spk_paused = common dso_local global i32 0, align 4
@spk_str_pause = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @speakup_con_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speakup_con_update(%struct.vc_data* %0) #0 {
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
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i64, i64* @spk_parked, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %1
  br label %42

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_trylock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %42

20:                                               ; preds = %15
  %21 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %22 = call i32 @speakup_date(%struct.vc_data* %21)
  %23 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @KD_GRAPHICS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  %29 = load i32, i32* @spk_paused, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load i64*, i64** @spk_str_pause, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64*, i64** @spk_str_pause, align 8
  %38 = call i32 @synth_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %37)
  store i32 1, i32* @spk_paused, align 4
  br label %39

39:                                               ; preds = %36, %31, %28, %20
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %40)
  br label %42

42:                                               ; preds = %39, %19, %14
  ret void
}

declare dso_local i32 @spin_trylock_irqsave(i32*, i64) #1

declare dso_local i32 @speakup_date(%struct.vc_data*) #1

declare dso_local i32 @synth_printf(i8*, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
