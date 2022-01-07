; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_hard_reset_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_hard_reset_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i64, i64, i64 }

@PD_N_HARD_RESET_COUNT = common dso_local global i64 0, align 8
@HARD_RESET_SEND = common dso_local global i32 0, align 4
@ERROR_RECOVERY = common dso_local global i32 0, align 4
@TYPEC_SOURCE = common dso_local global i64 0, align 8
@SRC_UNATTACHED = common dso_local global i32 0, align 4
@SNK_WAIT_CAPABILITIES = common dso_local global i64 0, align 8
@SNK_READY = common dso_local global i32 0, align 4
@SNK_UNATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*)* @hard_reset_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hard_reset_state(%struct.tcpm_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpm_port*, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  %4 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %5 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PD_N_HARD_RESET_COUNT, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @HARD_RESET_SEND, align 4
  store i32 %10, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %13 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @ERROR_RECOVERY, align 4
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %11
  %19 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %20 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TYPEC_SOURCE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @SRC_UNATTACHED, align 4
  store i32 %25, i32* %2, align 4
  br label %36

26:                                               ; preds = %18
  %27 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %28 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SNK_WAIT_CAPABILITIES, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @SNK_READY, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @SNK_UNATTACHED, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %32, %24, %16, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
