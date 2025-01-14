; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_write_eq_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_write_eq_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_queue = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_register = type { i64 }

@lpfc_eqcq_doorbell_arm = common dso_local global i32 0, align 4
@lpfc_eqcq_doorbell_eqci = common dso_local global i32 0, align 4
@lpfc_eqcq_doorbell_num_released = common dso_local global i32 0, align 4
@lpfc_eqcq_doorbell_qt = common dso_local global i32 0, align 4
@LPFC_QUEUE_TYPE_EVENT = common dso_local global i32 0, align 4
@lpfc_eqcq_doorbell_eqid_hi = common dso_local global i32 0, align 4
@LPFC_EQID_HI_FIELD_SHIFT = common dso_local global i32 0, align 4
@lpfc_eqcq_doorbell_eqid_lo = common dso_local global i32 0, align 4
@INTx = common dso_local global i64 0, align 8
@LPFC_QUEUE_REARM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_write_eq_db(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_register, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %11 = icmp ne %struct.lpfc_queue* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br label %21

21:                                               ; preds = %19, %4
  %22 = phi i1 [ true, %4 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %83

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %9, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* @lpfc_eqcq_doorbell_arm, align 4
  %33 = call i32 @bf_set(i32 %32, %struct.lpfc_register* %9, i32 1)
  %34 = load i32, i32* @lpfc_eqcq_doorbell_eqci, align 4
  %35 = call i32 @bf_set(i32 %34, %struct.lpfc_register* %9, i32 1)
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i32, i32* @lpfc_eqcq_doorbell_num_released, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @bf_set(i32 %37, %struct.lpfc_register* %9, i32 %38)
  %40 = load i32, i32* @lpfc_eqcq_doorbell_qt, align 4
  %41 = load i32, i32* @LPFC_QUEUE_TYPE_EVENT, align 4
  %42 = call i32 @bf_set(i32 %40, %struct.lpfc_register* %9, i32 %41)
  %43 = load i32, i32* @lpfc_eqcq_doorbell_eqid_hi, align 4
  %44 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %45 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @LPFC_EQID_HI_FIELD_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = call i32 @bf_set(i32 %43, %struct.lpfc_register* %9, i32 %48)
  %50 = load i32, i32* @lpfc_eqcq_doorbell_eqid_lo, align 4
  %51 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %52 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @bf_set(i32 %50, %struct.lpfc_register* %9, i32 %53)
  %55 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %58 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @writel(i64 %56, i32 %62)
  %64 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %65 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @INTx, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %36
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %77 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @readl(i32 %81)
  br label %83

83:                                               ; preds = %26, %75, %71, %36
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bf_set(i32, %struct.lpfc_register*, i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
