; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_activate_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_activate_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i64, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.gsm_dlci = type { i32 }

@gsm_control_retransmit = common dso_local global i32 0, align 4
@gsm0_receive = common dso_local global i32 0, align 4
@gsm1_receive = common dso_local global i32 0, align 4
@gsm_error = common dso_local global i32 0, align 4
@gsm_mux_lock = common dso_local global i32 0, align 4
@MAX_MUX = common dso_local global i32 0, align 4
@gsm_mux = common dso_local global %struct.gsm_mux** null, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsm_mux*)* @gsm_activate_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsm_activate_mux(%struct.gsm_mux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gsm_mux*, align 8
  %4 = alloca %struct.gsm_dlci*, align 8
  %5 = alloca i32, align 4
  store %struct.gsm_mux* %0, %struct.gsm_mux** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %7 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %6, i32 0, i32 8
  %8 = load i32, i32* @gsm_control_retransmit, align 4
  %9 = call i32 @timer_setup(i32* %7, i32 %8, i32 0)
  %10 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %11 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %10, i32 0, i32 7
  %12 = call i32 @init_waitqueue_head(i32* %11)
  %13 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %14 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %13, i32 0, i32 6
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %17 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %16, i32 0, i32 5
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %20 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @gsm0_receive, align 4
  %25 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %26 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @gsm1_receive, align 4
  %29 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %30 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @gsm_error, align 4
  %33 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %34 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = call i32 @spin_lock(i32* @gsm_mux_lock)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %57, %31
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MAX_MUX, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load %struct.gsm_mux**, %struct.gsm_mux*** @gsm_mux, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.gsm_mux*, %struct.gsm_mux** %41, i64 %43
  %45 = load %struct.gsm_mux*, %struct.gsm_mux** %44, align 8
  %46 = icmp eq %struct.gsm_mux* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %50 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %52 = load %struct.gsm_mux**, %struct.gsm_mux*** @gsm_mux, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.gsm_mux*, %struct.gsm_mux** %52, i64 %54
  store %struct.gsm_mux* %51, %struct.gsm_mux** %55, align 8
  br label %60

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %36

60:                                               ; preds = %47, %36
  %61 = call i32 @spin_unlock(i32* @gsm_mux_lock)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @MAX_MUX, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %79

68:                                               ; preds = %60
  %69 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %70 = call %struct.gsm_dlci* @gsm_dlci_alloc(%struct.gsm_mux* %69, i32 0)
  store %struct.gsm_dlci* %70, %struct.gsm_dlci** %4, align 8
  %71 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %72 = icmp eq %struct.gsm_dlci* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %79

76:                                               ; preds = %68
  %77 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %78 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %73, %65
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.gsm_dlci* @gsm_dlci_alloc(%struct.gsm_mux*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
