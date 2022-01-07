; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_dev_backend.c_xenbus_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_dev_backend.c_xenbus_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evtchn_alloc_unbound = type { i64, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@xenstored_ready = common dso_local global i64 0, align 8
@GNTTAB_RESERVED_XENSTORE = common dso_local global i32 0, align 4
@xen_store_interface = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@EVTCHNOP_alloc_unbound = common dso_local global i32 0, align 4
@xen_store_evtchn = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @xenbus_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xenbus_alloc(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.evtchn_alloc_unbound, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @EEXIST, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = call i32 (...) @xs_suspend()
  %9 = load i64, i64* @xenstored_ready, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load i32, i32* @GNTTAB_RESERVED_XENSTORE, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @xen_store_interface, align 4
  %16 = call i32 @virt_to_gfn(i32 %15)
  %17 = call i32 @gnttab_grant_foreign_access_ref(i32 %13, i32 %14, i32 %16, i32 0)
  %18 = load i32, i32* @DOMID_SELF, align 4
  %19 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %4, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %4, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* @EVTCHNOP_alloc_unbound, align 4
  %23 = call i32 @HYPERVISOR_event_channel_op(i32 %22, %struct.evtchn_alloc_unbound* %4)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  br label %38

27:                                               ; preds = %12
  %28 = load i64, i64* @xen_store_evtchn, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @xb_deinit_comms()
  br label %32

32:                                               ; preds = %30, %27
  %33 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* @xen_store_evtchn, align 8
  %35 = call i32 (...) @xs_resume()
  %36 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %2, align 8
  br label %42

38:                                               ; preds = %26, %11
  %39 = call i32 (...) @xs_suspend_cancel()
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local i32 @xs_suspend(...) #1

declare dso_local i32 @gnttab_grant_foreign_access_ref(i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_gfn(i32) #1

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_alloc_unbound*) #1

declare dso_local i32 @xb_deinit_comms(...) #1

declare dso_local i32 @xs_resume(...) #1

declare dso_local i32 @xs_suspend_cancel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
