; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_evtchn.c_evtchn_bind_to_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_evtchn.c_evtchn_bind_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_user_data = type { i32 }
%struct.user_evtchn = type { i32, i32, %struct.per_user_data* }
%struct.evtchn_close = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@evtchn_interrupt = common dso_local global i32 0, align 4
@EVTCHNOP_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.per_user_data*, i32)* @evtchn_bind_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchn_bind_to_user(%struct.per_user_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.per_user_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.user_evtchn*, align 8
  %7 = alloca %struct.evtchn_close, align 4
  %8 = alloca i32, align 4
  store %struct.per_user_data* %0, %struct.per_user_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.user_evtchn* @kzalloc(i32 16, i32 %9)
  store %struct.user_evtchn* %10, %struct.user_evtchn** %6, align 8
  %11 = load %struct.user_evtchn*, %struct.user_evtchn** %6, align 8
  %12 = icmp ne %struct.user_evtchn* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %2
  %17 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %18 = load %struct.user_evtchn*, %struct.user_evtchn** %6, align 8
  %19 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %18, i32 0, i32 2
  store %struct.per_user_data* %17, %struct.per_user_data** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.user_evtchn*, %struct.user_evtchn** %6, align 8
  %22 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.user_evtchn*, %struct.user_evtchn** %6, align 8
  %24 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %26 = load %struct.user_evtchn*, %struct.user_evtchn** %6, align 8
  %27 = call i32 @add_evtchn(%struct.per_user_data* %25, %struct.user_evtchn* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %52

31:                                               ; preds = %16
  %32 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %33 = call i32 @evtchn_resize_ring(%struct.per_user_data* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %52

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @evtchn_interrupt, align 4
  %40 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %41 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.user_evtchn*, %struct.user_evtchn** %6, align 8
  %44 = call i32 @bind_evtchn_to_irqhandler(i32 %38, i32 %39, i32 0, i32 %42, %struct.user_evtchn* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %52

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @evtchn_make_refcounted(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %65

52:                                               ; preds = %47, %36, %30
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds %struct.evtchn_close, %struct.evtchn_close* %7, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @EVTCHNOP_close, align 4
  %56 = call i64 @HYPERVISOR_event_channel_op(i32 %55, %struct.evtchn_close* %7)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 (...) @BUG()
  br label %60

60:                                               ; preds = %58, %52
  %61 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %62 = load %struct.user_evtchn*, %struct.user_evtchn** %6, align 8
  %63 = call i32 @del_evtchn(%struct.per_user_data* %61, %struct.user_evtchn* %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %48, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.user_evtchn* @kzalloc(i32, i32) #1

declare dso_local i32 @add_evtchn(%struct.per_user_data*, %struct.user_evtchn*) #1

declare dso_local i32 @evtchn_resize_ring(%struct.per_user_data*) #1

declare dso_local i32 @bind_evtchn_to_irqhandler(i32, i32, i32, i32, %struct.user_evtchn*) #1

declare dso_local i32 @evtchn_make_refcounted(i32) #1

declare dso_local i64 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_close*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @del_evtchn(%struct.per_user_data*, %struct.user_evtchn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
