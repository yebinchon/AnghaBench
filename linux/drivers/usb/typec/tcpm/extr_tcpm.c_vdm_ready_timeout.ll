; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_vdm_ready_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_vdm_ready_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PD_T_VDM_UNSTRUCTURED = common dso_local global i32 0, align 4
@CMD_ENTER_MODE = common dso_local global i32 0, align 4
@CMD_EXIT_MODE = common dso_local global i32 0, align 4
@PD_T_VDM_WAIT_MODE_E = common dso_local global i32 0, align 4
@PD_T_VDM_SNDR_RSP = common dso_local global i32 0, align 4
@PD_T_VDM_E_MODE = common dso_local global i32 0, align 4
@PD_T_VDM_RCVR_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vdm_ready_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdm_ready_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @PD_VDO_CMD(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @PD_VDO_SVDM(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @PD_T_VDM_UNSTRUCTURED, align 4
  store i32 %12, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @PD_VDO_CMDT(i32 %14)
  switch i32 %15, label %29 [
    i32 128, label %16
  ]

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CMD_ENTER_MODE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @CMD_EXIT_MODE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @PD_T_VDM_WAIT_MODE_E, align 4
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @PD_T_VDM_SNDR_RSP, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %42

29:                                               ; preds = %13
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CMD_ENTER_MODE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @CMD_EXIT_MODE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @PD_T_VDM_E_MODE, align 4
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @PD_T_VDM_RCVR_RSP, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @PD_VDO_CMD(i32) #1

declare dso_local i32 @PD_VDO_SVDM(i32) #1

declare dso_local i32 @PD_VDO_CMDT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
