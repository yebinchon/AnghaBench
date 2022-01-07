; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_interrupt_data = type { i32*, %struct.eventfd_ctx**, i32 }
%struct.eventfd_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gasket_interrupt_data*, i32)* @gasket_handle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gasket_handle_interrupt(%struct.gasket_interrupt_data* %0, i32 %1) #0 {
  %3 = alloca %struct.gasket_interrupt_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eventfd_ctx*, align 8
  store %struct.gasket_interrupt_data* %0, %struct.gasket_interrupt_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %7 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @trace_gasket_interrupt_event(i32 %8, i32 %9)
  %11 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %12 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %11, i32 0, i32 1
  %13 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.eventfd_ctx*, %struct.eventfd_ctx** %13, i64 %15
  %17 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %16, align 8
  store %struct.eventfd_ctx* %17, %struct.eventfd_ctx** %5, align 8
  %18 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %5, align 8
  %19 = icmp ne %struct.eventfd_ctx* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %5, align 8
  %22 = call i32 @eventfd_signal(%struct.eventfd_ctx* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %25 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  ret void
}

declare dso_local i32 @trace_gasket_interrupt_event(i32, i32) #1

declare dso_local i32 @eventfd_signal(%struct.eventfd_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
