; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_free_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_target_request = type { i32, i32, %struct.se_cmd }
%struct.se_cmd = type { %struct.se_session* }
%struct.se_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_target_request*)* @sbp_free_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_free_request(%struct.sbp_target_request* %0) #0 {
  %2 = alloca %struct.sbp_target_request*, align 8
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_session*, align 8
  store %struct.sbp_target_request* %0, %struct.sbp_target_request** %2, align 8
  %5 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %6 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %5, i32 0, i32 2
  store %struct.se_cmd* %6, %struct.se_cmd** %3, align 8
  %7 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %7, i32 0, i32 0
  %9 = load %struct.se_session*, %struct.se_session** %8, align 8
  store %struct.se_session* %9, %struct.se_session** %4, align 8
  %10 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %11 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kfree(i32 %12)
  %14 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %15 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @kfree(i32 %16)
  %18 = load %struct.se_session*, %struct.se_session** %4, align 8
  %19 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %20 = call i32 @target_free_tag(%struct.se_session* %18, %struct.se_cmd* %19)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @target_free_tag(%struct.se_session*, %struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
