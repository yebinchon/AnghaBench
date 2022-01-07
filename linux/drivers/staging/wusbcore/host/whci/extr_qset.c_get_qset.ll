; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_qset.c_get_qset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_qset.c_get_qset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc_qset = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.whc_qset* }
%struct.whc = type { i32 }
%struct.urb = type { %struct.TYPE_2__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.whc_qset* @get_qset(%struct.whc* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.whc_qset*, align 8
  %5 = alloca %struct.whc*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.whc_qset*, align 8
  store %struct.whc* %0, %struct.whc** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.urb*, %struct.urb** %6, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.whc_qset*, %struct.whc_qset** %12, align 8
  store %struct.whc_qset* %13, %struct.whc_qset** %8, align 8
  %14 = load %struct.whc_qset*, %struct.whc_qset** %8, align 8
  %15 = icmp eq %struct.whc_qset* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = load %struct.whc*, %struct.whc** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.whc_qset* @qset_alloc(%struct.whc* %17, i32 %18)
  store %struct.whc_qset* %19, %struct.whc_qset** %8, align 8
  %20 = load %struct.whc_qset*, %struct.whc_qset** %8, align 8
  %21 = icmp eq %struct.whc_qset* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store %struct.whc_qset* null, %struct.whc_qset** %4, align 8
  br label %40

23:                                               ; preds = %16
  %24 = load %struct.urb*, %struct.urb** %6, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.whc_qset*, %struct.whc_qset** %8, align 8
  %28 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %27, i32 0, i32 0
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %28, align 8
  %29 = load %struct.whc_qset*, %struct.whc_qset** %8, align 8
  %30 = load %struct.urb*, %struct.urb** %6, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.whc_qset* %29, %struct.whc_qset** %33, align 8
  %34 = load %struct.whc*, %struct.whc** %5, align 8
  %35 = load %struct.whc_qset*, %struct.whc_qset** %8, align 8
  %36 = load %struct.urb*, %struct.urb** %6, align 8
  %37 = call i32 @qset_fill_qh(%struct.whc* %34, %struct.whc_qset* %35, %struct.urb* %36)
  br label %38

38:                                               ; preds = %23, %3
  %39 = load %struct.whc_qset*, %struct.whc_qset** %8, align 8
  store %struct.whc_qset* %39, %struct.whc_qset** %4, align 8
  br label %40

40:                                               ; preds = %38, %22
  %41 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  ret %struct.whc_qset* %41
}

declare dso_local %struct.whc_qset* @qset_alloc(%struct.whc*, i32) #1

declare dso_local i32 @qset_fill_qh(%struct.whc*, %struct.whc_qset*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
