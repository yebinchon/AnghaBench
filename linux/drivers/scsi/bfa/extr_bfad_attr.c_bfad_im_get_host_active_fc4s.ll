; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_get_host_active_fc4s.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_get_host_active_fc4s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64* }
%struct.bfad_im_port_s = type { %struct.bfad_port_s* }
%struct.bfad_port_s = type { i32 }

@BFA_LPORT_ROLE_FCP_IM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @bfad_im_get_host_active_fc4s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfad_im_get_host_active_fc4s(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.bfad_im_port_s*, align 8
  %4 = alloca %struct.bfad_port_s*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %10, %struct.bfad_im_port_s** %3, align 8
  %11 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %11, i32 0, i32 0
  %13 = load %struct.bfad_port_s*, %struct.bfad_port_s** %12, align 8
  store %struct.bfad_port_s* %13, %struct.bfad_port_s** %4, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %15 = call i32* @fc_host_active_fc4s(%struct.Scsi_Host* %14)
  %16 = call i32 @memset(i32* %15, i32 0, i32 8)
  %17 = load %struct.bfad_port_s*, %struct.bfad_port_s** %4, align 8
  %18 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BFA_LPORT_ROLE_FCP_IM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %25 = call i32* @fc_host_active_fc4s(%struct.Scsi_Host* %24)
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %29 = call i32* @fc_host_active_fc4s(%struct.Scsi_Host* %28)
  %30 = getelementptr inbounds i32, i32* %29, i64 7
  store i32 1, i32* %30, align 4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @fc_host_active_fc4s(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
