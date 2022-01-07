; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_context.c_sci_remote_node_context_continue_state_transitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_context.c_sci_remote_node_context_continue_state_transitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_context = type { i32, i32, i32 }

@RNC_DEST_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sci_remote_node_context*)* @sci_remote_node_context_continue_state_transitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_remote_node_context_continue_state_transitions(%struct.sci_remote_node_context* %0) #0 {
  %2 = alloca %struct.sci_remote_node_context*, align 8
  store %struct.sci_remote_node_context* %0, %struct.sci_remote_node_context** %2, align 8
  %3 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %4 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %18 [
    i32 129, label %6
    i32 128, label %6
    i32 130, label %9
  ]

6:                                                ; preds = %1, %1
  %7 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %8 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %7, i32 0, i32 0
  store i32 129, i32* %8, align 4
  br label %9

9:                                                ; preds = %1, %6
  %10 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %11 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %12 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %15 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sci_remote_node_context_resume(%struct.sci_remote_node_context* %10, i32 %13, i32 %16)
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @RNC_DEST_UNSPECIFIED, align 4
  %20 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %21 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @sci_remote_node_context_resume(%struct.sci_remote_node_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
