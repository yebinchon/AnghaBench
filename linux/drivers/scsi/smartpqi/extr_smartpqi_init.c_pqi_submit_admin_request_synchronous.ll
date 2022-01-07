; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_submit_admin_request_synchronous.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_submit_admin_request_synchronous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_general_admin_request = type { i32 }
%struct.pqi_general_admin_response = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_general_admin_request*, %struct.pqi_general_admin_response*)* @pqi_submit_admin_request_synchronous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_submit_admin_request_synchronous(%struct.pqi_ctrl_info* %0, %struct.pqi_general_admin_request* %1, %struct.pqi_general_admin_response* %2) #0 {
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca %struct.pqi_general_admin_request*, align 8
  %6 = alloca %struct.pqi_general_admin_response*, align 8
  %7 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store %struct.pqi_general_admin_request* %1, %struct.pqi_general_admin_request** %5, align 8
  store %struct.pqi_general_admin_response* %2, %struct.pqi_general_admin_response** %6, align 8
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %9 = load %struct.pqi_general_admin_request*, %struct.pqi_general_admin_request** %5, align 8
  %10 = call i32 @pqi_submit_admin_request(%struct.pqi_ctrl_info* %8, %struct.pqi_general_admin_request* %9)
  %11 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %12 = load %struct.pqi_general_admin_response*, %struct.pqi_general_admin_response** %6, align 8
  %13 = call i32 @pqi_poll_for_admin_response(%struct.pqi_ctrl_info* %11, %struct.pqi_general_admin_response* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.pqi_general_admin_response*, %struct.pqi_general_admin_response** %6, align 8
  %18 = load %struct.pqi_general_admin_request*, %struct.pqi_general_admin_request** %5, align 8
  %19 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pqi_validate_admin_response(%struct.pqi_general_admin_response* %17, i32 %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %16, %3
  %23 = load i32, i32* %7, align 4
  ret i32 %23
}

declare dso_local i32 @pqi_submit_admin_request(%struct.pqi_ctrl_info*, %struct.pqi_general_admin_request*) #1

declare dso_local i32 @pqi_poll_for_admin_response(%struct.pqi_ctrl_info*, %struct.pqi_general_admin_response*) #1

declare dso_local i32 @pqi_validate_admin_response(%struct.pqi_general_admin_response*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
