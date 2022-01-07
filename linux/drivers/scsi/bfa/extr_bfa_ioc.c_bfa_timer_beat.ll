; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_timer_beat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_timer_beat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_timer_mod_s = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.bfa_timer_s = type { i64, i32, i32 (i32)*, i32 }

@BFA_TIMER_FREQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_timer_beat(%struct.bfa_timer_mod_s* %0) #0 {
  %2 = alloca %struct.bfa_timer_mod_s*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.bfa_timer_s*, align 8
  %7 = alloca %struct.list_head, align 4
  store %struct.bfa_timer_mod_s* %0, %struct.bfa_timer_mod_s** %2, align 8
  %8 = load %struct.bfa_timer_mod_s*, %struct.bfa_timer_mod_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_timer_mod_s, %struct.bfa_timer_mod_s* %8, i32 0, i32 0
  store %struct.list_head* %9, %struct.list_head** %3, align 8
  %10 = call i32 @INIT_LIST_HEAD(%struct.list_head* %7)
  %11 = load %struct.list_head*, %struct.list_head** %3, align 8
  %12 = call %struct.list_head* @bfa_q_next(%struct.list_head* %11)
  store %struct.list_head* %12, %struct.list_head** %4, align 8
  br label %13

13:                                               ; preds = %42, %1
  %14 = load %struct.list_head*, %struct.list_head** %4, align 8
  %15 = load %struct.list_head*, %struct.list_head** %3, align 8
  %16 = icmp ne %struct.list_head* %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.list_head*, %struct.list_head** %4, align 8
  %19 = call %struct.list_head* @bfa_q_next(%struct.list_head* %18)
  store %struct.list_head* %19, %struct.list_head** %5, align 8
  %20 = load %struct.list_head*, %struct.list_head** %4, align 8
  %21 = bitcast %struct.list_head* %20 to %struct.bfa_timer_s*
  store %struct.bfa_timer_s* %21, %struct.bfa_timer_s** %6, align 8
  %22 = load %struct.bfa_timer_s*, %struct.bfa_timer_s** %6, align 8
  %23 = getelementptr inbounds %struct.bfa_timer_s, %struct.bfa_timer_s* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BFA_TIMER_FREQ, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %17
  %28 = load %struct.bfa_timer_s*, %struct.bfa_timer_s** %6, align 8
  %29 = getelementptr inbounds %struct.bfa_timer_s, %struct.bfa_timer_s* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.bfa_timer_s*, %struct.bfa_timer_s** %6, align 8
  %31 = getelementptr inbounds %struct.bfa_timer_s, %struct.bfa_timer_s* %30, i32 0, i32 3
  %32 = call i32 @list_del(i32* %31)
  %33 = load %struct.bfa_timer_s*, %struct.bfa_timer_s** %6, align 8
  %34 = getelementptr inbounds %struct.bfa_timer_s, %struct.bfa_timer_s* %33, i32 0, i32 3
  %35 = call i32 @list_add_tail(i32* %34, %struct.list_head* %7)
  br label %42

36:                                               ; preds = %17
  %37 = load i64, i64* @BFA_TIMER_FREQ, align 8
  %38 = load %struct.bfa_timer_s*, %struct.bfa_timer_s** %6, align 8
  %39 = getelementptr inbounds %struct.bfa_timer_s, %struct.bfa_timer_s* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, %37
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %36, %27
  %43 = load %struct.list_head*, %struct.list_head** %5, align 8
  store %struct.list_head* %43, %struct.list_head** %4, align 8
  br label %13

44:                                               ; preds = %13
  br label %45

45:                                               ; preds = %49, %44
  %46 = call i32 @list_empty(%struct.list_head* %7)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = call i32 @bfa_q_deq(%struct.list_head* %7, %struct.bfa_timer_s** %6)
  %51 = load %struct.bfa_timer_s*, %struct.bfa_timer_s** %6, align 8
  %52 = getelementptr inbounds %struct.bfa_timer_s, %struct.bfa_timer_s* %51, i32 0, i32 2
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load %struct.bfa_timer_s*, %struct.bfa_timer_s** %6, align 8
  %55 = getelementptr inbounds %struct.bfa_timer_s, %struct.bfa_timer_s* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %53(i32 %56)
  br label %45

58:                                               ; preds = %45
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.list_head* @bfa_q_next(%struct.list_head*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @bfa_q_deq(%struct.list_head*, %struct.bfa_timer_s**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
