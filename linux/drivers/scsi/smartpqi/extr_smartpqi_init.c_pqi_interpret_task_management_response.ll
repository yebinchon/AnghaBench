; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_interpret_task_management_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_interpret_task_management_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_task_management_response = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_task_management_response*)* @pqi_interpret_task_management_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_interpret_task_management_response(%struct.pqi_task_management_response* %0) #0 {
  %2 = alloca %struct.pqi_task_management_response*, align 8
  %3 = alloca i32, align 4
  store %struct.pqi_task_management_response* %0, %struct.pqi_task_management_response** %2, align 8
  %4 = load %struct.pqi_task_management_response*, %struct.pqi_task_management_response** %2, align 8
  %5 = getelementptr inbounds %struct.pqi_task_management_response, %struct.pqi_task_management_response* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %11 [
    i32 130, label %7
    i32 129, label %7
    i32 128, label %8
  ]

7:                                                ; preds = %1, %1
  store i32 0, i32* %3, align 4
  br label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @EAGAIN, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %8, %7
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
