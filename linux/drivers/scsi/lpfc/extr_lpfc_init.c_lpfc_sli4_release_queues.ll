; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_release_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_release_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_queue***, i32)* @lpfc_sli4_release_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_release_queues(%struct.lpfc_queue*** %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_queue***, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lpfc_queue*** %0, %struct.lpfc_queue**** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lpfc_queue***, %struct.lpfc_queue**** %3, align 8
  %7 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %6, align 8
  %8 = icmp eq %struct.lpfc_queue** %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %30

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %22, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load %struct.lpfc_queue***, %struct.lpfc_queue**** %3, align 8
  %17 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.lpfc_queue*, %struct.lpfc_queue** %17, i64 %19
  %21 = call i32 @__lpfc_sli4_release_queue(%struct.lpfc_queue** %20)
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load %struct.lpfc_queue***, %struct.lpfc_queue**** %3, align 8
  %27 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %26, align 8
  %28 = call i32 @kfree(%struct.lpfc_queue** %27)
  %29 = load %struct.lpfc_queue***, %struct.lpfc_queue**** %3, align 8
  store %struct.lpfc_queue** null, %struct.lpfc_queue*** %29, align 8
  br label %30

30:                                               ; preds = %25, %9
  ret void
}

declare dso_local i32 @__lpfc_sli4_release_queue(%struct.lpfc_queue**) #1

declare dso_local i32 @kfree(%struct.lpfc_queue**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
