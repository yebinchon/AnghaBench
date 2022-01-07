; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_get_trap_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_get_trap_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qeth_trap_id = type { i32, i32, i32, i32, i32 }
%struct.sysinfo_2_2_2 = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sysinfo_3_2_2 = type { %struct.TYPE_4__*, i32 }
%struct.ccw_dev_id = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.qeth_trap_id*)* @qeth_get_trap_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_get_trap_id(%struct.qeth_card* %0, %struct.qeth_trap_id* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.qeth_trap_id*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sysinfo_2_2_2*, align 8
  %7 = alloca %struct.sysinfo_3_2_2*, align 8
  %8 = alloca %struct.ccw_dev_id, align 4
  %9 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store %struct.qeth_trap_id* %1, %struct.qeth_trap_id** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @get_zeroed_page(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.sysinfo_2_2_2*
  store %struct.sysinfo_2_2_2* %13, %struct.sysinfo_2_2_2** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to %struct.sysinfo_3_2_2*
  store %struct.sysinfo_3_2_2* %15, %struct.sysinfo_3_2_2** %7, align 8
  %16 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qeth_trap_id*, %struct.qeth_trap_id** %4, align 8
  %21 = getelementptr inbounds %struct.qeth_trap_id, %struct.qeth_trap_id* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %23 = call i32 @CARD_RDEV(%struct.qeth_card* %22)
  %24 = call i32 @ccw_device_get_id(i32 %23, %struct.ccw_dev_id* %8)
  %25 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %8, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qeth_trap_id*, %struct.qeth_trap_id** %4, align 8
  %28 = getelementptr inbounds %struct.qeth_trap_id, %struct.qeth_trap_id* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qeth_trap_id*, %struct.qeth_trap_id** %4, align 8
  %32 = getelementptr inbounds %struct.qeth_trap_id, %struct.qeth_trap_id* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %80

36:                                               ; preds = %2
  %37 = call i64 @stsi(%struct.sysinfo_3_2_2* null, i32 0, i32 0, i32 0)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %39, 2
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.sysinfo_2_2_2*, %struct.sysinfo_2_2_2** %6, align 8
  %43 = bitcast %struct.sysinfo_2_2_2* %42 to %struct.sysinfo_3_2_2*
  %44 = call i64 @stsi(%struct.sysinfo_3_2_2* %43, i32 2, i32 2, i32 2)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.sysinfo_2_2_2*, %struct.sysinfo_2_2_2** %6, align 8
  %48 = getelementptr inbounds %struct.sysinfo_2_2_2, %struct.sysinfo_2_2_2* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.qeth_trap_id*, %struct.qeth_trap_id** %4, align 8
  %51 = getelementptr inbounds %struct.qeth_trap_id, %struct.qeth_trap_id* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %41, %36
  %53 = load i32, i32* %9, align 4
  %54 = icmp sge i32 %53, 3
  br i1 %54, label %55, label %77

55:                                               ; preds = %52
  %56 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %7, align 8
  %57 = call i64 @stsi(%struct.sysinfo_3_2_2* %56, i32 3, i32 2, i32 2)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %7, align 8
  %61 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @EBCASC(i32 %65, i32 4)
  %67 = load %struct.qeth_trap_id*, %struct.qeth_trap_id** %4, align 8
  %68 = getelementptr inbounds %struct.qeth_trap_id, %struct.qeth_trap_id* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %7, align 8
  %71 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(i32 %69, i32 %75, i32 4)
  br label %77

77:                                               ; preds = %59, %55, %52
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @free_page(i64 %78)
  br label %80

80:                                               ; preds = %77, %35
  ret void
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ccw_device_get_id(i32, %struct.ccw_dev_id*) #1

declare dso_local i32 @CARD_RDEV(%struct.qeth_card*) #1

declare dso_local i64 @stsi(%struct.sysinfo_3_2_2*, i32, i32, i32) #1

declare dso_local i32 @EBCASC(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
