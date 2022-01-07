; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback_ops.c_xen_pcibk_test_and_schedule_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback_ops.c_xen_pcibk_test_and_schedule_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_pcibk_device = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@_XEN_PCIF_active = common dso_local global i32 0, align 4
@_PDEVF_op_active = common dso_local global i32 0, align 4
@_XEN_PCIB_active = common dso_local global i32 0, align 4
@_PCIB_op_pending = common dso_local global i32 0, align 4
@xen_pcibk_aer_wait_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_pcibk_test_and_schedule_op(%struct.xen_pcibk_device* %0) #0 {
  %2 = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %2, align 8
  %3 = load i32, i32* @_XEN_PCIF_active, align 4
  %4 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %5 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = bitcast i32* %7 to i64*
  %9 = call i64 @test_bit(i32 %3, i64* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @_PDEVF_op_active, align 4
  %13 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %14 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %13, i32 0, i32 0
  %15 = call i32 @test_and_set_bit(i32 %12, i64* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %19 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %18, i32 0, i32 2
  %20 = call i32 @schedule_work(i32* %19)
  br label %21

21:                                               ; preds = %17, %11, %1
  %22 = load i32, i32* @_XEN_PCIB_active, align 4
  %23 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %24 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to i64*
  %28 = call i64 @test_bit(i32 %22, i64* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @_PCIB_op_pending, align 4
  %32 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %33 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i64* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @wake_up(i32* @xen_pcibk_aer_wait_queue)
  br label %38

38:                                               ; preds = %36, %30, %21
  ret void
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @test_and_set_bit(i32, i64*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
