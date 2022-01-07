; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_set_eventfd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_set_eventfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_interrupt_data = type { i32, %struct.eventfd_ctx** }
%struct.eventfd_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_interrupt_set_eventfd(%struct.gasket_interrupt_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gasket_interrupt_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.eventfd_ctx*, align 8
  store %struct.gasket_interrupt_data* %0, %struct.gasket_interrupt_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call %struct.eventfd_ctx* @eventfd_ctx_fdget(i32 %9)
  store %struct.eventfd_ctx* %10, %struct.eventfd_ctx** %8, align 8
  %11 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %8, align 8
  %12 = call i64 @IS_ERR(%struct.eventfd_ctx* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %8, align 8
  %16 = call i32 @PTR_ERR(%struct.eventfd_ctx* %15)
  store i32 %16, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %23 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %17
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %37

29:                                               ; preds = %20
  %30 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %8, align 8
  %31 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %32 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %31, i32 0, i32 1
  %33 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.eventfd_ctx*, %struct.eventfd_ctx** %33, i64 %35
  store %struct.eventfd_ctx* %30, %struct.eventfd_ctx** %36, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %29, %26, %14
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.eventfd_ctx* @eventfd_ctx_fdget(i32) #1

declare dso_local i64 @IS_ERR(%struct.eventfd_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.eventfd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
