; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_flush_rscn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_flush_rscn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, i32**, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.Scsi_Host = type { i32 }

@FC_RSCN_MODE = common dso_local global i32 0, align 4
@FC_RSCN_DISCOVERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_els_flush_rscn(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %6 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %7 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %9 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %8, i32 0, i32 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  store %struct.lpfc_hba* %10, %struct.lpfc_hba** %4, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @spin_lock_irq(i32 %13)
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %16 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @spin_unlock_irq(i32 %22)
  br label %79

24:                                               ; preds = %1
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %26 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @spin_unlock_irq(i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %53, %24
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %40 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %39, i32 0, i32 3
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @lpfc_in_buf_free(%struct.lpfc_hba* %38, i32* %45)
  %47 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %48 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %47, i32 0, i32 3
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %31

56:                                               ; preds = %31
  %57 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %58 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @spin_lock_irq(i32 %59)
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %62 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* @FC_RSCN_MODE, align 4
  %64 = load i32, i32* @FC_RSCN_DISCOVERY, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %68 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %72 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @spin_unlock_irq(i32 %73)
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %76 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %75)
  %77 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %78 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %56, %19
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_in_buf_free(%struct.lpfc_hba*, i32*) #1

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
