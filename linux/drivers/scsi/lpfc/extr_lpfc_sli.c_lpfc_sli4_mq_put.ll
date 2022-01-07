; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_mq_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_mq_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_mqe = type { i32 }
%struct.lpfc_register = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@lpfc_mq_doorbell_num_posted = common dso_local global i32 0, align 4
@lpfc_mq_doorbell_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_queue*, %struct.lpfc_mqe*)* @lpfc_sli4_mq_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_mq_put(%struct.lpfc_queue* %0, %struct.lpfc_mqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_queue*, align 8
  %5 = alloca %struct.lpfc_mqe*, align 8
  %6 = alloca %struct.lpfc_mqe*, align 8
  %7 = alloca %struct.lpfc_register, align 8
  store %struct.lpfc_queue* %0, %struct.lpfc_queue** %4, align 8
  store %struct.lpfc_mqe* %1, %struct.lpfc_mqe** %5, align 8
  %8 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %9 = icmp ne %struct.lpfc_queue* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %78

17:                                               ; preds = %2
  %18 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %19 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.lpfc_mqe* @lpfc_sli4_qe(%struct.lpfc_queue* %18, i32 %21)
  store %struct.lpfc_mqe* %22, %struct.lpfc_mqe** %6, align 8
  %23 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %24 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %26, %29
  %31 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %17
  %39 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %5, align 8
  %40 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %41 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %42 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @lpfc_sli4_pcimem_bcopy(%struct.lpfc_mqe* %39, %struct.lpfc_mqe* %40, i32 %43)
  %45 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %46 = bitcast %struct.lpfc_mqe* %45 to i32*
  %47 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %47, i32 0, i32 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32* %46, i32** %50, align 8
  %51 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  %55 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %56 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %54, %57
  %59 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %60 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @lpfc_mq_doorbell_num_posted, align 4
  %63 = call i32 @bf_set(i32 %62, %struct.lpfc_register* %7, i32 1)
  %64 = load i32, i32* @lpfc_mq_doorbell_id, align 4
  %65 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %66 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bf_set(i32 %64, %struct.lpfc_register* %7, i32 %67)
  %69 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %72 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %71, i32 0, i32 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @writel(i64 %70, i32 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %38, %35, %14
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.lpfc_mqe* @lpfc_sli4_qe(%struct.lpfc_queue*, i32) #1

declare dso_local i32 @lpfc_sli4_pcimem_bcopy(%struct.lpfc_mqe*, %struct.lpfc_mqe*, i32) #1

declare dso_local i32 @bf_set(i32, %struct.lpfc_register*, i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
