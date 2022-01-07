; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_set_bss_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_set_bss_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.wsm_buf }
%struct.wsm_buf = type { i32 }
%struct.wsm_set_bss_params = type { i32, i32, i32, i64 }

@WSM_SET_BSS_PARAMS_REQ_ID = common dso_local global i32 0, align 4
@WSM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsm_set_bss_params(%struct.cw1200_common* %0, %struct.wsm_set_bss_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_set_bss_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wsm_buf*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_set_bss_params* %1, %struct.wsm_set_bss_params** %5, align 8
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %9 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %8, i32 0, i32 0
  store %struct.wsm_buf* %9, %struct.wsm_buf** %7, align 8
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %11 = call i32 @wsm_cmd_lock(%struct.cw1200_common* %10)
  %12 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %13 = load %struct.wsm_set_bss_params*, %struct.wsm_set_bss_params** %5, align 8
  %14 = getelementptr inbounds %struct.wsm_set_bss_params, %struct.wsm_set_bss_params* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = call i32 @WSM_PUT8(%struct.wsm_buf* %12, i32 %18)
  %20 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %21 = load %struct.wsm_set_bss_params*, %struct.wsm_set_bss_params** %5, align 8
  %22 = getelementptr inbounds %struct.wsm_set_bss_params, %struct.wsm_set_bss_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @WSM_PUT8(%struct.wsm_buf* %20, i32 %23)
  %25 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %26 = load %struct.wsm_set_bss_params*, %struct.wsm_set_bss_params** %5, align 8
  %27 = getelementptr inbounds %struct.wsm_set_bss_params, %struct.wsm_set_bss_params* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @WSM_PUT16(%struct.wsm_buf* %25, i32 %28)
  %30 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %31 = load %struct.wsm_set_bss_params*, %struct.wsm_set_bss_params** %5, align 8
  %32 = getelementptr inbounds %struct.wsm_set_bss_params, %struct.wsm_set_bss_params* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @WSM_PUT32(%struct.wsm_buf* %30, i32 %33)
  %35 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %36 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %37 = load i32, i32* @WSM_SET_BSS_PARAMS_REQ_ID, align 4
  %38 = load i32, i32* @WSM_CMD_TIMEOUT, align 4
  %39 = call i32 @wsm_cmd_send(%struct.cw1200_common* %35, %struct.wsm_buf* %36, i32* null, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
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

48:                                               ; preds = %43, %2
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @wsm_cmd_lock(%struct.cw1200_common*) #1

declare dso_local i32 @WSM_PUT8(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT16(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT32(%struct.wsm_buf*, i32) #1

declare dso_local i32 @wsm_cmd_send(%struct.cw1200_common*, %struct.wsm_buf*, i32*, i32, i32) #1

declare dso_local i32 @wsm_cmd_unlock(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
