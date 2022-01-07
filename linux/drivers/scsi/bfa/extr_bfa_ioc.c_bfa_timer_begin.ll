; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_timer_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_timer_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_timer_mod_s = type { i32 }
%struct.bfa_timer_s = type { i32, void (i8*)*, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_timer_begin(%struct.bfa_timer_mod_s* %0, %struct.bfa_timer_s* %1, void (i8*)* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.bfa_timer_mod_s*, align 8
  %7 = alloca %struct.bfa_timer_s*, align 8
  %8 = alloca void (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.bfa_timer_mod_s* %0, %struct.bfa_timer_mod_s** %6, align 8
  store %struct.bfa_timer_s* %1, %struct.bfa_timer_s** %7, align 8
  store void (i8*)* %2, void (i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load void (i8*)*, void (i8*)** %8, align 8
  %12 = icmp eq void (i8*)* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.bfa_timer_mod_s*, %struct.bfa_timer_mod_s** %6, align 8
  %16 = getelementptr inbounds %struct.bfa_timer_mod_s, %struct.bfa_timer_mod_s* %15, i32 0, i32 0
  %17 = load %struct.bfa_timer_s*, %struct.bfa_timer_s** %7, align 8
  %18 = call i32 @bfa_q_is_on_q(i32* %16, %struct.bfa_timer_s* %17)
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.bfa_timer_s*, %struct.bfa_timer_s** %7, align 8
  %22 = getelementptr inbounds %struct.bfa_timer_s, %struct.bfa_timer_s* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load void (i8*)*, void (i8*)** %8, align 8
  %24 = load %struct.bfa_timer_s*, %struct.bfa_timer_s** %7, align 8
  %25 = getelementptr inbounds %struct.bfa_timer_s, %struct.bfa_timer_s* %24, i32 0, i32 1
  store void (i8*)* %23, void (i8*)** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.bfa_timer_s*, %struct.bfa_timer_s** %7, align 8
  %28 = getelementptr inbounds %struct.bfa_timer_s, %struct.bfa_timer_s* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.bfa_timer_s*, %struct.bfa_timer_s** %7, align 8
  %30 = getelementptr inbounds %struct.bfa_timer_s, %struct.bfa_timer_s* %29, i32 0, i32 2
  %31 = load %struct.bfa_timer_mod_s*, %struct.bfa_timer_mod_s** %6, align 8
  %32 = getelementptr inbounds %struct.bfa_timer_mod_s, %struct.bfa_timer_mod_s* %31, i32 0, i32 0
  %33 = call i32 @list_add_tail(i32* %30, i32* %32)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_q_is_on_q(i32*, %struct.bfa_timer_s*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
