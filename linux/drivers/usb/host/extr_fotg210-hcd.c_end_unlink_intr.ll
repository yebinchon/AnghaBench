; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_end_unlink_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_end_unlink_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i64, i32 }
%struct.fotg210_qh = type { i32, i32, %struct.fotg210_qh_hw* }
%struct.fotg210_qh_hw = type { i32 }

@QH_STATE_IDLE = common dso_local global i32 0, align 4
@FOTG210_RH_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"can't reschedule qh %p, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*, %struct.fotg210_qh*)* @end_unlink_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_unlink_intr(%struct.fotg210_hcd* %0, %struct.fotg210_qh* %1) #0 {
  %3 = alloca %struct.fotg210_hcd*, align 8
  %4 = alloca %struct.fotg210_qh*, align 8
  %5 = alloca %struct.fotg210_qh_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %3, align 8
  store %struct.fotg210_qh* %1, %struct.fotg210_qh** %4, align 8
  %7 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %8 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %7, i32 0, i32 2
  %9 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %8, align 8
  store %struct.fotg210_qh_hw* %9, %struct.fotg210_qh_hw** %5, align 8
  %10 = load i32, i32* @QH_STATE_IDLE, align 4
  %11 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %12 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %14 = call i32 @FOTG210_LIST_END(%struct.fotg210_hcd* %13)
  %15 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %5, align 8
  %16 = getelementptr inbounds %struct.fotg210_qh_hw, %struct.fotg210_qh_hw* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %18 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %19 = call i32 @qh_completions(%struct.fotg210_hcd* %17, %struct.fotg210_qh* %18)
  %20 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %21 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %20, i32 0, i32 0
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %2
  %25 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FOTG210_RH_RUNNING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %32 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %33 = call i32 @qh_schedule(%struct.fotg210_hcd* %31, %struct.fotg210_qh* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %38 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @fotg210_err(%struct.fotg210_hcd* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.fotg210_qh* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  br label %42

42:                                               ; preds = %41, %24, %2
  %43 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %44 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %48 = call i32 @disable_periodic(%struct.fotg210_hcd* %47)
  ret void
}

declare dso_local i32 @FOTG210_LIST_END(%struct.fotg210_hcd*) #1

declare dso_local i32 @qh_completions(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @qh_schedule(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @fotg210_err(%struct.fotg210_hcd*, i8*, %struct.fotg210_qh*, i32) #1

declare dso_local i32 @disable_periodic(%struct.fotg210_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
