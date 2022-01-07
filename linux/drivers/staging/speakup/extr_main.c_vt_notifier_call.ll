; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_vt_notifier_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_vt_notifier_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.vt_notifier_param = type { i8, %struct.vc_data* }
%struct.vc_data = type { i32 }

@KD_TEXT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @vt_notifier_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_notifier_call(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vt_notifier_param*, align 8
  %8 = alloca %struct.vc_data*, align 8
  %9 = alloca i8, align 1
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.vt_notifier_param*
  store %struct.vt_notifier_param* %11, %struct.vt_notifier_param** %7, align 8
  %12 = load %struct.vt_notifier_param*, %struct.vt_notifier_param** %7, align 8
  %13 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %12, i32 0, i32 1
  %14 = load %struct.vc_data*, %struct.vc_data** %13, align 8
  store %struct.vc_data* %14, %struct.vc_data** %8, align 8
  %15 = load i64, i64* %5, align 8
  switch i64 %15, label %49 [
    i64 131, label %16
    i64 130, label %27
    i64 128, label %30
    i64 129, label %46
  ]

16:                                               ; preds = %3
  %17 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @KD_TEXT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call i32 @speakup_allocate(%struct.vc_data* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %16
  br label %49

27:                                               ; preds = %3
  %28 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %29 = call i32 @speakup_deallocate(%struct.vc_data* %28)
  br label %49

30:                                               ; preds = %3
  %31 = load %struct.vt_notifier_param*, %struct.vt_notifier_param** %7, align 8
  %32 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %38 = call i32 @speakup_bs(%struct.vc_data* %37)
  br label %45

39:                                               ; preds = %30
  %40 = load %struct.vt_notifier_param*, %struct.vt_notifier_param** %7, align 8
  %41 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 8
  store i8 %42, i8* %9, align 1
  %43 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %44 = call i32 @speakup_con_write(%struct.vc_data* %43, i8* %9, i32 1)
  br label %45

45:                                               ; preds = %39, %36
  br label %49

46:                                               ; preds = %3
  %47 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %48 = call i32 @speakup_con_update(%struct.vc_data* %47)
  br label %49

49:                                               ; preds = %3, %46, %45, %27, %26
  %50 = load i32, i32* @NOTIFY_OK, align 4
  ret i32 %50
}

declare dso_local i32 @speakup_allocate(%struct.vc_data*, i32) #1

declare dso_local i32 @speakup_deallocate(%struct.vc_data*) #1

declare dso_local i32 @speakup_bs(%struct.vc_data*) #1

declare dso_local i32 @speakup_con_write(%struct.vc_data*, i8*, i32) #1

declare dso_local i32 @speakup_con_update(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
