; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c___ab_task_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c___ab_task_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab_task = type { i32, i32 (%struct.anybuss_host*)* }
%struct.anybuss_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab_task*, %struct.anybuss_host*)* @__ab_task_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ab_task_finish(%struct.ab_task* %0, %struct.anybuss_host* %1) #0 {
  %3 = alloca %struct.ab_task*, align 8
  %4 = alloca %struct.anybuss_host*, align 8
  store %struct.ab_task* %0, %struct.ab_task** %3, align 8
  store %struct.anybuss_host* %1, %struct.anybuss_host** %4, align 8
  %5 = load %struct.ab_task*, %struct.ab_task** %3, align 8
  %6 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %5, i32 0, i32 1
  %7 = load i32 (%struct.anybuss_host*)*, i32 (%struct.anybuss_host*)** %6, align 8
  %8 = icmp ne i32 (%struct.anybuss_host*)* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.ab_task*, %struct.ab_task** %3, align 8
  %11 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %10, i32 0, i32 1
  %12 = load i32 (%struct.anybuss_host*)*, i32 (%struct.anybuss_host*)** %11, align 8
  %13 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %14 = call i32 %12(%struct.anybuss_host* %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.ab_task*, %struct.ab_task** %3, align 8
  %17 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %16, i32 0, i32 0
  %18 = call i32 @complete(i32* %17)
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
