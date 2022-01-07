; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_disc_set_adisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_disc_set_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i64 }
%struct.lpfc_nodelist = type { i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@NLP_NPR_ADISC = common dso_local global i32 0, align 4
@FC_PT2PT = common dso_local global i32 0, align 4
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@NLP_FCP_2_DEVICE = common dso_local global i32 0, align 4
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*)* @lpfc_disc_set_adisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_disc_set_adisc(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %5, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %8 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %7)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %6, align 8
  %9 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %10 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %2
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @spin_lock_irq(i32 %18)
  %20 = load i32, i32* @NLP_NPR_ADISC, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @spin_unlock_irq(i32 %28)
  store i32 0, i32* %3, align 4
  br label %96

30:                                               ; preds = %2
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FC_PT2PT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %78, label %37

37:                                               ; preds = %30
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %37
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FC_RSCN_MODE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %42
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %51 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NLP_FCP_2_DEVICE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %49
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %58 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NLP_FCP_TARGET, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %56, %42
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @spin_lock_irq(i32 %66)
  %68 = load i32, i32* @NLP_NPR_ADISC, align 4
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %70 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %74 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @spin_unlock_irq(i32 %75)
  store i32 1, i32* %3, align 4
  br label %96

77:                                               ; preds = %56, %49, %37
  br label %78

78:                                               ; preds = %77, %30
  %79 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %80 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @spin_lock_irq(i32 %81)
  %83 = load i32, i32* @NLP_NPR_ADISC, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %86 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %90 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @spin_unlock_irq(i32 %91)
  %93 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %94 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %95 = call i32 @lpfc_unreg_rpi(%struct.lpfc_vport* %93, %struct.lpfc_nodelist* %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %78, %63, %15
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_unreg_rpi(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
