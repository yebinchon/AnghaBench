; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_control_retransmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_control_retransmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i64, i32, i32, i32, i32, %struct.gsm_control* }
%struct.gsm_control = type { i32, i32 }
%struct.timer_list = type { i32 }

@t2_timer = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@gsm = common dso_local global %struct.gsm_mux* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @gsm_control_retransmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_control_retransmit(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.gsm_mux*, align 8
  %4 = alloca %struct.gsm_control*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %7 = ptrtoint %struct.gsm_mux* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @t2_timer, align 4
  %10 = call %struct.gsm_mux* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.gsm_mux* %10, %struct.gsm_mux** %3, align 8
  %11 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %12 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %11, i32 0, i32 2
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %16 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %15, i32 0, i32 5
  %17 = load %struct.gsm_control*, %struct.gsm_control** %16, align 8
  store %struct.gsm_control* %17, %struct.gsm_control** %4, align 8
  %18 = load %struct.gsm_control*, %struct.gsm_control** %4, align 8
  %19 = icmp ne %struct.gsm_control* %18, null
  br i1 %19, label %20, label %61

20:                                               ; preds = %1
  %21 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %22 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %26 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %20
  %30 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %31 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %30, i32 0, i32 5
  store %struct.gsm_control* null, %struct.gsm_control** %31, align 8
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  %34 = load %struct.gsm_control*, %struct.gsm_control** %4, align 8
  %35 = getelementptr inbounds %struct.gsm_control, %struct.gsm_control* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.gsm_control*, %struct.gsm_control** %4, align 8
  %37 = getelementptr inbounds %struct.gsm_control, %struct.gsm_control* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %39 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %38, i32 0, i32 2
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %43 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %42, i32 0, i32 4
  %44 = call i32 @wake_up(i32* %43)
  br label %66

45:                                               ; preds = %20
  %46 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %47 = load %struct.gsm_control*, %struct.gsm_control** %4, align 8
  %48 = call i32 @gsm_control_transmit(%struct.gsm_mux* %46, %struct.gsm_control* %47)
  %49 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %50 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %49, i32 0, i32 3
  %51 = load i64, i64* @jiffies, align 8
  %52 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %53 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @HZ, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sdiv i32 %56, 100
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %51, %58
  %60 = call i32 @mod_timer(i32* %50, i64 %59)
  br label %61

61:                                               ; preds = %45, %1
  %62 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %63 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %62, i32 0, i32 2
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  br label %66

66:                                               ; preds = %61, %29
  ret void
}

declare dso_local %struct.gsm_mux* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @gsm_control_transmit(%struct.gsm_mux*, %struct.gsm_control*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
