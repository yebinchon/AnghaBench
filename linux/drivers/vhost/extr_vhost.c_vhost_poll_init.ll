; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_poll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_poll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_poll = type { i32, i32*, %struct.vhost_dev*, i32, i32, i32 }
%struct.vhost_dev = type { i32 }

@vhost_poll_wakeup = common dso_local global i32 0, align 4
@vhost_poll_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vhost_poll_init(%struct.vhost_poll* %0, i32 %1, i32 %2, %struct.vhost_dev* %3) #0 {
  %5 = alloca %struct.vhost_poll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vhost_dev*, align 8
  store %struct.vhost_poll* %0, %struct.vhost_poll** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.vhost_dev* %3, %struct.vhost_dev** %8, align 8
  %9 = load %struct.vhost_poll*, %struct.vhost_poll** %5, align 8
  %10 = getelementptr inbounds %struct.vhost_poll, %struct.vhost_poll* %9, i32 0, i32 5
  %11 = load i32, i32* @vhost_poll_wakeup, align 4
  %12 = call i32 @init_waitqueue_func_entry(i32* %10, i32 %11)
  %13 = load %struct.vhost_poll*, %struct.vhost_poll** %5, align 8
  %14 = getelementptr inbounds %struct.vhost_poll, %struct.vhost_poll* %13, i32 0, i32 4
  %15 = load i32, i32* @vhost_poll_func, align 4
  %16 = call i32 @init_poll_funcptr(i32* %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.vhost_poll*, %struct.vhost_poll** %5, align 8
  %19 = getelementptr inbounds %struct.vhost_poll, %struct.vhost_poll* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.vhost_dev*, %struct.vhost_dev** %8, align 8
  %21 = load %struct.vhost_poll*, %struct.vhost_poll** %5, align 8
  %22 = getelementptr inbounds %struct.vhost_poll, %struct.vhost_poll* %21, i32 0, i32 2
  store %struct.vhost_dev* %20, %struct.vhost_dev** %22, align 8
  %23 = load %struct.vhost_poll*, %struct.vhost_poll** %5, align 8
  %24 = getelementptr inbounds %struct.vhost_poll, %struct.vhost_poll* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.vhost_poll*, %struct.vhost_poll** %5, align 8
  %26 = getelementptr inbounds %struct.vhost_poll, %struct.vhost_poll* %25, i32 0, i32 0
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @vhost_work_init(i32* %26, i32 %27)
  ret void
}

declare dso_local i32 @init_waitqueue_func_entry(i32*, i32) #1

declare dso_local i32 @init_poll_funcptr(i32*, i32) #1

declare dso_local i32 @vhost_work_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
