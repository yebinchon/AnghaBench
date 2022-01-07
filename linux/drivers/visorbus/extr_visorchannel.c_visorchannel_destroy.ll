; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchannel.c_visorchannel_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchannel.c_visorchannel_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorchannel = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @visorchannel_destroy(%struct.visorchannel* %0) #0 {
  %2 = alloca %struct.visorchannel*, align 8
  store %struct.visorchannel* %0, %struct.visorchannel** %2, align 8
  %3 = load %struct.visorchannel*, %struct.visorchannel** %2, align 8
  %4 = icmp ne %struct.visorchannel* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %32

6:                                                ; preds = %1
  %7 = load %struct.visorchannel*, %struct.visorchannel** %2, align 8
  %8 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load %struct.visorchannel*, %struct.visorchannel** %2, align 8
  %13 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @memunmap(i64 %14)
  %16 = load %struct.visorchannel*, %struct.visorchannel** %2, align 8
  %17 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %11
  %21 = load %struct.visorchannel*, %struct.visorchannel** %2, align 8
  %22 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.visorchannel*, %struct.visorchannel** %2, align 8
  %25 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @release_mem_region(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %20, %11
  br label %29

29:                                               ; preds = %28, %6
  %30 = load %struct.visorchannel*, %struct.visorchannel** %2, align 8
  %31 = call i32 @kfree(%struct.visorchannel* %30)
  br label %32

32:                                               ; preds = %29, %5
  ret void
}

declare dso_local i32 @memunmap(i64) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.visorchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
