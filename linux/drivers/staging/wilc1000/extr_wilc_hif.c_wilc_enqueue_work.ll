; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_enqueue_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_enqueue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_if_msg = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host_if_msg*)* @wilc_enqueue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_enqueue_work(%struct.host_if_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host_if_msg*, align 8
  store %struct.host_if_msg* %0, %struct.host_if_msg** %3, align 8
  %4 = load %struct.host_if_msg*, %struct.host_if_msg** %3, align 8
  %5 = getelementptr inbounds %struct.host_if_msg, %struct.host_if_msg* %4, i32 0, i32 0
  %6 = load %struct.host_if_msg*, %struct.host_if_msg** %3, align 8
  %7 = getelementptr inbounds %struct.host_if_msg, %struct.host_if_msg* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @INIT_WORK(i32* %5, i32 %8)
  %10 = load %struct.host_if_msg*, %struct.host_if_msg** %3, align 8
  %11 = getelementptr inbounds %struct.host_if_msg, %struct.host_if_msg* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.host_if_msg*, %struct.host_if_msg** %3, align 8
  %16 = getelementptr inbounds %struct.host_if_msg, %struct.host_if_msg* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.host_if_msg*, %struct.host_if_msg** %3, align 8
  %23 = getelementptr inbounds %struct.host_if_msg, %struct.host_if_msg* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21, %14, %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %49

33:                                               ; preds = %21
  %34 = load %struct.host_if_msg*, %struct.host_if_msg** %3, align 8
  %35 = getelementptr inbounds %struct.host_if_msg, %struct.host_if_msg* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.host_if_msg*, %struct.host_if_msg** %3, align 8
  %42 = getelementptr inbounds %struct.host_if_msg, %struct.host_if_msg* %41, i32 0, i32 0
  %43 = call i32 @queue_work(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %45, %30
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
