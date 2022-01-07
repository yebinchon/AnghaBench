; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_bind_adapter_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_bind_adapter_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_hba = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2fc_hba*)* @bnx2fc_bind_adapter_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_bind_adapter_devices(%struct.bnx2fc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2fc_hba*, align 8
  store %struct.bnx2fc_hba* %0, %struct.bnx2fc_hba** %3, align 8
  %4 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %3, align 8
  %5 = call i64 @bnx2fc_setup_task_ctx(%struct.bnx2fc_hba* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %14

8:                                                ; preds = %1
  %9 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %3, align 8
  %10 = call i64 @bnx2fc_setup_fw_resc(%struct.bnx2fc_hba* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %14

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %19

14:                                               ; preds = %12, %7
  %15 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %3, align 8
  %16 = call i32 @bnx2fc_unbind_adapter_devices(%struct.bnx2fc_hba* %15)
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @bnx2fc_setup_task_ctx(%struct.bnx2fc_hba*) #1

declare dso_local i64 @bnx2fc_setup_fw_resc(%struct.bnx2fc_hba*) #1

declare dso_local i32 @bnx2fc_unbind_adapter_devices(%struct.bnx2fc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
