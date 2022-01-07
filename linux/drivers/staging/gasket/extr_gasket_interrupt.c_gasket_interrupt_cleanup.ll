; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { %struct.gasket_interrupt_data* }
%struct.gasket_interrupt_data = type { i32, %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gasket_interrupt_cleanup(%struct.gasket_dev* %0) #0 {
  %2 = alloca %struct.gasket_dev*, align 8
  %3 = alloca %struct.gasket_interrupt_data*, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %2, align 8
  %4 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %5 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %4, i32 0, i32 0
  %6 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  store %struct.gasket_interrupt_data* %6, %struct.gasket_interrupt_data** %3, align 8
  %7 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %8 = icmp ne %struct.gasket_interrupt_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %12 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %17 [
    i32 128, label %14
  ]

14:                                               ; preds = %10
  %15 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %16 = call i32 @gasket_interrupt_msix_cleanup(%struct.gasket_interrupt_data* %15)
  br label %18

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %14
  %19 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %20 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %19, i32 0, i32 2
  %21 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %20, align 8
  %22 = call i32 @kfree(%struct.gasket_interrupt_data* %21)
  %23 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %24 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %23, i32 0, i32 1
  %25 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %24, align 8
  %26 = call i32 @kfree(%struct.gasket_interrupt_data* %25)
  %27 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %28 = call i32 @kfree(%struct.gasket_interrupt_data* %27)
  %29 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %30 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %29, i32 0, i32 0
  store %struct.gasket_interrupt_data* null, %struct.gasket_interrupt_data** %30, align 8
  br label %31

31:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @gasket_interrupt_msix_cleanup(%struct.gasket_interrupt_data*) #1

declare dso_local i32 @kfree(%struct.gasket_interrupt_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
