; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_poll_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_poll_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_poll = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vhost_poll_stop(%struct.vhost_poll* %0) #0 {
  %2 = alloca %struct.vhost_poll*, align 8
  store %struct.vhost_poll* %0, %struct.vhost_poll** %2, align 8
  %3 = load %struct.vhost_poll*, %struct.vhost_poll** %2, align 8
  %4 = getelementptr inbounds %struct.vhost_poll, %struct.vhost_poll* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.vhost_poll*, %struct.vhost_poll** %2, align 8
  %9 = getelementptr inbounds %struct.vhost_poll, %struct.vhost_poll* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.vhost_poll*, %struct.vhost_poll** %2, align 8
  %12 = getelementptr inbounds %struct.vhost_poll, %struct.vhost_poll* %11, i32 0, i32 1
  %13 = call i32 @remove_wait_queue(i32* %10, i32* %12)
  %14 = load %struct.vhost_poll*, %struct.vhost_poll** %2, align 8
  %15 = getelementptr inbounds %struct.vhost_poll, %struct.vhost_poll* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
