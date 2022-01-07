; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_do_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_do_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvscsi_host_data = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"error after %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvscsi_host_data*)* @ibmvscsi_do_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsi_do_work(%struct.ibmvscsi_host_data* %0) #0 {
  %2 = alloca %struct.ibmvscsi_host_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.ibmvscsi_host_data* %0, %struct.ibmvscsi_host_data** %2, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %7 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %14 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %73 [
    i32 128, label %16
    i32 129, label %17
    i32 130, label %47
    i32 131, label %72
  ]

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %81

17:                                               ; preds = %1
  %18 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %19 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32 %22, i64 %23)
  %25 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %26 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %25, i32 0, i32 4
  %27 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %28 = call i32 @ibmvscsi_reset_crq_queue(i32* %26, %struct.ibmvscsi_host_data* %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %30 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @spin_lock_irqsave(i32 %33, i64 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %17
  %39 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %40 = call i32 @ibmvscsi_send_crq(%struct.ibmvscsi_host_data* %39, i32 0, i32 0)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %17
  %42 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %43 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @to_vio_dev(i32 %44)
  %46 = call i32 @vio_enable_interrupts(i32 %45)
  br label %81

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %48 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %49 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32 %52, i64 %53)
  %55 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %56 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %55, i32 0, i32 4
  %57 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %58 = call i32 @ibmvscsi_reenable_crq_queue(i32* %56, %struct.ibmvscsi_host_data* %57)
  store i32 %58, i32* %4, align 4
  %59 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %60 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @spin_lock_irqsave(i32 %63, i64 %64)
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %47
  %69 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %70 = call i32 @ibmvscsi_send_crq(%struct.ibmvscsi_host_data* %69, i32 0, i32 0)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %47
  br label %81

72:                                               ; preds = %1
  br label %73

73:                                               ; preds = %1, %72
  %74 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %75 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32 %78, i64 %79)
  br label %107

81:                                               ; preds = %71, %41, %16
  %82 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %83 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %82, i32 0, i32 0
  store i32 131, i32* %83, align 8
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %88 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %87, i32 0, i32 3
  %89 = call i32 @atomic_set(i32* %88, i32 -1)
  %90 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %91 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %86, %81
  %96 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %97 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %3, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32 %100, i64 %101)
  %103 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %104 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = call i32 @scsi_unblock_requests(%struct.TYPE_2__* %105)
  br label %107

107:                                              ; preds = %95, %73
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ibmvscsi_reset_crq_queue(i32*, %struct.ibmvscsi_host_data*) #1

declare dso_local i32 @ibmvscsi_send_crq(%struct.ibmvscsi_host_data*, i32, i32) #1

declare dso_local i32 @vio_enable_interrupts(i32) #1

declare dso_local i32 @to_vio_dev(i32) #1

declare dso_local i32 @ibmvscsi_reenable_crq_queue(i32*, %struct.ibmvscsi_host_data*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @scsi_unblock_requests(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
