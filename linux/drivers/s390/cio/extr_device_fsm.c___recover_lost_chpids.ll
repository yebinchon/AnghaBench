; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c___recover_lost_chpids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c___recover_lost_chpids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.chp_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*, i32)* @__recover_lost_chpids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__recover_lost_chpids(%struct.subchannel* %0, i32 %1) #0 {
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.chp_id, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @chp_id_init(%struct.chp_id* %7)
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %46, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 128, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %16 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %46

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %46

28:                                               ; preds = %22
  %29 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %30 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %7, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @chp_is_registered(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %28
  %44 = call i32 (...) @css_schedule_eval_all()
  br label %45

45:                                               ; preds = %43, %28
  br label %46

46:                                               ; preds = %45, %27, %21
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %9

49:                                               ; preds = %9
  ret void
}

declare dso_local i32 @chp_id_init(%struct.chp_id*) #1

declare dso_local i32 @chp_is_registered(i32) #1

declare dso_local i32 @css_schedule_eval_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
