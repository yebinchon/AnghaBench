; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_inc_deq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_inc_deq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i64, i32, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i64, %struct.TYPE_3__* }

@TYPE_EVENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inc_deq(%struct.xhci_hcd* %0, %struct.xhci_ring* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.xhci_ring*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %4, align 8
  %5 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %6 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TYPE_EVENT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %54

10:                                               ; preds = %2
  %11 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %12 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %15 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @last_trb_on_seg(%struct.TYPE_3__* %13, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %21 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  br label %92

24:                                               ; preds = %10
  %25 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %26 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %27 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %30 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @last_trb_on_ring(%struct.xhci_ring* %25, %struct.TYPE_3__* %28, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %36 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = xor i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %34, %24
  %40 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %41 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %46 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %45, i32 0, i32 2
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %46, align 8
  %47 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %48 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %53 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  br label %92

54:                                               ; preds = %2
  %55 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %56 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @trb_is_link(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %54
  %61 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %62 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %66 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %60, %54
  br label %70

70:                                               ; preds = %76, %69
  %71 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %72 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @trb_is_link(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %78 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %83 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %82, i32 0, i32 2
  store %struct.TYPE_3__* %81, %struct.TYPE_3__** %83, align 8
  %84 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %85 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %90 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  br label %70

91:                                               ; preds = %70
  br label %92

92:                                               ; preds = %91, %39, %19
  %93 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %94 = call i32 @trace_xhci_inc_deq(%struct.xhci_ring* %93)
  ret void
}

declare dso_local i32 @last_trb_on_seg(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @last_trb_on_ring(%struct.xhci_ring*, %struct.TYPE_3__*, i64) #1

declare dso_local i64 @trb_is_link(i64) #1

declare dso_local i32 @trace_xhci_inc_deq(%struct.xhci_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
