; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_add_async_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_add_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_ctrl = type { i32, i32, i32 }
%struct.nvmet_async_event = type { i32, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvmet_add_async_event(%struct.nvmet_ctrl* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.nvmet_ctrl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nvmet_async_event*, align 8
  store %struct.nvmet_ctrl* %0, %struct.nvmet_ctrl** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nvmet_async_event* @kmalloc(i32 32, i32 %10)
  store %struct.nvmet_async_event* %11, %struct.nvmet_async_event** %9, align 8
  %12 = load %struct.nvmet_async_event*, %struct.nvmet_async_event** %9, align 8
  %13 = icmp ne %struct.nvmet_async_event* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %39

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.nvmet_async_event*, %struct.nvmet_async_event** %9, align 8
  %18 = getelementptr inbounds %struct.nvmet_async_event, %struct.nvmet_async_event* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.nvmet_async_event*, %struct.nvmet_async_event** %9, align 8
  %21 = getelementptr inbounds %struct.nvmet_async_event, %struct.nvmet_async_event* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.nvmet_async_event*, %struct.nvmet_async_event** %9, align 8
  %24 = getelementptr inbounds %struct.nvmet_async_event, %struct.nvmet_async_event* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %5, align 8
  %26 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.nvmet_async_event*, %struct.nvmet_async_event** %9, align 8
  %29 = getelementptr inbounds %struct.nvmet_async_event, %struct.nvmet_async_event* %28, i32 0, i32 0
  %30 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %5, align 8
  %31 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %30, i32 0, i32 2
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %5, align 8
  %34 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %5, align 8
  %37 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %36, i32 0, i32 0
  %38 = call i32 @schedule_work(i32* %37)
  br label %39

39:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.nvmet_async_event* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
