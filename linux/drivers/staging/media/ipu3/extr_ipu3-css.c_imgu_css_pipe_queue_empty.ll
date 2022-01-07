; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_pipe_queue_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_pipe_queue_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { %struct.imgu_css_pipe* }
%struct.imgu_css_pipe = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IPU3_CSS_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imgu_css_pipe_queue_empty(%struct.imgu_css* %0, i32 %1) #0 {
  %3 = alloca %struct.imgu_css*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.imgu_css_pipe*, align 8
  store %struct.imgu_css* %0, %struct.imgu_css** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %8 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %7, i32 0, i32 0
  %9 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %9, i64 %11
  store %struct.imgu_css_pipe* %12, %struct.imgu_css_pipe** %6, align 8
  %13 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %14 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %32, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IPU3_CSS_QUEUES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %22 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @list_empty(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %35

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %16

35:                                               ; preds = %30, %16
  %36 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %37 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @IPU3_CSS_QUEUES, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
