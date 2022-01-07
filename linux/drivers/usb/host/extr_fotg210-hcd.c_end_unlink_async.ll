; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_end_unlink_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_end_unlink_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32, i64, i64, %struct.fotg210_qh* }
%struct.fotg210_qh = type { i32, %struct.TYPE_2__, i32, %struct.fotg210_qh* }
%struct.TYPE_2__ = type { i32* }

@QH_STATE_IDLE = common dso_local global i32 0, align 4
@FOTG210_RH_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*)* @end_unlink_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_unlink_async(%struct.fotg210_hcd* %0) #0 {
  %2 = alloca %struct.fotg210_hcd*, align 8
  %3 = alloca %struct.fotg210_qh*, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %2, align 8
  br label %4

4:                                                ; preds = %67, %1
  %5 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  br label %7

7:                                                ; preds = %46, %4
  %8 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %8, i32 0, i32 3
  %10 = load %struct.fotg210_qh*, %struct.fotg210_qh** %9, align 8
  %11 = icmp ne %struct.fotg210_qh* %10, null
  br i1 %11, label %12, label %49

12:                                               ; preds = %7
  %13 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %13, i32 0, i32 3
  %15 = load %struct.fotg210_qh*, %struct.fotg210_qh** %14, align 8
  store %struct.fotg210_qh* %15, %struct.fotg210_qh** %3, align 8
  %16 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %17 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %16, i32 0, i32 3
  %18 = load %struct.fotg210_qh*, %struct.fotg210_qh** %17, align 8
  %19 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %20 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %19, i32 0, i32 3
  store %struct.fotg210_qh* %18, %struct.fotg210_qh** %20, align 8
  %21 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %22 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %21, i32 0, i32 3
  store %struct.fotg210_qh* null, %struct.fotg210_qh** %22, align 8
  %23 = load i32, i32* @QH_STATE_IDLE, align 4
  %24 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %25 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %27 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %30 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %31 = call i32 @qh_completions(%struct.fotg210_hcd* %29, %struct.fotg210_qh* %30)
  %32 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %33 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %32, i32 0, i32 0
  %34 = call i32 @list_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %12
  %37 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %38 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FOTG210_RH_RUNNING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %44 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %45 = call i32 @qh_link_async(%struct.fotg210_hcd* %43, %struct.fotg210_qh* %44)
  br label %46

46:                                               ; preds = %42, %36, %12
  %47 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %48 = call i32 @disable_async(%struct.fotg210_hcd* %47)
  br label %7

49:                                               ; preds = %7
  %50 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %51 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %53 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %58 = call i32 @start_iaa_cycle(%struct.fotg210_hcd* %57, i32 1)
  %59 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %60 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FOTG210_RH_RUNNING, align 8
  %63 = icmp slt i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %4

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %49
  ret void
}

declare dso_local i32 @qh_completions(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @qh_link_async(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @disable_async(%struct.fotg210_hcd*) #1

declare dso_local i32 @start_iaa_cycle(%struct.fotg210_hcd*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
