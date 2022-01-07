; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_busy_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_busy_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i32 }
%struct.vhost_virtqueue = type { i64, i32, %struct.socket* }
%struct.socket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_net*, %struct.vhost_virtqueue*, %struct.vhost_virtqueue*, i32*, i32)* @vhost_net_busy_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_net_busy_poll(%struct.vhost_net* %0, %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.vhost_net*, align 8
  %7 = alloca %struct.vhost_virtqueue*, align 8
  %8 = alloca %struct.vhost_virtqueue*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.socket*, align 8
  %14 = alloca %struct.vhost_virtqueue*, align 8
  store %struct.vhost_net* %0, %struct.vhost_net** %6, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %7, align 8
  store %struct.vhost_virtqueue* %2, %struct.vhost_virtqueue** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  br label %21

19:                                               ; preds = %5
  %20 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %7, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi %struct.vhost_virtqueue* [ %18, %17 ], [ %20, %19 ]
  store %struct.vhost_virtqueue* %22, %struct.vhost_virtqueue** %14, align 8
  %23 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %14, align 8
  %24 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %23, i32 0, i32 1
  %25 = call i32 @mutex_trylock(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %107

28:                                               ; preds = %21
  %29 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %30 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %29, i32 0, i32 0
  %31 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %14, align 8
  %32 = call i32 @vhost_disable_notify(i32* %30, %struct.vhost_virtqueue* %31)
  %33 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %7, align 8
  %34 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %33, i32 0, i32 2
  %35 = load %struct.socket*, %struct.socket** %34, align 8
  store %struct.socket* %35, %struct.socket** %13, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %7, align 8
  %40 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  br label %46

42:                                               ; preds = %28
  %43 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %44 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i64 [ %41, %38 ], [ %45, %42 ]
  store i64 %47, i64* %11, align 8
  %48 = call i32 (...) @preempt_disable()
  %49 = call i64 (...) @busy_clock()
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %12, align 8
  br label %52

52:                                               ; preds = %80, %46
  %53 = load i64, i64* %12, align 8
  %54 = call i64 @vhost_can_busy_poll(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %52
  %57 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %58 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %57, i32 0, i32 0
  %59 = call i64 @vhost_has_work(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32*, i32** %9, align 8
  store i32 1, i32* %62, align 4
  br label %82

63:                                               ; preds = %56
  %64 = load %struct.socket*, %struct.socket** %13, align 8
  %65 = call i64 @sock_has_rx_data(%struct.socket* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %69 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %68, i32 0, i32 0
  %70 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %7, align 8
  %71 = call i32 @vhost_vq_avail_empty(i32* %69, %struct.vhost_virtqueue* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67, %63
  %74 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %75 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %74, i32 0, i32 0
  %76 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %77 = call i32 @vhost_vq_avail_empty(i32* %75, %struct.vhost_virtqueue* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73, %67
  br label %82

80:                                               ; preds = %73
  %81 = call i32 (...) @cpu_relax()
  br label %52

82:                                               ; preds = %79, %61, %52
  %83 = call i32 (...) @preempt_enable()
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load %struct.socket*, %struct.socket** %13, align 8
  %88 = call i64 @sock_has_rx_data(%struct.socket* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86, %82
  %91 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %92 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %14, align 8
  %93 = call i32 @vhost_net_busy_poll_try_queue(%struct.vhost_net* %91, %struct.vhost_virtqueue* %92)
  br label %103

94:                                               ; preds = %86
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %99 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %98, i32 0, i32 0
  %100 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %7, align 8
  %101 = call i32 @vhost_enable_notify(i32* %99, %struct.vhost_virtqueue* %100)
  br label %102

102:                                              ; preds = %97, %94
  br label %103

103:                                              ; preds = %102, %90
  %104 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %14, align 8
  %105 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  br label %107

107:                                              ; preds = %103, %27
  ret void
}

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @vhost_disable_notify(i32*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @busy_clock(...) #1

declare dso_local i64 @vhost_can_busy_poll(i64) #1

declare dso_local i64 @vhost_has_work(i32*) #1

declare dso_local i64 @sock_has_rx_data(%struct.socket*) #1

declare dso_local i32 @vhost_vq_avail_empty(i32*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @vhost_net_busy_poll_try_queue(%struct.vhost_net*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_enable_notify(i32*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
