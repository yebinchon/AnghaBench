; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, i32, i32)* @lpfc_nlp_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nlp_counters(%struct.lpfc_vport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %10 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %7, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32 %13, i64 %14)
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %77 [
    i32 128, label %17
    i32 132, label %23
    i32 135, label %29
    i32 130, label %35
    i32 131, label %41
    i32 129, label %47
    i32 134, label %53
    i32 133, label %59
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %77

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %77

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %77

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %38 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %77

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %77

47:                                               ; preds = %3
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %50 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %77

53:                                               ; preds = %3
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %56 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %77

59:                                               ; preds = %3
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %61 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %69 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %68, i32 0, i32 7
  store i32 0, i32* %69, align 4
  br label %76

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %73 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %67
  br label %77

77:                                               ; preds = %3, %76, %53, %47, %41, %35, %29, %23, %17
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %79 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32 %80, i64 %81)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
