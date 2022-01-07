; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_schedule_pcifront_aer_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_schedule_pcifront_aer_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@_XEN_PCIB_active = common dso_local global i32 0, align 4
@_PDEVB_op_active = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"schedule aer frontend job\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcifront_device*)* @schedule_pcifront_aer_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_pcifront_aer_op(%struct.pcifront_device* %0) #0 {
  %2 = alloca %struct.pcifront_device*, align 8
  store %struct.pcifront_device* %0, %struct.pcifront_device** %2, align 8
  %3 = load i32, i32* @_XEN_PCIB_active, align 4
  %4 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = bitcast i32* %7 to i64*
  %9 = call i64 @test_bit(i32 %3, i64* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @_PDEVB_op_active, align 4
  %13 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %14 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %13, i32 0, i32 2
  %15 = call i32 @test_and_set_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %19 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %24 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %23, i32 0, i32 0
  %25 = call i32 @schedule_work(i32* %24)
  br label %26

26:                                               ; preds = %17, %11, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
