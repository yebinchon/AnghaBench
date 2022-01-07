; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pps_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pps_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SNK_READY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@SNK_NEGOTIATE_PPS_CAPABILITIES = common dso_local global i32 0, align 4
@SNK_NEGOTIATE_CAPABILITIES = common dso_local global i32 0, align 4
@PD_PPS_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, i32)* @tcpm_pps_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_pps_activate(%struct.tcpm_port* %0, i32 %1) #0 {
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %7 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %6, i32 0, i32 3
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %10 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %9, i32 0, i32 4
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %13 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %87

20:                                               ; preds = %2
  %21 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %22 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %87

30:                                               ; preds = %26, %20
  %31 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %32 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SNK_READY, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %87

39:                                               ; preds = %30
  %40 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %41 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %40, i32 0, i32 5
  %42 = call i32 @reinit_completion(i32* %41)
  %43 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %44 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  %45 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %46 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %45, i32 0, i32 2
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %39
  %50 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %51 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %54 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %57 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %60 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %63 = load i32, i32* @SNK_NEGOTIATE_PPS_CAPABILITIES, align 4
  %64 = call i32 @tcpm_set_state(%struct.tcpm_port* %62, i32 %63, i32 0)
  br label %69

65:                                               ; preds = %39
  %66 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %67 = load i32, i32* @SNK_NEGOTIATE_CAPABILITIES, align 4
  %68 = call i32 @tcpm_set_state(%struct.tcpm_port* %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %65, %49
  %70 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %71 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %70, i32 0, i32 4
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %74 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %73, i32 0, i32 5
  %75 = load i32, i32* @PD_PPS_CTRL_TIMEOUT, align 4
  %76 = call i32 @msecs_to_jiffies(i32 %75)
  %77 = call i32 @wait_for_completion_timeout(i32* %74, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %69
  %80 = load i32, i32* @ETIMEDOUT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %86

82:                                               ; preds = %69
  %83 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %84 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %79
  br label %91

87:                                               ; preds = %36, %29, %17
  %88 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %89 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %88, i32 0, i32 4
  %90 = call i32 @mutex_unlock(i32* %89)
  br label %91

91:                                               ; preds = %87, %86
  %92 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %93 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %92, i32 0, i32 3
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @tcpm_set_state(%struct.tcpm_port*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
