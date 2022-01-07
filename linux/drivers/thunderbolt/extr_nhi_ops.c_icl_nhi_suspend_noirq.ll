; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi_ops.c_icl_nhi_suspend_noirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi_ops.c_icl_nhi_suspend_noirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_nhi = type { i32 }

@ICL_LC_GO2SX = common dso_local global i32 0, align 4
@ICL_LC_GO2SX_NO_WAKE = common dso_local global i32 0, align 4
@ICL_LC_MAILBOX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_nhi*, i32)* @icl_nhi_suspend_noirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_nhi_suspend_noirq(%struct.tb_nhi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_nhi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tb_nhi* %0, %struct.tb_nhi** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @pm_suspend_via_firmware()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.tb_nhi*, %struct.tb_nhi** %4, align 8
  %11 = call i32 @icl_nhi_suspend(%struct.tb_nhi* %10)
  store i32 %11, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @ICL_LC_GO2SX, align 4
  br label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @ICL_LC_GO2SX_NO_WAKE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %6, align 4
  %21 = load %struct.tb_nhi*, %struct.tb_nhi** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @icl_nhi_lc_mailbox_cmd(%struct.tb_nhi* %21, i32 %22)
  %24 = load %struct.tb_nhi*, %struct.tb_nhi** %4, align 8
  %25 = load i32, i32* @ICL_LC_MAILBOX_TIMEOUT, align 4
  %26 = call i32 @icl_nhi_lc_mailbox_cmd_complete(%struct.tb_nhi* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %19, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @pm_suspend_via_firmware(...) #1

declare dso_local i32 @icl_nhi_suspend(%struct.tb_nhi*) #1

declare dso_local i32 @icl_nhi_lc_mailbox_cmd(%struct.tb_nhi*, i32) #1

declare dso_local i32 @icl_nhi_lc_mailbox_cmd_complete(%struct.tb_nhi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
