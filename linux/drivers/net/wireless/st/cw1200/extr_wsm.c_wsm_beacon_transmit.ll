; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_beacon_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_beacon_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.wsm_buf }
%struct.wsm_buf = type { i32 }
%struct.wsm_beacon_transmit = type { i64 }

@WSM_BEACON_TRANSMIT_REQ_ID = common dso_local global i32 0, align 4
@WSM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsm_beacon_transmit(%struct.cw1200_common* %0, %struct.wsm_beacon_transmit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_beacon_transmit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wsm_buf*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_beacon_transmit* %1, %struct.wsm_beacon_transmit** %5, align 8
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %9 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %8, i32 0, i32 0
  store %struct.wsm_buf* %9, %struct.wsm_buf** %7, align 8
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %11 = call i32 @wsm_cmd_lock(%struct.cw1200_common* %10)
  %12 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %13 = load %struct.wsm_beacon_transmit*, %struct.wsm_beacon_transmit** %5, align 8
  %14 = getelementptr inbounds %struct.wsm_beacon_transmit, %struct.wsm_beacon_transmit* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = call i32 @WSM_PUT32(%struct.wsm_buf* %12, i32 %18)
  %20 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %21 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %22 = load i32, i32* @WSM_BEACON_TRANSMIT_REQ_ID, align 4
  %23 = load i32, i32* @WSM_CMD_TIMEOUT, align 4
  %24 = call i32 @wsm_cmd_send(%struct.cw1200_common* %20, %struct.wsm_buf* %21, i32* null, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %26 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; No predecessors!
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %30 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %2
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @wsm_cmd_lock(%struct.cw1200_common*) #1

declare dso_local i32 @WSM_PUT32(%struct.wsm_buf*, i32) #1

declare dso_local i32 @wsm_cmd_send(%struct.cw1200_common*, %struct.wsm_buf*, i32*, i32, i32) #1

declare dso_local i32 @wsm_cmd_unlock(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
