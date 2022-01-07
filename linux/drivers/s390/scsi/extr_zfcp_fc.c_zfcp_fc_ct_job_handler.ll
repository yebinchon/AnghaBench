; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ct_job_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ct_job_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32 }
%struct.zfcp_fc_wka_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @zfcp_fc_ct_job_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_ct_job_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.zfcp_fc_wka_port*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bsg_job*
  store %struct.bsg_job* %6, %struct.bsg_job** %3, align 8
  %7 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %8 = call %struct.zfcp_fc_wka_port* @zfcp_fc_job_wka_port(%struct.bsg_job* %7)
  store %struct.zfcp_fc_wka_port* %8, %struct.zfcp_fc_wka_port** %4, align 8
  %9 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %4, align 8
  %10 = call i32 @zfcp_fc_wka_port_put(%struct.zfcp_fc_wka_port* %9)
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @zfcp_fc_ct_els_job_handler(i8* %11)
  ret void
}

declare dso_local %struct.zfcp_fc_wka_port* @zfcp_fc_job_wka_port(%struct.bsg_job*) #1

declare dso_local i32 @zfcp_fc_wka_port_put(%struct.zfcp_fc_wka_port*) #1

declare dso_local i32 @zfcp_fc_ct_els_job_handler(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
