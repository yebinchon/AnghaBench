; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_switch_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_switch_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, %struct.wsm_buf }
%struct.wsm_buf = type { i32 }
%struct.wsm_switch_channel = type { i32, i32, i32 }

@WSM_SWITCH_CHANNEL_REQ_ID = common dso_local global i32 0, align 4
@WSM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsm_switch_channel(%struct.cw1200_common* %0, %struct.wsm_switch_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_switch_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wsm_buf*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_switch_channel* %1, %struct.wsm_switch_channel** %5, align 8
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %9 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %8, i32 0, i32 1
  store %struct.wsm_buf* %9, %struct.wsm_buf** %7, align 8
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %11 = call i32 @wsm_cmd_lock(%struct.cw1200_common* %10)
  %12 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %13 = load %struct.wsm_switch_channel*, %struct.wsm_switch_channel** %5, align 8
  %14 = getelementptr inbounds %struct.wsm_switch_channel, %struct.wsm_switch_channel* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @WSM_PUT8(%struct.wsm_buf* %12, i32 %15)
  %17 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %18 = load %struct.wsm_switch_channel*, %struct.wsm_switch_channel** %5, align 8
  %19 = getelementptr inbounds %struct.wsm_switch_channel, %struct.wsm_switch_channel* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @WSM_PUT8(%struct.wsm_buf* %17, i32 %20)
  %22 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %23 = load %struct.wsm_switch_channel*, %struct.wsm_switch_channel** %5, align 8
  %24 = getelementptr inbounds %struct.wsm_switch_channel, %struct.wsm_switch_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @WSM_PUT16(%struct.wsm_buf* %22, i32 %25)
  %27 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %28 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %30 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %31 = load i32, i32* @WSM_SWITCH_CHANNEL_REQ_ID, align 4
  %32 = load i32, i32* @WSM_CMD_TIMEOUT, align 4
  %33 = call i32 @wsm_cmd_send(%struct.cw1200_common* %29, %struct.wsm_buf* %30, i32* null, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %38 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %2
  %40 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %41 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; No predecessors!
  %44 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %45 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @wsm_cmd_lock(%struct.cw1200_common*) #1

declare dso_local i32 @WSM_PUT8(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT16(%struct.wsm_buf*, i32) #1

declare dso_local i32 @wsm_cmd_send(%struct.cw1200_common*, %struct.wsm_buf*, i32*, i32, i32) #1

declare dso_local i32 @wsm_cmd_unlock(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
