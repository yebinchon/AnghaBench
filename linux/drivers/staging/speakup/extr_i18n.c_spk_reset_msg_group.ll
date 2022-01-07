; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_i18n.c_spk_reset_msg_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_i18n.c_spk_reset_msg_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.msg_group_t = type { i32, i32 }

@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@speakup_msgs = common dso_local global i64* null, align 8
@speakup_default_msgs = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spk_reset_msg_group(%struct.msg_group_t* %0) #0 {
  %2 = alloca %struct.msg_group_t*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.msg_group_t* %0, %struct.msg_group_t** %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %5)
  %7 = load %struct.msg_group_t*, %struct.msg_group_t** %2, align 8
  %8 = getelementptr inbounds %struct.msg_group_t, %struct.msg_group_t* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %45, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.msg_group_t*, %struct.msg_group_t** %2, align 8
  %13 = getelementptr inbounds %struct.msg_group_t, %struct.msg_group_t* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ule i32 %11, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %10
  %17 = load i64*, i64** @speakup_msgs, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** @speakup_default_msgs, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %21, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load i64*, i64** @speakup_msgs, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @kfree(i64 %33)
  br label %35

35:                                               ; preds = %28, %16
  %36 = load i64*, i64** @speakup_default_msgs, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** @speakup_msgs, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 %40, i64* %44, align 8
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %10

48:                                               ; preds = %10
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %49)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
