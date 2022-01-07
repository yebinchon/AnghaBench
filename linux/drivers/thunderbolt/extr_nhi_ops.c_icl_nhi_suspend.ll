; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi_ops.c_icl_nhi_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi_ops.c_icl_nhi_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_nhi = type { i32 }

@ICL_LC_PREPARE_FOR_RESET = common dso_local global i32 0, align 4
@ICL_LC_MAILBOX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_nhi*)* @icl_nhi_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_nhi_suspend(%struct.tb_nhi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_nhi*, align 8
  %4 = alloca i32, align 4
  store %struct.tb_nhi* %0, %struct.tb_nhi** %3, align 8
  %5 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %6 = call i64 @icl_nhi_is_device_connected(%struct.tb_nhi* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %11 = load i32, i32* @ICL_LC_PREPARE_FOR_RESET, align 4
  %12 = call i32 @icl_nhi_lc_mailbox_cmd(%struct.tb_nhi* %10, i32 %11)
  %13 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %14 = load i32, i32* @ICL_LC_MAILBOX_TIMEOUT, align 4
  %15 = call i32 @icl_nhi_lc_mailbox_cmd_complete(%struct.tb_nhi* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %9
  %21 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %22 = call i32 @icl_nhi_force_power(%struct.tb_nhi* %21, i32 0)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %18, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @icl_nhi_is_device_connected(%struct.tb_nhi*) #1

declare dso_local i32 @icl_nhi_lc_mailbox_cmd(%struct.tb_nhi*, i32) #1

declare dso_local i32 @icl_nhi_lc_mailbox_cmd_complete(%struct.tb_nhi*, i32) #1

declare dso_local i32 @icl_nhi_force_power(%struct.tb_nhi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
