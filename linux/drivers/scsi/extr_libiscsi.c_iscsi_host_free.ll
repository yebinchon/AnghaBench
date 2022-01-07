; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_host_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_host_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iscsi_host = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_host_free(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.iscsi_host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %5 = call %struct.iscsi_host* @shost_priv(%struct.Scsi_Host* %4)
  store %struct.iscsi_host* %5, %struct.iscsi_host** %3, align 8
  %6 = load %struct.iscsi_host*, %struct.iscsi_host** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @kfree(i32 %8)
  %10 = load %struct.iscsi_host*, %struct.iscsi_host** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kfree(i32 %12)
  %14 = load %struct.iscsi_host*, %struct.iscsi_host** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kfree(i32 %16)
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %19 = call i32 @scsi_host_put(%struct.Scsi_Host* %18)
  ret void
}

declare dso_local %struct.iscsi_host* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
