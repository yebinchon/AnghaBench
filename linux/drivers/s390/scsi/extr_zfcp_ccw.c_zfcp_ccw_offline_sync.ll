; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_offline_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_offline_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.zfcp_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32, i8*)* @zfcp_ccw_offline_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_ccw_offline_sync(%struct.ccw_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.zfcp_adapter*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %10 = call %struct.zfcp_adapter* @zfcp_ccw_adapter_by_cdev(%struct.ccw_device* %9)
  store %struct.zfcp_adapter* %10, %struct.zfcp_adapter** %8, align 8
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %12 = icmp ne %struct.zfcp_adapter* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %25

14:                                               ; preds = %3
  %15 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter* %15, i32 %16)
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %18, i32 0, i8* %19)
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %22 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %21)
  %23 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %24 = call i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter* %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %14, %13
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.zfcp_adapter* @zfcp_ccw_adapter_by_cdev(%struct.ccw_device*) #1

declare dso_local i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter*, i32, i8*) #1

declare dso_local i32 @zfcp_erp_wait(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
