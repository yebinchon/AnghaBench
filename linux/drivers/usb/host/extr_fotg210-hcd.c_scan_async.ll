; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_scan_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_scan_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i64, i32, i32, %struct.fotg210_qh*, %struct.TYPE_5__* }
%struct.fotg210_qh = type { i64, i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.fotg210_qh* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.fotg210_qh* }

@QH_STATE_LINKED = common dso_local global i64 0, align 8
@FOTG210_RH_RUNNING = common dso_local global i64 0, align 8
@FOTG210_HRTIMER_ASYNC_UNLINKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*)* @scan_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_async(%struct.fotg210_hcd* %0) #0 {
  %2 = alloca %struct.fotg210_hcd*, align 8
  %3 = alloca %struct.fotg210_qh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %7 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %6, i32 0, i32 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.fotg210_qh*, %struct.fotg210_qh** %10, align 8
  %12 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %13 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %12, i32 0, i32 3
  store %struct.fotg210_qh* %11, %struct.fotg210_qh** %13, align 8
  br label %14

14:                                               ; preds = %70, %1
  %15 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %16 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %15, i32 0, i32 3
  %17 = load %struct.fotg210_qh*, %struct.fotg210_qh** %16, align 8
  %18 = icmp ne %struct.fotg210_qh* %17, null
  br i1 %18, label %19, label %71

19:                                               ; preds = %14
  %20 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %21 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %20, i32 0, i32 3
  %22 = load %struct.fotg210_qh*, %struct.fotg210_qh** %21, align 8
  store %struct.fotg210_qh* %22, %struct.fotg210_qh** %3, align 8
  %23 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %24 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.fotg210_qh*, %struct.fotg210_qh** %25, align 8
  %27 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %28 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %27, i32 0, i32 3
  store %struct.fotg210_qh* %26, %struct.fotg210_qh** %28, align 8
  br label %29

29:                                               ; preds = %66, %19
  %30 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %31 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %30, i32 0, i32 2
  %32 = call i64 @list_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %29
  %35 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %36 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %37 = call i32 @qh_completions(%struct.fotg210_hcd* %35, %struct.fotg210_qh* %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %39 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %44 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %45 = call i32 @start_unlink_async(%struct.fotg210_hcd* %43, %struct.fotg210_qh* %44)
  br label %69

46:                                               ; preds = %34
  %47 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %48 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %47, i32 0, i32 2
  %49 = call i64 @list_empty(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %53 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @QH_STATE_LINKED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %59 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %62 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  store i32 1, i32* %4, align 4
  br label %68

63:                                               ; preds = %51, %46
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %29

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %42
  br label %70

70:                                               ; preds = %69, %29
  br label %14

71:                                               ; preds = %14
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %76 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @FOTG210_RH_RUNNING, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %82 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @FOTG210_HRTIMER_ASYNC_UNLINKS, align 4
  %85 = call i32 @BIT(i32 %84)
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %80
  %89 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %90 = load i32, i32* @FOTG210_HRTIMER_ASYNC_UNLINKS, align 4
  %91 = call i32 @fotg210_enable_event(%struct.fotg210_hcd* %89, i32 %90, i32 1)
  %92 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %93 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %88, %80, %74, %71
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @qh_completions(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @start_unlink_async(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fotg210_enable_event(%struct.fotg210_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
