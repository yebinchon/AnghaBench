; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c__tcpm_pd_vbus_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c__tcpm_pd_vbus_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"VBUS on\00", align 1
@SNK_READY = common dso_local global i32 0, align 4
@SRC_TRY = common dso_local global i32 0, align 4
@SNK_ATTACHED = common dso_local global i32 0, align 4
@SNK_HARD_RESET_SINK_ON = common dso_local global i32 0, align 4
@SRC_STARTUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*)* @_tcpm_pd_vbus_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_tcpm_pd_vbus_on(%struct.tcpm_port* %0) #0 {
  %2 = alloca %struct.tcpm_port*, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %2, align 8
  %3 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %4 = call i32 @tcpm_log_force(%struct.tcpm_port* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %6 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %8 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %61 [
    i32 139, label %10
    i32 141, label %16
    i32 142, label %19
    i32 140, label %31
    i32 133, label %35
    i32 132, label %39
    i32 138, label %43
    i32 131, label %44
    i32 130, label %45
    i32 134, label %48
    i32 137, label %49
    i32 135, label %50
    i32 136, label %59
    i32 128, label %60
    i32 129, label %60
  ]

10:                                               ; preds = %1
  %11 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %12 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %11, i32 0, i32 2
  store i32 1, i32* %12, align 4
  %13 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %14 = load i32, i32* @SNK_READY, align 4
  %15 = call i32 @tcpm_set_state(%struct.tcpm_port* %13, i32 %14, i32 0)
  br label %62

16:                                               ; preds = %1
  %17 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %18 = call i32 @tcpm_set_state(%struct.tcpm_port* %17, i32 141, i32 0)
  br label %62

19:                                               ; preds = %1
  %20 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %21 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %22 = call i32 @tcpm_try_src(%struct.tcpm_port* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @SRC_TRY, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @SNK_ATTACHED, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = call i32 @tcpm_set_state(%struct.tcpm_port* %20, i32 %29, i32 0)
  br label %62

31:                                               ; preds = %1
  %32 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %33 = load i32, i32* @SNK_HARD_RESET_SINK_ON, align 4
  %34 = call i32 @tcpm_set_state(%struct.tcpm_port* %32, i32 %33, i32 0)
  br label %62

35:                                               ; preds = %1
  %36 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %37 = load i32, i32* @SRC_STARTUP, align 4
  %38 = call i32 @tcpm_set_state(%struct.tcpm_port* %36, i32 %37, i32 0)
  br label %62

39:                                               ; preds = %1
  %40 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %41 = load i32, i32* @SRC_STARTUP, align 4
  %42 = call i32 @tcpm_set_state(%struct.tcpm_port* %40, i32 %41, i32 0)
  br label %62

43:                                               ; preds = %1
  br label %62

44:                                               ; preds = %1
  br label %62

45:                                               ; preds = %1
  %46 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %47 = call i32 @tcpm_set_state(%struct.tcpm_port* %46, i32 131, i32 0)
  br label %62

48:                                               ; preds = %1
  br label %62

49:                                               ; preds = %1
  br label %62

50:                                               ; preds = %1
  %51 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %52 = call i32 @tcpm_port_is_sink(%struct.tcpm_port* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %56 = load i32, i32* @SNK_ATTACHED, align 4
  %57 = call i32 @tcpm_set_state(%struct.tcpm_port* %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %54, %50
  br label %62

59:                                               ; preds = %1
  br label %62

60:                                               ; preds = %1, %1
  br label %62

61:                                               ; preds = %1
  br label %62

62:                                               ; preds = %61, %60, %59, %58, %49, %48, %45, %44, %43, %39, %35, %31, %28, %16, %10
  ret void
}

declare dso_local i32 @tcpm_log_force(%struct.tcpm_port*, i8*) #1

declare dso_local i32 @tcpm_set_state(%struct.tcpm_port*, i32, i32) #1

declare dso_local i32 @tcpm_try_src(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_port_is_sink(%struct.tcpm_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
