; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c_tty_buffer_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c_tty_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { %struct.tty_bufhead }
%struct.tty_bufhead = type { i32, i32 }
%struct.tty_buffer = type { i64, i32 }

@MIN_TTYB_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_port*, %struct.tty_buffer*)* @tty_buffer_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_buffer_free(%struct.tty_port* %0, %struct.tty_buffer* %1) #0 {
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca %struct.tty_buffer*, align 8
  %5 = alloca %struct.tty_bufhead*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %3, align 8
  store %struct.tty_buffer* %1, %struct.tty_buffer** %4, align 8
  %6 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %7 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %6, i32 0, i32 0
  store %struct.tty_bufhead* %7, %struct.tty_bufhead** %5, align 8
  %8 = load %struct.tty_buffer*, %struct.tty_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.tty_bufhead*, %struct.tty_bufhead** %5, align 8
  %12 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %11, i32 0, i32 1
  %13 = call i64 @atomic_sub_return(i64 %10, i32* %12)
  %14 = icmp slt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.tty_buffer*, %struct.tty_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MIN_TTYB_SIZE, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.tty_buffer*, %struct.tty_buffer** %4, align 8
  %24 = call i32 @kfree(%struct.tty_buffer* %23)
  br label %37

25:                                               ; preds = %2
  %26 = load %struct.tty_buffer*, %struct.tty_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.tty_buffer*, %struct.tty_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %31, i32 0, i32 1
  %33 = load %struct.tty_bufhead*, %struct.tty_bufhead** %5, align 8
  %34 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %33, i32 0, i32 0
  %35 = call i32 @llist_add(i32* %32, i32* %34)
  br label %36

36:                                               ; preds = %30, %25
  br label %37

37:                                               ; preds = %36, %22
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @atomic_sub_return(i64, i32*) #1

declare dso_local i32 @kfree(%struct.tty_buffer*) #1

declare dso_local i32 @llist_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
