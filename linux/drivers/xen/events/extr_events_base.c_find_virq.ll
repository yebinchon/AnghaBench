; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_find_virq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_find_virq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evtchn_status = type { i32, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@EVTCHNOP_status = common dso_local global i32 0, align 4
@EVTCHNSTAT_virq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @find_virq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_virq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.evtchn_status, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @ENOENT, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = call i32 @memset(%struct.evtchn_status* %5, i32 0, i32 32)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %46, %2
  %12 = load i32, i32* %6, align 4
  %13 = call i32 (...) @xen_evtchn_max_channels()
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = load i32, i32* @DOMID_SELF, align 4
  %17 = getelementptr inbounds %struct.evtchn_status, %struct.evtchn_status* %5, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.evtchn_status, %struct.evtchn_status* %5, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @EVTCHNOP_status, align 4
  %21 = call i32 @HYPERVISOR_event_channel_op(i32 %20, %struct.evtchn_status* %5)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %46

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.evtchn_status, %struct.evtchn_status* %5, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EVTCHNSTAT_virq, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %46

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.evtchn_status, %struct.evtchn_status* %5, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.evtchn_status, %struct.evtchn_status* %5, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @xen_vcpu_nr(i32 %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %7, align 4
  br label %49

45:                                               ; preds = %37, %31
  br label %46

46:                                               ; preds = %45, %30, %24
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %11

49:                                               ; preds = %43, %11
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.evtchn_status*, i32, i32) #1

declare dso_local i32 @xen_evtchn_max_channels(...) #1

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_status*) #1

declare dso_local i64 @xen_vcpu_nr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
