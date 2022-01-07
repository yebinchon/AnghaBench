; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_poll_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_poll_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_poll = type { i32, i32, i64 }
%struct.file = type { i32 }

@EPOLLERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhost_poll_start(%struct.vhost_poll* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_poll*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  store %struct.vhost_poll* %0, %struct.vhost_poll** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.vhost_poll*, %struct.vhost_poll** %4, align 8
  %8 = getelementptr inbounds %struct.vhost_poll, %struct.vhost_poll* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load %struct.vhost_poll*, %struct.vhost_poll** %4, align 8
  %15 = getelementptr inbounds %struct.vhost_poll, %struct.vhost_poll* %14, i32 0, i32 1
  %16 = call i32 @vfs_poll(%struct.file* %13, i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.vhost_poll*, %struct.vhost_poll** %4, align 8
  %21 = getelementptr inbounds %struct.vhost_poll, %struct.vhost_poll* %20, i32 0, i32 0
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @poll_to_key(i32 %22)
  %24 = call i32 @vhost_poll_wakeup(i32* %21, i32 0, i32 0, i32 %23)
  br label %25

25:                                               ; preds = %19, %12
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @EPOLLERR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.vhost_poll*, %struct.vhost_poll** %4, align 8
  %32 = call i32 @vhost_poll_stop(%struct.vhost_poll* %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @vfs_poll(%struct.file*, i32*) #1

declare dso_local i32 @vhost_poll_wakeup(i32*, i32, i32, i32) #1

declare dso_local i32 @poll_to_key(i32) #1

declare dso_local i32 @vhost_poll_stop(%struct.vhost_poll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
