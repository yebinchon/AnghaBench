; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_wait_for_hba_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_wait_for_hba_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i64 }

@FX00_RESET_RECOVERY = common dso_local global i32 0, align 4
@FX00_TARGET_SCAN = common dso_local global i32 0, align 4
@UNLOADING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @qla2x00_wait_for_hba_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_wait_for_hba_ready(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  store %struct.qla_hw_data* %7, %struct.qla_hw_data** %3, align 8
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %9 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_7__* @pci_get_drvdata(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  br label %12

12:                                               ; preds = %48, %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = call i64 @qla2x00_reset_active(%struct.TYPE_7__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %12
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %16
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @FX00_RESET_RECOVERY, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @FX00_TARGET_SCAN, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %33, %27, %21, %16, %12
  %40 = phi i1 [ true, %27 ], [ true, %21 ], [ true, %16 ], [ true, %12 ], [ %38, %33 ]
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = load i32, i32* @UNLOADING, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %50

48:                                               ; preds = %41
  %49 = call i32 @msleep(i32 1000)
  br label %12

50:                                               ; preds = %47, %39
  ret void
}

declare dso_local %struct.TYPE_7__* @pci_get_drvdata(i32) #1

declare dso_local i64 @qla2x00_reset_active(%struct.TYPE_7__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
