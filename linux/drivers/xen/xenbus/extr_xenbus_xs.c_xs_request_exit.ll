; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_request_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_request_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xb_req_data = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@xs_state_lock = common dso_local global i32 0, align 4
@xs_state_users = common dso_local global i32 0, align 4
@XS_TRANSACTION_START = common dso_local global i64 0, align 8
@XS_ERROR = common dso_local global i64 0, align 8
@XS_TRANSACTION_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ENOENT\00", align 1
@xs_suspend_active = common dso_local global i64 0, align 8
@xs_state_exit_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xs_request_exit(%struct.xb_req_data* %0) #0 {
  %2 = alloca %struct.xb_req_data*, align 8
  store %struct.xb_req_data* %0, %struct.xb_req_data** %2, align 8
  %3 = call i32 @spin_lock(i32* @xs_state_lock)
  %4 = load i32, i32* @xs_state_users, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* @xs_state_users, align 4
  %6 = load %struct.xb_req_data*, %struct.xb_req_data** %2, align 8
  %7 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @XS_TRANSACTION_START, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.xb_req_data*, %struct.xb_req_data** %2, align 8
  %13 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XS_ERROR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %48, label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.xb_req_data*, %struct.xb_req_data** %2, align 8
  %20 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XS_TRANSACTION_END, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %18
  %25 = load %struct.xb_req_data*, %struct.xb_req_data** %2, align 8
  %26 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = load %struct.xb_req_data*, %struct.xb_req_data** %2, align 8
  %31 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @XS_ERROR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.xb_req_data*, %struct.xb_req_data** %2, align 8
  %38 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strcmp(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %36, %29
  %44 = phi i1 [ false, %29 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON_ONCE(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43, %11
  %49 = load i32, i32* @xs_state_users, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @xs_state_users, align 4
  br label %51

51:                                               ; preds = %48, %43, %24, %18
  %52 = call i32 @spin_unlock(i32* @xs_state_lock)
  %53 = load i64, i64* @xs_suspend_active, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @xs_state_users, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = call i32 @wake_up(i32* @xs_state_exit_wq)
  br label %60

60:                                               ; preds = %58, %55, %51
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
