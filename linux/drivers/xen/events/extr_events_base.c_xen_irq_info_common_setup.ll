; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_xen_irq_info_common_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_xen_irq_info_common_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_info = type { i64, i32, i32, i16 }

@IRQT_UNBOUND = common dso_local global i64 0, align 8
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_info*, i32, i32, i32, i16)* @xen_irq_info_common_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_irq_info_common_setup(%struct.irq_info* %0, i32 %1, i32 %2, i32 %3, i16 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.irq_info* %0, %struct.irq_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i16 %4, i16* %11, align 2
  %13 = load %struct.irq_info*, %struct.irq_info** %7, align 8
  %14 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IRQT_UNBOUND, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load %struct.irq_info*, %struct.irq_info** %7, align 8
  %20 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = icmp ne i64 %21, %23
  br label %25

25:                                               ; preds = %18, %5
  %26 = phi i1 [ false, %5 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = load %struct.irq_info*, %struct.irq_info** %7, align 8
  %32 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.irq_info*, %struct.irq_info** %7, align 8
  %35 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.irq_info*, %struct.irq_info** %7, align 8
  %38 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i16, i16* %11, align 2
  %40 = load %struct.irq_info*, %struct.irq_info** %7, align 8
  %41 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %40, i32 0, i32 3
  store i16 %39, i16* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @set_evtchn_to_irq(i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %25
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %57

49:                                               ; preds = %25
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @IRQ_NOREQUEST, align 4
  %52 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @irq_clear_status_flags(i32 %50, i32 %53)
  %55 = load %struct.irq_info*, %struct.irq_info** %7, align 8
  %56 = call i32 @xen_evtchn_port_setup(%struct.irq_info* %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %49, %47
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_evtchn_to_irq(i32, i32) #1

declare dso_local i32 @irq_clear_status_flags(i32, i32) #1

declare dso_local i32 @xen_evtchn_port_setup(%struct.irq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
