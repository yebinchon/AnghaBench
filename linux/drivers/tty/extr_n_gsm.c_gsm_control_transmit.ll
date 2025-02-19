; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_control_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_control_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i32*, i32 }
%struct.gsm_control = type { i32, i32, i32 }
%struct.gsm_msg = type { i32* }

@EA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_mux*, %struct.gsm_control*)* @gsm_control_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_control_transmit(%struct.gsm_mux* %0, %struct.gsm_control* %1) #0 {
  %3 = alloca %struct.gsm_mux*, align 8
  %4 = alloca %struct.gsm_control*, align 8
  %5 = alloca %struct.gsm_msg*, align 8
  store %struct.gsm_mux* %0, %struct.gsm_mux** %3, align 8
  store %struct.gsm_control* %1, %struct.gsm_control** %4, align 8
  %6 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %7 = load %struct.gsm_control*, %struct.gsm_control** %4, align 8
  %8 = getelementptr inbounds %struct.gsm_control, %struct.gsm_control* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  %11 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %12 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.gsm_msg* @gsm_data_alloc(%struct.gsm_mux* %6, i32 0, i32 %10, i32 %13)
  store %struct.gsm_msg* %14, %struct.gsm_msg** %5, align 8
  %15 = load %struct.gsm_msg*, %struct.gsm_msg** %5, align 8
  %16 = icmp eq %struct.gsm_msg* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %48

18:                                               ; preds = %2
  %19 = load %struct.gsm_control*, %struct.gsm_control** %4, align 8
  %20 = getelementptr inbounds %struct.gsm_control, %struct.gsm_control* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 1
  %23 = or i32 %22, 2
  %24 = load i32, i32* @EA, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.gsm_msg*, %struct.gsm_msg** %5, align 8
  %27 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.gsm_msg*, %struct.gsm_msg** %5, align 8
  %31 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load %struct.gsm_control*, %struct.gsm_control** %4, align 8
  %35 = getelementptr inbounds %struct.gsm_control, %struct.gsm_control* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.gsm_control*, %struct.gsm_control** %4, align 8
  %38 = getelementptr inbounds %struct.gsm_control, %struct.gsm_control* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32* %33, i32 %36, i32 %39)
  %41 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %42 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.gsm_msg*, %struct.gsm_msg** %5, align 8
  %47 = call i32 @gsm_data_queue(i32 %45, %struct.gsm_msg* %46)
  br label %48

48:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.gsm_msg* @gsm_data_alloc(%struct.gsm_mux*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @gsm_data_queue(i32, %struct.gsm_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
