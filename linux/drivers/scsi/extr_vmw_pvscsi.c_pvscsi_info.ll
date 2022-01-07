; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.pvscsi_adapter = type { i32, i32, i32, i32 }

@pvscsi_info.buf = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [88 x i8] c"VMware PVSCSI storage adapter rev %d, req/cmp/msg rings: %u/%u/%u pages, cmd_per_lun=%u\00", align 1
@pvscsi_template = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Scsi_Host*)* @pvscsi_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pvscsi_info(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.pvscsi_adapter*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %5 = call %struct.pvscsi_adapter* @shost_priv(%struct.Scsi_Host* %4)
  store %struct.pvscsi_adapter* %5, %struct.pvscsi_adapter** %3, align 8
  %6 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pvscsi_template, i32 0, i32 0), align 4
  %19 = call i32 @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pvscsi_info.buf, i64 0, i64 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %17, i32 %18)
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pvscsi_info.buf, i64 0, i64 0)
}

declare dso_local %struct.pvscsi_adapter* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
