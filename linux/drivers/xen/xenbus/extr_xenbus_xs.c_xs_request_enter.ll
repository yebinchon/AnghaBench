; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_request_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_request_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xb_req_data = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@xs_state_lock = common dso_local global i32 0, align 4
@xs_state_users = common dso_local global i32 0, align 4
@xs_suspend_active = common dso_local global i64 0, align 8
@xs_state_enter_wq = common dso_local global i32 0, align 4
@XS_TRANSACTION_START = common dso_local global i64 0, align 8
@xs_request_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xb_req_data*)* @xs_request_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xs_request_enter(%struct.xb_req_data* %0) #0 {
  %2 = alloca %struct.xb_req_data*, align 8
  %3 = alloca i64, align 8
  store %struct.xb_req_data* %0, %struct.xb_req_data** %2, align 8
  %4 = load %struct.xb_req_data*, %struct.xb_req_data** %2, align 8
  %5 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.xb_req_data*, %struct.xb_req_data** %2, align 8
  %9 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = call i32 @spin_lock(i32* @xs_state_lock)
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i32, i32* @xs_state_users, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @xs_suspend_active, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = call i32 @spin_unlock(i32* @xs_state_lock)
  %21 = load i32, i32* @xs_state_enter_wq, align 4
  %22 = load i64, i64* @xs_suspend_active, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @wait_event(i32 %21, i32 %24)
  %26 = call i32 @spin_lock(i32* @xs_state_lock)
  br label %11

27:                                               ; preds = %17
  %28 = load %struct.xb_req_data*, %struct.xb_req_data** %2, align 8
  %29 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XS_TRANSACTION_START, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.xb_req_data*, %struct.xb_req_data** %2, align 8
  %35 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @xs_state_users, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @xs_state_users, align 4
  br label %41

41:                                               ; preds = %38, %33, %27
  %42 = load i32, i32* @xs_state_users, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @xs_state_users, align 4
  %44 = load i32, i32* @xs_request_id, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @xs_request_id, align 4
  %46 = sext i32 %44 to i64
  store i64 %46, i64* %3, align 8
  %47 = call i32 @spin_unlock(i32* @xs_state_lock)
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
