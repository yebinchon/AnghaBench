; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c___unbind_from_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c___unbind_from_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_info = type { i64 }

@virq_to_irq = common dso_local global i32 0, align 4
@ipi_to_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__unbind_from_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unbind_from_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @evtchn_from_irq(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.irq_info* @irq_get_handler_data(i32 %8)
  store %struct.irq_info* %9, %struct.irq_info** %4, align 8
  %10 = load %struct.irq_info*, %struct.irq_info** %4, align 8
  %11 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.irq_info*, %struct.irq_info** %4, align 8
  %16 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.irq_info*, %struct.irq_info** %4, align 8
  %20 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %57

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @VALID_EVTCHN(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @cpu_from_irq(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @xen_evtchn_close(i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @type_from_irq(i32 %34)
  switch i32 %35, label %50 [
    i32 128, label %36
    i32 129, label %43
  ]

36:                                               ; preds = %29
  %37 = load i32, i32* @virq_to_irq, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32* @per_cpu(i32 %37, i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i64 @virq_from_irq(i32 %40)
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 -1, i32* %42, align 4
  br label %51

43:                                               ; preds = %29
  %44 = load i32, i32* @ipi_to_irq, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32* @per_cpu(i32 %44, i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = call i64 @ipi_from_irq(i32 %47)
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 -1, i32* %49, align 4
  br label %51

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50, %43, %36
  %52 = load %struct.irq_info*, %struct.irq_info** %4, align 8
  %53 = call i32 @xen_irq_info_cleanup(%struct.irq_info* %52)
  br label %54

54:                                               ; preds = %51, %25
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @xen_free_irq(i32 %55)
  br label %57

57:                                               ; preds = %54, %23
  ret void
}

declare dso_local i32 @evtchn_from_irq(i32) #1

declare dso_local %struct.irq_info* @irq_get_handler_data(i32) #1

declare dso_local i64 @VALID_EVTCHN(i32) #1

declare dso_local i32 @cpu_from_irq(i32) #1

declare dso_local i32 @xen_evtchn_close(i32) #1

declare dso_local i32 @type_from_irq(i32) #1

declare dso_local i32* @per_cpu(i32, i32) #1

declare dso_local i64 @virq_from_irq(i32) #1

declare dso_local i64 @ipi_from_irq(i32) #1

declare dso_local i32 @xen_irq_info_cleanup(%struct.irq_info*) #1

declare dso_local i32 @xen_free_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
