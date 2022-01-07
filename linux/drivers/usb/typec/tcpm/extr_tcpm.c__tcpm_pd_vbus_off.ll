; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c__tcpm_pd_vbus_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c__tcpm_pd_vbus_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"VBUS off\00", align 1
@SNK_HARD_RESET_WAIT_VBUS = common dso_local global i32 0, align 4
@SRC_HARD_RESET_VBUS_ON = common dso_local global i32 0, align 4
@SRC_TRYWAIT_DEBOUNCE = common dso_local global i32 0, align 4
@SNK_UNATTACHED = common dso_local global i32 0, align 4
@PR_SWAP_SRC_SNK_SOURCE_OFF = common dso_local global i32 0, align 4
@TYPEC_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*)* @_tcpm_pd_vbus_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_tcpm_pd_vbus_off(%struct.tcpm_port* %0) #0 {
  %2 = alloca %struct.tcpm_port*, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %2, align 8
  %3 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %4 = call i32 @tcpm_log_force(%struct.tcpm_port* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %6 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %8 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %7, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %10 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %49 [
    i32 138, label %12
    i32 131, label %16
    i32 143, label %20
    i32 136, label %21
    i32 130, label %22
    i32 132, label %31
    i32 135, label %32
    i32 133, label %32
    i32 134, label %32
    i32 139, label %33
    i32 137, label %37
    i32 140, label %38
    i32 141, label %42
    i32 142, label %43
    i32 128, label %48
    i32 129, label %48
  ]

12:                                               ; preds = %1
  %13 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %14 = load i32, i32* @SNK_HARD_RESET_WAIT_VBUS, align 4
  %15 = call i32 @tcpm_set_state(%struct.tcpm_port* %13, i32 %14, i32 0)
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %18 = load i32, i32* @SRC_HARD_RESET_VBUS_ON, align 4
  %19 = call i32 @tcpm_set_state(%struct.tcpm_port* %17, i32 %18, i32 0)
  br label %65

20:                                               ; preds = %1
  br label %65

21:                                               ; preds = %1
  br label %65

22:                                               ; preds = %1
  %23 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %24 = call i32 @tcpm_port_is_source(%struct.tcpm_port* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %28 = load i32, i32* @SRC_TRYWAIT_DEBOUNCE, align 4
  %29 = call i32 @tcpm_set_state(%struct.tcpm_port* %27, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %26, %22
  br label %65

31:                                               ; preds = %1
  br label %65

32:                                               ; preds = %1, %1, %1
  br label %65

33:                                               ; preds = %1
  %34 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %35 = load i32, i32* @SNK_UNATTACHED, align 4
  %36 = call i32 @tcpm_set_state(%struct.tcpm_port* %34, i32 %35, i32 0)
  br label %65

37:                                               ; preds = %1
  br label %65

38:                                               ; preds = %1
  %39 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %40 = load i32, i32* @PR_SWAP_SRC_SNK_SOURCE_OFF, align 4
  %41 = call i32 @tcpm_set_state(%struct.tcpm_port* %39, i32 %40, i32 0)
  br label %65

42:                                               ; preds = %1
  br label %65

43:                                               ; preds = %1
  %44 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %45 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %46 = call i32 @tcpm_default_state(%struct.tcpm_port* %45)
  %47 = call i32 @tcpm_set_state(%struct.tcpm_port* %44, i32 %46, i32 0)
  br label %65

48:                                               ; preds = %1, %1
  br label %65

49:                                               ; preds = %1
  %50 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %51 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TYPEC_SINK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %57 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %62 = load i32, i32* @SNK_UNATTACHED, align 4
  %63 = call i32 @tcpm_set_state(%struct.tcpm_port* %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %60, %55, %49
  br label %65

65:                                               ; preds = %64, %48, %43, %42, %38, %37, %33, %32, %31, %30, %21, %20, %16, %12
  ret void
}

declare dso_local i32 @tcpm_log_force(%struct.tcpm_port*, i8*) #1

declare dso_local i32 @tcpm_set_state(%struct.tcpm_port*, i32, i32) #1

declare dso_local i32 @tcpm_port_is_source(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_default_state(%struct.tcpm_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
