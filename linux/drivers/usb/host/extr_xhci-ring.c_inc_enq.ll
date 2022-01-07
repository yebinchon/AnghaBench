; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_inc_enq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_inc_enq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i64, i32, %union.xhci_trb*, %struct.TYPE_6__*, i32 }
%union.xhci_trb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { %union.xhci_trb*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }

@TRB_CHAIN = common dso_local global i32 0, align 4
@TYPE_ISOC = common dso_local global i64 0, align 8
@XHCI_AMD_0x96_HOST = common dso_local global i32 0, align 4
@TRB_CYCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_ring*, i32)* @inc_enq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_enq(%struct.xhci_hcd* %0, %struct.xhci_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.xhci_trb*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %10 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %9, i32 0, i32 2
  %11 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %12 = bitcast %union.xhci_trb* %11 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = load i32, i32* @TRB_CHAIN, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %21 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %20, i32 0, i32 2
  %22 = load %union.xhci_trb*, %union.xhci_trb** %21, align 8
  %23 = call i64 @trb_is_link(%union.xhci_trb* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %27 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %25, %3
  %31 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %32 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %31, i32 0, i32 2
  %33 = load %union.xhci_trb*, %union.xhci_trb** %32, align 8
  %34 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %33, i32 1
  store %union.xhci_trb* %34, %union.xhci_trb** %32, align 8
  store %union.xhci_trb* %34, %union.xhci_trb** %8, align 8
  br label %35

35:                                               ; preds = %96, %30
  %36 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %37 = call i64 @trb_is_link(%union.xhci_trb* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %114

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %114

46:                                               ; preds = %42, %39
  %47 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %48 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TYPE_ISOC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %54 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @XHCI_AMD_0x96_HOST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %52, %46
  %60 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %61 = call i32 @xhci_link_trb_quirk(%struct.xhci_hcd* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @TRB_CHAIN, align 4
  %65 = xor i32 %64, -1
  %66 = call i32 @cpu_to_le32(i32 %65)
  %67 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %68 = bitcast %union.xhci_trb* %67 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %66
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @cpu_to_le32(i32 %72)
  %74 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %75 = bitcast %union.xhci_trb* %74 to %struct.TYPE_5__*
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %63, %59, %52
  %80 = call i32 (...) @wmb()
  %81 = load i32, i32* @TRB_CYCLE, align 4
  %82 = call i32 @cpu_to_le32(i32 %81)
  %83 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %84 = bitcast %union.xhci_trb* %83 to %struct.TYPE_5__*
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = xor i32 %86, %82
  store i32 %87, i32* %85, align 8
  %88 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %89 = call i64 @link_trb_toggles_cycle(%union.xhci_trb* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %79
  %92 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %93 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = xor i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %91, %79
  %97 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %98 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %103 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %102, i32 0, i32 3
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %103, align 8
  %104 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %105 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %104, i32 0, i32 3
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %union.xhci_trb*, %union.xhci_trb** %107, align 8
  %109 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %110 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %109, i32 0, i32 2
  store %union.xhci_trb* %108, %union.xhci_trb** %110, align 8
  %111 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %112 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %111, i32 0, i32 2
  %113 = load %union.xhci_trb*, %union.xhci_trb** %112, align 8
  store %union.xhci_trb* %113, %union.xhci_trb** %8, align 8
  br label %35

114:                                              ; preds = %45, %35
  %115 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %116 = call i32 @trace_xhci_inc_enq(%struct.xhci_ring* %115)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @trb_is_link(%union.xhci_trb*) #1

declare dso_local i32 @xhci_link_trb_quirk(%struct.xhci_hcd*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @link_trb_toggles_cycle(%union.xhci_trb*) #1

declare dso_local i32 @trace_xhci_inc_enq(%struct.xhci_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
