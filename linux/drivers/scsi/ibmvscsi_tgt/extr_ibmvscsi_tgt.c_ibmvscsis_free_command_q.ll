; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_free_command_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_free_command_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@CRQ_CLOSED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"free_command_q: flags 0x%x, state 0x%hx, acr_flags 0x%x, acr_state 0x%hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*)* @ibmvscsis_free_command_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_free_command_q(%struct.scsi_info* %0) #0 {
  %2 = alloca %struct.scsi_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %2, align 8
  %7 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CRQ_CLOSED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %99, label %14

14:                                               ; preds = %1
  %15 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vio_disable_interrupts(i32 %17)
  %19 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %23 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %4, align 4
  %25 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %28 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %27, i32 0, i32 3
  store i32 0, i32* %28, align 8
  %29 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %30 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %29, i32 0, i32 7
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %33 = call i64 @ibmvscsis_unregister_command_q(%struct.scsi_info* %32)
  store i64 %33, i64* %6, align 8
  %34 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %35 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %34, i32 0, i32 7
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %39 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %14
  %43 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %44 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %47 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %14
  %49 = load i32, i32* %4, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %52 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %50, %53
  %55 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %56 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @ADAPT_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %48
  %61 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %62 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = mul nsw i32 %64, %65
  store i32 %66, i32* %3, align 4
  %67 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %68 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @memset(i32 %70, i32 0, i32 %71)
  %73 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %74 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @CRQ_CLOSED, align 4
  %77 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %78 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %82 = call i32 @ibmvscsis_delete_client_info(%struct.scsi_info* %81, i32 0)
  br label %83

83:                                               ; preds = %60, %48
  %84 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %85 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %84, i32 0, i32 5
  %86 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %87 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %90 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %93 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %96 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @dev_dbg(i32* %85, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %91, i32 %94, i64 %97)
  br label %99

99:                                               ; preds = %83, %1
  %100 = load i64, i64* %6, align 8
  ret i64 %100
}

declare dso_local i32 @vio_disable_interrupts(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @ibmvscsis_unregister_command_q(%struct.scsi_info*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ibmvscsis_delete_client_info(%struct.scsi_info*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
