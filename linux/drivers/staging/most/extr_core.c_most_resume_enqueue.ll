; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_resume_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_resume_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.most_channel** }
%struct.most_channel = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @most_resume_enqueue(%struct.most_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.most_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.most_channel*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %7 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.most_channel**, %struct.most_channel*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.most_channel*, %struct.most_channel** %10, i64 %12
  %14 = load %struct.most_channel*, %struct.most_channel** %13, align 8
  store %struct.most_channel* %14, %struct.most_channel** %5, align 8
  %15 = load %struct.most_channel*, %struct.most_channel** %5, align 8
  %16 = icmp ne %struct.most_channel* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.most_channel*, %struct.most_channel** %5, align 8
  %20 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.most_channel*, %struct.most_channel** %5, align 8
  %23 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.most_channel*, %struct.most_channel** %5, align 8
  %25 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %24, i32 0, i32 2
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.most_channel*, %struct.most_channel** %5, align 8
  %28 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %27, i32 0, i32 1
  %29 = call i32 @wake_up_interruptible(i32* %28)
  br label %30

30:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
