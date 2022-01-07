; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_data_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_data_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_dlci = type { %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i64, i32 }

@TX_THRESH_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_dlci*)* @gsm_dlci_data_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_dlci_data_kick(%struct.gsm_dlci* %0) #0 {
  %2 = alloca %struct.gsm_dlci*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.gsm_dlci* %0, %struct.gsm_dlci** %2, align 8
  %5 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %6 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %64

10:                                               ; preds = %1
  %11 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %12 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %18 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TX_THRESH_LO, align 8
  %23 = icmp slt i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %26 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %10
  %32 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %33 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %38 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %41 = call i32 @gsm_dlci_data_output_framed(%struct.TYPE_4__* %39, %struct.gsm_dlci* %40)
  br label %48

42:                                               ; preds = %31
  %43 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %44 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %47 = call i32 @gsm_dlci_data_output(%struct.TYPE_4__* %45, %struct.gsm_dlci* %46)
  br label %48

48:                                               ; preds = %42, %36
  br label %49

49:                                               ; preds = %48, %10
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %54 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = call i32 @gsm_dlci_data_sweep(%struct.TYPE_4__* %55)
  br label %57

57:                                               ; preds = %52, %49
  %58 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %59 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %57, %9
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gsm_dlci_data_output_framed(%struct.TYPE_4__*, %struct.gsm_dlci*) #1

declare dso_local i32 @gsm_dlci_data_output(%struct.TYPE_4__*, %struct.gsm_dlci*) #1

declare dso_local i32 @gsm_dlci_data_sweep(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
