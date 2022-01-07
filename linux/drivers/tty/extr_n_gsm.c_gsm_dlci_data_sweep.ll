; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_data_sweep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_data_sweep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i64, %struct.gsm_dlci** }
%struct.gsm_dlci = type { i32, i32, i64 }

@NUM_DLCI = common dso_local global i32 0, align 4
@TX_THRESH_HI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_mux*)* @gsm_dlci_data_sweep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_dlci_data_sweep(%struct.gsm_mux* %0) #0 {
  %2 = alloca %struct.gsm_mux*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsm_dlci*, align 8
  store %struct.gsm_mux* %0, %struct.gsm_mux** %2, align 8
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %63, %32, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NUM_DLCI, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %64

10:                                               ; preds = %6
  %11 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %12 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TX_THRESH_HI, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %64

17:                                               ; preds = %10
  %18 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %19 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %18, i32 0, i32 1
  %20 = load %struct.gsm_dlci**, %struct.gsm_dlci*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.gsm_dlci*, %struct.gsm_dlci** %20, i64 %22
  %24 = load %struct.gsm_dlci*, %struct.gsm_dlci** %23, align 8
  store %struct.gsm_dlci* %24, %struct.gsm_dlci** %5, align 8
  %25 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %26 = icmp eq %struct.gsm_dlci* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %17
  %28 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %29 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %17
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %6

35:                                               ; preds = %27
  %36 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %37 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %42 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %47 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %48 = call i32 @gsm_dlci_data_output(%struct.gsm_mux* %46, %struct.gsm_dlci* %47)
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %40, %35
  %50 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %51 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %52 = call i32 @gsm_dlci_data_output_framed(%struct.gsm_mux* %50, %struct.gsm_dlci* %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %3, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %64

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %57
  br label %6

64:                                               ; preds = %56, %16, %6
  ret void
}

declare dso_local i32 @gsm_dlci_data_output(%struct.gsm_mux*, %struct.gsm_dlci*) #1

declare dso_local i32 @gsm_dlci_data_output_framed(%struct.gsm_mux*, %struct.gsm_dlci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
