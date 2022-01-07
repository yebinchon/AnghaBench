; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_try_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_try_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@RAW3215_FLUSHING = common dso_local global i32 0, align 4
@RAW3215_WORKING = common dso_local global i32 0, align 4
@RAW3215_TIMER_RUNS = common dso_local global i32 0, align 4
@RAW3215_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3215_info*)* @raw3215_try_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_try_io(%struct.raw3215_info* %0) #0 {
  %2 = alloca %struct.raw3215_info*, align 8
  store %struct.raw3215_info* %0, %struct.raw3215_info** %2, align 8
  %3 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %4 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %3, i32 0, i32 4
  %5 = call i32 @tty_port_initialized(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %9 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %8, i32 0, i32 4
  %10 = call i64 @tty_port_suspended(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  br label %84

13:                                               ; preds = %7
  %14 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %15 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %20 = call i32 @raw3215_start_io(%struct.raw3215_info* %19)
  br label %45

21:                                               ; preds = %13
  %22 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %23 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %28 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %35 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RAW3215_FLUSHING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %26
  %41 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %42 = call i32 @raw3215_start_io(%struct.raw3215_info* %41)
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43, %21
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %47 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %52 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %84

55:                                               ; preds = %50, %45
  %56 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %57 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RAW3215_WORKING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %55
  %63 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %64 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @RAW3215_TIMER_RUNS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %62
  %70 = load i64, i64* @RAW3215_TIMEOUT, align 8
  %71 = load i64, i64* @jiffies, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %74 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %77 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %76, i32 0, i32 1
  %78 = call i32 @add_timer(%struct.TYPE_4__* %77)
  %79 = load i32, i32* @RAW3215_TIMER_RUNS, align 4
  %80 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %81 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %12, %69, %62, %55, %50
  ret void
}

declare dso_local i32 @tty_port_initialized(i32*) #1

declare dso_local i64 @tty_port_suspended(i32*) #1

declare dso_local i32 @raw3215_start_io(%struct.raw3215_info*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
