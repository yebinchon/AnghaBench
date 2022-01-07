; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_vport_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_vport_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_vport_identifiers = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fc_vport* @fc_vport_create(%struct.Scsi_Host* %0, i32 %1, %struct.fc_vport_identifiers* %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_vport_identifiers*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fc_vport*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fc_vport_identifiers* %2, %struct.fc_vport_identifiers** %6, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load %struct.fc_vport_identifiers*, %struct.fc_vport_identifiers** %6, align 8
  %14 = call i32 @fc_vport_setup(%struct.Scsi_Host* %9, i32 %10, i32* %12, %struct.fc_vport_identifiers* %13, %struct.fc_vport** %8)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %20

18:                                               ; preds = %3
  %19 = load %struct.fc_vport*, %struct.fc_vport** %8, align 8
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi %struct.fc_vport* [ null, %17 ], [ %19, %18 ]
  ret %struct.fc_vport* %21
}

declare dso_local i32 @fc_vport_setup(%struct.Scsi_Host*, i32, i32*, %struct.fc_vport_identifiers*, %struct.fc_vport**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
