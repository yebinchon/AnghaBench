; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_sq_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_sq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_sq = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.nvmet_sq** }

@nvmet_confirm_sq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvmet_sq_destroy(%struct.nvmet_sq* %0) #0 {
  %2 = alloca %struct.nvmet_sq*, align 8
  store %struct.nvmet_sq* %0, %struct.nvmet_sq** %2, align 8
  %3 = load %struct.nvmet_sq*, %struct.nvmet_sq** %2, align 8
  %4 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load %struct.nvmet_sq*, %struct.nvmet_sq** %2, align 8
  %9 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.nvmet_sq**, %struct.nvmet_sq*** %11, align 8
  %13 = icmp ne %struct.nvmet_sq** %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %7
  %15 = load %struct.nvmet_sq*, %struct.nvmet_sq** %2, align 8
  %16 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.nvmet_sq**, %struct.nvmet_sq*** %18, align 8
  %20 = getelementptr inbounds %struct.nvmet_sq*, %struct.nvmet_sq** %19, i64 0
  %21 = load %struct.nvmet_sq*, %struct.nvmet_sq** %20, align 8
  %22 = load %struct.nvmet_sq*, %struct.nvmet_sq** %2, align 8
  %23 = icmp eq %struct.nvmet_sq* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.nvmet_sq*, %struct.nvmet_sq** %2, align 8
  %26 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 @nvmet_async_events_free(%struct.TYPE_3__* %27)
  br label %29

29:                                               ; preds = %24, %14, %7, %1
  %30 = load %struct.nvmet_sq*, %struct.nvmet_sq** %2, align 8
  %31 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %30, i32 0, i32 1
  %32 = load i32, i32* @nvmet_confirm_sq, align 4
  %33 = call i32 @percpu_ref_kill_and_confirm(i32* %31, i32 %32)
  %34 = load %struct.nvmet_sq*, %struct.nvmet_sq** %2, align 8
  %35 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %34, i32 0, i32 3
  %36 = call i32 @wait_for_completion(i32* %35)
  %37 = load %struct.nvmet_sq*, %struct.nvmet_sq** %2, align 8
  %38 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %37, i32 0, i32 2
  %39 = call i32 @wait_for_completion(i32* %38)
  %40 = load %struct.nvmet_sq*, %struct.nvmet_sq** %2, align 8
  %41 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %40, i32 0, i32 1
  %42 = call i32 @percpu_ref_exit(i32* %41)
  %43 = load %struct.nvmet_sq*, %struct.nvmet_sq** %2, align 8
  %44 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = icmp ne %struct.TYPE_3__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %29
  %48 = load %struct.nvmet_sq*, %struct.nvmet_sq** %2, align 8
  %49 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = call i32 @nvmet_ctrl_put(%struct.TYPE_3__* %50)
  %52 = load %struct.nvmet_sq*, %struct.nvmet_sq** %2, align 8
  %53 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %52, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %53, align 8
  br label %54

54:                                               ; preds = %47, %29
  ret void
}

declare dso_local i32 @nvmet_async_events_free(%struct.TYPE_3__*) #1

declare dso_local i32 @percpu_ref_kill_and_confirm(i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @percpu_ref_exit(i32*) #1

declare dso_local i32 @nvmet_ctrl_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
