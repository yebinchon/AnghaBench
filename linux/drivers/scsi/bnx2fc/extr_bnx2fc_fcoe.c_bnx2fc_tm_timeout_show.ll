; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_tm_timeout_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_tm_timeout_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fcoe_port = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bnx2fc_tm_timeout_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_tm_timeout_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.fc_lport*, align 8
  %9 = alloca %struct.fcoe_port*, align 8
  %10 = alloca %struct.bnx2fc_interface*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %7, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %14 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %13)
  store %struct.fc_lport* %14, %struct.fc_lport** %8, align 8
  %15 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %16 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %15)
  store %struct.fcoe_port* %16, %struct.fcoe_port** %9, align 8
  %17 = load %struct.fcoe_port*, %struct.fcoe_port** %9, align 8
  %18 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %17, i32 0, i32 0
  %19 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %18, align 8
  store %struct.bnx2fc_interface* %19, %struct.bnx2fc_interface** %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %10, align 8
  %22 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strlen(i8* %25)
  ret i32 %26
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
