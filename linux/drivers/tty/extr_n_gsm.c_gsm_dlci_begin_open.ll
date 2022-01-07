; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_begin_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_begin_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_dlci = type { i64, i32, i32, %struct.gsm_mux*, i32 }
%struct.gsm_mux = type { i32, i32 }

@DLCI_OPEN = common dso_local global i64 0, align 8
@DLCI_OPENING = common dso_local global i64 0, align 8
@SABM = common dso_local global i32 0, align 4
@PF = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_dlci*)* @gsm_dlci_begin_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_dlci_begin_open(%struct.gsm_dlci* %0) #0 {
  %2 = alloca %struct.gsm_dlci*, align 8
  %3 = alloca %struct.gsm_mux*, align 8
  store %struct.gsm_dlci* %0, %struct.gsm_dlci** %2, align 8
  %4 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %5 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %4, i32 0, i32 3
  %6 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  store %struct.gsm_mux* %6, %struct.gsm_mux** %3, align 8
  %7 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %8 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DLCI_OPEN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %14 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DLCI_OPENING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  br label %50

19:                                               ; preds = %12
  %20 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %21 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %24 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* @DLCI_OPENING, align 8
  %26 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %27 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %29 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %28, i32 0, i32 3
  %30 = load %struct.gsm_mux*, %struct.gsm_mux** %29, align 8
  %31 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %32 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SABM, align 4
  %35 = load i32, i32* @PF, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @gsm_command(%struct.gsm_mux* %30, i32 %33, i32 %36)
  %38 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %39 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %38, i32 0, i32 1
  %40 = load i64, i64* @jiffies, align 8
  %41 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %42 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sdiv i32 %45, 100
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %40, %47
  %49 = call i32 @mod_timer(i32* %39, i64 %48)
  br label %50

50:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @gsm_command(%struct.gsm_mux*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
