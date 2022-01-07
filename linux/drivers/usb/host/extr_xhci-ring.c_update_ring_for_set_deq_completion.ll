; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_update_ring_for_set_deq_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_update_ring_for_set_deq_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_virt_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %union.xhci_trb* }
%union.xhci_trb = type { i32 }
%struct.xhci_ring = type { i32, %union.xhci_trb*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %union.xhci_trb*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [36 x i8] c"Unable to find new dequeue pointer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_virt_device*, %struct.xhci_ring*, i32)* @update_ring_for_set_deq_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ring_for_set_deq_completion(%struct.xhci_hcd* %0, %struct.xhci_virt_device* %1, %struct.xhci_ring* %2, i32 %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_virt_device*, align 8
  %7 = alloca %struct.xhci_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.xhci_trb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_virt_device* %1, %struct.xhci_virt_device** %6, align 8
  store %struct.xhci_ring* %2, %struct.xhci_ring** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %13 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %16 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %15, i32 0, i32 1
  %17 = load %union.xhci_trb*, %union.xhci_trb** %16, align 8
  store %union.xhci_trb* %17, %union.xhci_trb** %9, align 8
  %18 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %19 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %18, i32 0, i32 1
  %20 = load %union.xhci_trb*, %union.xhci_trb** %19, align 8
  %21 = call i64 @trb_is_link(%union.xhci_trb* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %4
  %24 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %25 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %30 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %29, i32 0, i32 2
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %30, align 8
  %31 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %32 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %union.xhci_trb*, %union.xhci_trb** %34, align 8
  %36 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %37 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %36, i32 0, i32 1
  store %union.xhci_trb* %35, %union.xhci_trb** %37, align 8
  br label %38

38:                                               ; preds = %23, %4
  br label %39

39:                                               ; preds = %102, %38
  %40 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %41 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %40, i32 0, i32 1
  %42 = load %union.xhci_trb*, %union.xhci_trb** %41, align 8
  %43 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %44 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %union.xhci_trb*, %union.xhci_trb** %49, align 8
  %51 = icmp ne %union.xhci_trb* %42, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %39
  %53 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %54 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %58 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %57, i32 0, i32 1
  %59 = load %union.xhci_trb*, %union.xhci_trb** %58, align 8
  %60 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %59, i32 1
  store %union.xhci_trb* %60, %union.xhci_trb** %58, align 8
  %61 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %62 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %61, i32 0, i32 1
  %63 = load %union.xhci_trb*, %union.xhci_trb** %62, align 8
  %64 = call i64 @trb_is_link(%union.xhci_trb* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %52
  %67 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %68 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %67, i32 0, i32 1
  %69 = load %union.xhci_trb*, %union.xhci_trb** %68, align 8
  %70 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %71 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load %union.xhci_trb*, %union.xhci_trb** %76, align 8
  %78 = icmp eq %union.xhci_trb* %69, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %103

80:                                               ; preds = %66
  %81 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %82 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %87 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %86, i32 0, i32 2
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %87, align 8
  %88 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %89 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %union.xhci_trb*, %union.xhci_trb** %91, align 8
  %93 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %94 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %93, i32 0, i32 1
  store %union.xhci_trb* %92, %union.xhci_trb** %94, align 8
  br label %95

95:                                               ; preds = %80, %52
  %96 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %97 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %96, i32 0, i32 1
  %98 = load %union.xhci_trb*, %union.xhci_trb** %97, align 8
  %99 = load %union.xhci_trb*, %union.xhci_trb** %9, align 8
  %100 = icmp eq %union.xhci_trb* %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 1, i32* %11, align 4
  br label %103

102:                                              ; preds = %95
  br label %39

103:                                              ; preds = %101, %79, %39
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %108 = call i32 @xhci_dbg(%struct.xhci_hcd* %107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %111 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %106, %103
  ret void
}

declare dso_local i64 @trb_is_link(%union.xhci_trb*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
