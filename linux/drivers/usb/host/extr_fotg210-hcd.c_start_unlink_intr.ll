; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_start_unlink_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_start_unlink_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i64, i32, %struct.fotg210_qh*, i64, %struct.fotg210_qh* }
%struct.fotg210_qh = type { i64, i32, %struct.fotg210_qh*, i32 }

@QH_STATE_LINKED = common dso_local global i64 0, align 8
@QH_STATE_COMPLETING = common dso_local global i64 0, align 8
@FOTG210_RH_RUNNING = common dso_local global i64 0, align 8
@FOTG210_HRTIMER_UNLINK_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*, %struct.fotg210_qh*)* @start_unlink_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_unlink_intr(%struct.fotg210_hcd* %0, %struct.fotg210_qh* %1) #0 {
  %3 = alloca %struct.fotg210_hcd*, align 8
  %4 = alloca %struct.fotg210_qh*, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %3, align 8
  store %struct.fotg210_qh* %1, %struct.fotg210_qh** %4, align 8
  %5 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %6 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @QH_STATE_LINKED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %12 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QH_STATE_COMPLETING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %18 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %17, i32 0, i32 1
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %10
  br label %78

20:                                               ; preds = %2
  %21 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %22 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %23 = call i32 @qh_unlink_periodic(%struct.fotg210_hcd* %21, %struct.fotg210_qh* %22)
  %24 = call i32 (...) @wmb()
  %25 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %29 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %31 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %30, i32 0, i32 2
  %32 = load %struct.fotg210_qh*, %struct.fotg210_qh** %31, align 8
  %33 = icmp ne %struct.fotg210_qh* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %36 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %37 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %36, i32 0, i32 4
  %38 = load %struct.fotg210_qh*, %struct.fotg210_qh** %37, align 8
  %39 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %38, i32 0, i32 2
  store %struct.fotg210_qh* %35, %struct.fotg210_qh** %39, align 8
  br label %44

40:                                               ; preds = %20
  %41 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %42 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %43 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %42, i32 0, i32 2
  store %struct.fotg210_qh* %41, %struct.fotg210_qh** %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %46 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %47 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %46, i32 0, i32 4
  store %struct.fotg210_qh* %45, %struct.fotg210_qh** %47, align 8
  %48 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %49 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %78

53:                                               ; preds = %44
  %54 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %55 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FOTG210_RH_RUNNING, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %61 = call i32 @fotg210_handle_intr_unlinks(%struct.fotg210_hcd* %60)
  br label %77

62:                                               ; preds = %53
  %63 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %64 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %63, i32 0, i32 2
  %65 = load %struct.fotg210_qh*, %struct.fotg210_qh** %64, align 8
  %66 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %67 = icmp eq %struct.fotg210_qh* %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %70 = load i32, i32* @FOTG210_HRTIMER_UNLINK_INTR, align 4
  %71 = call i32 @fotg210_enable_event(%struct.fotg210_hcd* %69, i32 %70, i32 1)
  %72 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %73 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %68, %62
  br label %77

77:                                               ; preds = %76, %59
  br label %78

78:                                               ; preds = %19, %77, %52
  ret void
}

declare dso_local i32 @qh_unlink_periodic(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @fotg210_handle_intr_unlinks(%struct.fotg210_hcd*) #1

declare dso_local i32 @fotg210_enable_event(%struct.fotg210_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
