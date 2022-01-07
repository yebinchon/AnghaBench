; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_check_clean_addr_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_check_clean_addr_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i64, i32, i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64 }
%struct.serv_parm = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@FAWWPN_PARAM_CHG = common dso_local global i32 0, align 4
@FC_DISC_DELAYED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.serv_parm*)* @lpfc_check_clean_addr_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_check_clean_addr_bit(%struct.lpfc_vport* %0, %struct.serv_parm* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.serv_parm*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.serv_parm* %1, %struct.serv_parm** %4, align 8
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %8, i32 0, i32 6
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  store %struct.lpfc_hba* %10, %struct.lpfc_hba** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %12 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %7, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %2
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %21, i32 0, i32 5
  %23 = load %struct.serv_parm*, %struct.serv_parm** %4, align 8
  %24 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %23, i32 0, i32 2
  %25 = call i64 @memcmp(i32* %22, i32* %24, i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %20
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %29 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %28, i32 0, i32 4
  %30 = load %struct.serv_parm*, %struct.serv_parm** %4, align 8
  %31 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %30, i32 0, i32 1
  %32 = call i64 @memcmp(i32* %29, i32* %31, i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FAWWPN_PARAM_CHG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34, %27, %20, %2
  store i32 1, i32* %6, align 4
  %42 = load i32, i32* @FAWWPN_PARAM_CHG, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %45 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %41, %34
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %48
  %52 = load %struct.serv_parm*, %struct.serv_parm** %4, align 8
  %53 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %51
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %59 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62, %57
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %69 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @spin_lock_irq(i32 %70)
  %72 = load i32, i32* @FC_DISC_DELAYED, align 4
  %73 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %74 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %78 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @spin_unlock_irq(i32 %79)
  br label %81

81:                                               ; preds = %67, %62, %51, %48
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
