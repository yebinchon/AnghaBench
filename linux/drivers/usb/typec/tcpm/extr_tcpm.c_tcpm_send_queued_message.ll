; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_send_queued_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_send_queued_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i64, i64, i32, i32 }

@PD_MSG_NONE = common dso_local global i64 0, align 8
@PD_CTRL_WAIT = common dso_local global i32 0, align 4
@PD_CTRL_REJECT = common dso_local global i32 0, align 4
@PD_CTRL_NOT_SUPP = common dso_local global i32 0, align 4
@INVALID_STATE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*)* @tcpm_send_queued_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_send_queued_message(%struct.tcpm_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  br label %5

5:                                                ; preds = %34, %1
  %6 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %7 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* @PD_MSG_NONE, align 8
  %11 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %12 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %32 [
    i32 130, label %14
    i32 131, label %18
    i32 132, label %22
    i32 129, label %26
    i32 128, label %29
  ]

14:                                               ; preds = %5
  %15 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %16 = load i32, i32* @PD_CTRL_WAIT, align 4
  %17 = call i32 @tcpm_pd_send_control(%struct.tcpm_port* %15, i32 %16)
  br label %33

18:                                               ; preds = %5
  %19 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %20 = load i32, i32* @PD_CTRL_REJECT, align 4
  %21 = call i32 @tcpm_pd_send_control(%struct.tcpm_port* %19, i32 %20)
  br label %33

22:                                               ; preds = %5
  %23 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %24 = load i32, i32* @PD_CTRL_NOT_SUPP, align 4
  %25 = call i32 @tcpm_pd_send_control(%struct.tcpm_port* %23, i32 %24)
  br label %33

26:                                               ; preds = %5
  %27 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %28 = call i32 @tcpm_pd_send_sink_caps(%struct.tcpm_port* %27)
  br label %33

29:                                               ; preds = %5
  %30 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %31 = call i32 @tcpm_pd_send_source_caps(%struct.tcpm_port* %30)
  br label %33

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %32, %29, %26, %22, %18, %14
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %36 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PD_MSG_NONE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %5, label %40

40:                                               ; preds = %34
  %41 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %42 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @INVALID_STATE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %48 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @time_is_after_jiffies(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %54 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %57 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %56, i32 0, i32 3
  %58 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %59 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @jiffies, align 8
  %62 = sub nsw i64 %60, %61
  %63 = call i32 @mod_delayed_work(i32 %55, i32* %57, i64 %62)
  store i32 1, i32* %2, align 4
  br label %69

64:                                               ; preds = %46
  %65 = load i64, i64* @INVALID_STATE, align 8
  %66 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %67 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %40
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %52
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @tcpm_pd_send_control(%struct.tcpm_port*, i32) #1

declare dso_local i32 @tcpm_pd_send_sink_caps(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_pd_send_source_caps(%struct.tcpm_port*) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
