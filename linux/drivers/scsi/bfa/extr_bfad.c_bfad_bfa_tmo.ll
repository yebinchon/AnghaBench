; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_bfa_tmo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_bfa_tmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.list_head = type { i32 }

@hal_tmo = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BFA_TIMER_FREQ = common dso_local global i32 0, align 4
@bfad = common dso_local global %struct.bfad_s* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_bfa_tmo(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.list_head, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %7 = ptrtoint %struct.bfad_s* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @hal_tmo, align 4
  %10 = call %struct.bfad_s* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.bfad_s* %10, %struct.bfad_s** %3, align 8
  %11 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @bfa_timer_beat(i32* %17)
  %19 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 2
  %21 = call i32 @bfa_comp_deq(%struct.TYPE_4__* %20, %struct.list_head* %5)
  %22 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %22, i32 0, i32 1
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = call i32 @list_empty(%struct.list_head* %5)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %1
  %29 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %29, i32 0, i32 2
  %31 = call i32 @bfa_comp_process(%struct.TYPE_4__* %30, %struct.list_head* %5)
  %32 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %32, i32 0, i32 1
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %36, i32 0, i32 2
  %38 = call i32 @bfa_comp_free(%struct.TYPE_4__* %37, %struct.list_head* %5)
  %39 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %40 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %39, i32 0, i32 1
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %28, %1
  %44 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %44, i32 0, i32 0
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i32, i32* @BFA_TIMER_FREQ, align 4
  %48 = call i64 @msecs_to_jiffies(i32 %47)
  %49 = add nsw i64 %46, %48
  %50 = call i32 @mod_timer(i32* %45, i64 %49)
  ret void
}

declare dso_local %struct.bfad_s* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_timer_beat(i32*) #1

declare dso_local i32 @bfa_comp_deq(%struct.TYPE_4__*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @bfa_comp_process(%struct.TYPE_4__*, %struct.list_head*) #1

declare dso_local i32 @bfa_comp_free(%struct.TYPE_4__*, %struct.list_head*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
