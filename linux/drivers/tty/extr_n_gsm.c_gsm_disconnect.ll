; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i32, i32, %struct.gsm_dlci** }
%struct.gsm_dlci = type { i64 }
%struct.gsm_control = type { i32 }

@CMD_CLD = common dso_local global i32 0, align 4
@DLCI_CLOSED = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsm_mux*)* @gsm_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsm_disconnect(%struct.gsm_mux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gsm_mux*, align 8
  %4 = alloca %struct.gsm_dlci*, align 8
  %5 = alloca %struct.gsm_control*, align 8
  store %struct.gsm_mux* %0, %struct.gsm_mux** %3, align 8
  %6 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %7 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %6, i32 0, i32 2
  %8 = load %struct.gsm_dlci**, %struct.gsm_dlci*** %7, align 8
  %9 = getelementptr inbounds %struct.gsm_dlci*, %struct.gsm_dlci** %8, i64 0
  %10 = load %struct.gsm_dlci*, %struct.gsm_dlci** %9, align 8
  store %struct.gsm_dlci* %10, %struct.gsm_dlci** %4, align 8
  %11 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %12 = icmp ne %struct.gsm_dlci* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %16 = load i32, i32* @CMD_CLD, align 4
  %17 = call %struct.gsm_control* @gsm_control_send(%struct.gsm_mux* %15, i32 %16, i32* null, i32 0)
  store %struct.gsm_control* %17, %struct.gsm_control** %5, align 8
  %18 = load %struct.gsm_control*, %struct.gsm_control** %5, align 8
  %19 = icmp ne %struct.gsm_control* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %22 = load %struct.gsm_control*, %struct.gsm_control** %5, align 8
  %23 = call i32 @gsm_control_wait(%struct.gsm_mux* %21, %struct.gsm_control* %22)
  br label %24

24:                                               ; preds = %20, %14
  %25 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %26 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %25, i32 0, i32 1
  %27 = call i32 @del_timer_sync(i32* %26)
  %28 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %29 = call i32 @gsm_dlci_begin_close(%struct.gsm_dlci* %28)
  %30 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %31 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %34 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DLCI_CLOSED, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @wait_event_interruptible(i32 %32, i32 %38)
  %40 = load i32, i32* @current, align 4
  %41 = call i64 @signal_pending(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %24
  %44 = load i32, i32* @EINTR, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %43, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.gsm_control* @gsm_control_send(%struct.gsm_mux*, i32, i32*, i32) #1

declare dso_local i32 @gsm_control_wait(%struct.gsm_mux*, %struct.gsm_control*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @gsm_dlci_begin_close(%struct.gsm_dlci*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
