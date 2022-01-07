; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_control_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_control_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i32, i32, %struct.gsm_control*, i32 }
%struct.gsm_control = type { i32, i32, i32 }

@CMD_NSC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_mux*, i32, i32*, i32)* @gsm_control_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_control_response(%struct.gsm_mux* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.gsm_mux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsm_control*, align 8
  %10 = alloca i64, align 8
  store %struct.gsm_mux* %0, %struct.gsm_mux** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %12 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %11, i32 0, i32 0
  %13 = load i64, i64* %10, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %16 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %15, i32 0, i32 2
  %17 = load %struct.gsm_control*, %struct.gsm_control** %16, align 8
  store %struct.gsm_control* %17, %struct.gsm_control** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load %struct.gsm_control*, %struct.gsm_control** %9, align 8
  %21 = icmp ne %struct.gsm_control* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.gsm_control*, %struct.gsm_control** %9, align 8
  %25 = getelementptr inbounds %struct.gsm_control, %struct.gsm_control* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CMD_NSC, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28, %22
  %33 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %34 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %33, i32 0, i32 3
  %35 = call i32 @del_timer(i32* %34)
  %36 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %37 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %36, i32 0, i32 2
  store %struct.gsm_control* null, %struct.gsm_control** %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CMD_NSC, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  %44 = load %struct.gsm_control*, %struct.gsm_control** %9, align 8
  %45 = getelementptr inbounds %struct.gsm_control, %struct.gsm_control* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %32
  %47 = load %struct.gsm_control*, %struct.gsm_control** %9, align 8
  %48 = getelementptr inbounds %struct.gsm_control, %struct.gsm_control* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %50 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %49, i32 0, i32 1
  %51 = call i32 @wake_up(i32* %50)
  br label %52

52:                                               ; preds = %46, %28, %4
  %53 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %54 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %53, i32 0, i32 0
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
