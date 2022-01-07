; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_vport_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_vport_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i64 }
%struct.bfad_vport_s = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.bfad_s* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.bfad_s = type { i32, i32 }
%struct.bfa_fcs_vport_s = type { i32 }

@VPCERR_BAD_WWN = common dso_local global i32 0, align 4
@FC_VPORT_DISABLED = common dso_local global i32 0, align 4
@FC_VPORT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_vport*, i32)* @bfad_im_vport_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_vport_disable(%struct.fc_vport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfad_vport_s*, align 8
  %7 = alloca %struct.bfad_s*, align 8
  %8 = alloca %struct.bfa_fcs_vport_s*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.fc_vport* %0, %struct.fc_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %13 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.bfad_vport_s*
  store %struct.bfad_vport_s* %15, %struct.bfad_vport_s** %6, align 8
  %16 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %6, align 8
  %17 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.bfad_s*, %struct.bfad_s** %18, align 8
  store %struct.bfad_s* %19, %struct.bfad_s** %7, align 8
  %20 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %6, align 8
  %21 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %24, align 8
  store %struct.Scsi_Host* %25, %struct.Scsi_Host** %9, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %27 = call i32 @fc_host_port_name(%struct.Scsi_Host* %26)
  %28 = call i32 @u64_to_wwn(i32 %27, i32* %10)
  %29 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %30 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %29, i32 0, i32 0
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %34 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %33, i32 0, i32 1
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.bfa_fcs_vport_s* @bfa_fcs_vport_lookup(i32* %34, i32 0, i32 %35)
  store %struct.bfa_fcs_vport_s* %36, %struct.bfa_fcs_vport_s** %8, align 8
  %37 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %38 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %37, i32 0, i32 0
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %8, align 8
  %42 = icmp eq %struct.bfa_fcs_vport_s* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @VPCERR_BAD_WWN, align 4
  store i32 %44, i32* %3, align 4
  br label %61

45:                                               ; preds = %2
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %8, align 8
  %50 = call i32 @bfa_fcs_vport_stop(%struct.bfa_fcs_vport_s* %49)
  %51 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %52 = load i32, i32* @FC_VPORT_DISABLED, align 4
  %53 = call i32 @fc_vport_set_state(%struct.fc_vport* %51, i32 %52)
  br label %60

54:                                               ; preds = %45
  %55 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %8, align 8
  %56 = call i32 @bfa_fcs_vport_start(%struct.bfa_fcs_vport_s* %55)
  %57 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %58 = load i32, i32* @FC_VPORT_ACTIVE, align 4
  %59 = call i32 @fc_vport_set_state(%struct.fc_vport* %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %48
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @u64_to_wwn(i32, i32*) #1

declare dso_local i32 @fc_host_port_name(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcs_vport_s* @bfa_fcs_vport_lookup(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_fcs_vport_stop(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @fc_vport_set_state(%struct.fc_vport*, i32) #1

declare dso_local i32 @bfa_fcs_vport_start(%struct.bfa_fcs_vport_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
