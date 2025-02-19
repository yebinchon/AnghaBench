; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_wait_for_chip_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_wait_for_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@MAX_LOOP_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@ABORT_ISP_ACTIVE = common dso_local global i32 0, align 4
@ISP_ABORT_RETRY = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_wait_for_chip_reset(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %5, align 8
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %11 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_6__* @pci_get_drvdata(i32 %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* @MAX_LOOP_TIMEOUT, align 8
  %16 = load i64, i64* @HZ, align 8
  %17 = mul i64 %15, %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %63, %1
  %20 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ISP_ABORT_RETRY, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %31, %25, %19
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @time_before(i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %64

49:                                               ; preds = %47
  %50 = call i32 @msleep(i32 1000)
  %51 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %64

63:                                               ; preds = %56, %49
  br label %19

64:                                               ; preds = %62, %47
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %66 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %71, i32* %3, align 4
  br label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_6__* @pci_get_drvdata(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
