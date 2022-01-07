; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_deliver_netinfo_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_deliver_netinfo_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim2_hdm = type { i32, i32, i32, i32 (i32*, i32, i32)*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @deliver_netinfo_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deliver_netinfo_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dim2_hdm*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.dim2_hdm*
  store %struct.dim2_hdm* %5, %struct.dim2_hdm** %3, align 8
  br label %6

6:                                                ; preds = %52, %1
  %7 = call i64 (...) @kthread_should_stop()
  %8 = icmp ne i64 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %53

10:                                               ; preds = %6
  %11 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %12 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %15 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = call i64 (...) @kthread_should_stop()
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %18, %10
  %22 = phi i1 [ true, %10 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @wait_event_interruptible(i32 %13, i32 %23)
  %25 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %26 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %21
  %30 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %31 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %35 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %34, i32 0, i32 3
  %36 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %35, align 8
  %37 = icmp ne i32 (i32*, i32, i32)* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %29
  %39 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %40 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %39, i32 0, i32 3
  %41 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %40, align 8
  %42 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %43 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %42, i32 0, i32 2
  %44 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %45 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %48 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %41(i32* %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %38, %29
  br label %52

52:                                               ; preds = %51, %21
  br label %6

53:                                               ; preds = %6
  ret i32 0
}

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
