; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_reset_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_reset_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32 }

@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_erp_adapter_reset_sync(%struct.zfcp_adapter* %0, i8* %1) #0 {
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca i8*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %6 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %7 = call i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter* %5, i32 %6)
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %9 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %8, i32 %9, i8* %10)
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %13 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %12)
  ret void
}

declare dso_local i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*) #1

declare dso_local i32 @zfcp_erp_wait(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
