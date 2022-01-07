; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_task.c_isci_task_build_abort_task_tmf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_task.c_isci_task_build_abort_task_tmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_tmf = type { i32 }
%struct.isci_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_tmf*, i32, %struct.isci_request*)* @isci_task_build_abort_task_tmf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isci_task_build_abort_task_tmf(%struct.isci_tmf* %0, i32 %1, %struct.isci_request* %2) #0 {
  %4 = alloca %struct.isci_tmf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isci_request*, align 8
  store %struct.isci_tmf* %0, %struct.isci_tmf** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.isci_request* %2, %struct.isci_request** %6, align 8
  %7 = load %struct.isci_tmf*, %struct.isci_tmf** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @isci_task_build_tmf(%struct.isci_tmf* %7, i32 %8)
  %10 = load %struct.isci_request*, %struct.isci_request** %6, align 8
  %11 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.isci_tmf*, %struct.isci_tmf** %4, align 8
  %14 = getelementptr inbounds %struct.isci_tmf, %struct.isci_tmf* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

declare dso_local i32 @isci_task_build_tmf(%struct.isci_tmf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
