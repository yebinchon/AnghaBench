; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c___tty_insert_flip_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c___tty_insert_flip_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tty_buffer* }
%struct.tty_buffer = type { i32, i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@TTYB_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tty_insert_flip_char(%struct.tty_port* %0, i8 zeroext %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.tty_buffer*, align 8
  %9 = alloca i32, align 4
  store %struct.tty_port* %0, %struct.tty_port** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %10 = load i8, i8* %7, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8, i8* @TTY_NORMAL, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @TTYB_NORMAL, align 4
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %9, align 4
  %20 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @__tty_buffer_request_room(%struct.tty_port* %20, i32 1, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %52

25:                                               ; preds = %18
  %26 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %27 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.tty_buffer*, %struct.tty_buffer** %28, align 8
  store %struct.tty_buffer* %29, %struct.tty_buffer** %8, align 8
  %30 = load %struct.tty_buffer*, %struct.tty_buffer** %8, align 8
  %31 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @TTYB_NORMAL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %25
  %38 = load i8, i8* %7, align 1
  %39 = load %struct.tty_buffer*, %struct.tty_buffer** %8, align 8
  %40 = load %struct.tty_buffer*, %struct.tty_buffer** %8, align 8
  %41 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @flag_buf_ptr(%struct.tty_buffer* %39, i32 %42)
  store i8 %38, i8* %43, align 1
  br label %44

44:                                               ; preds = %37, %25
  %45 = load i8, i8* %6, align 1
  %46 = load %struct.tty_buffer*, %struct.tty_buffer** %8, align 8
  %47 = load %struct.tty_buffer*, %struct.tty_buffer** %8, align 8
  %48 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = call i8* @char_buf_ptr(%struct.tty_buffer* %46, i32 %49)
  store i8 %45, i8* %51, align 1
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %44, %24
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @__tty_buffer_request_room(%struct.tty_port*, i32, i32) #1

declare dso_local i8* @flag_buf_ptr(%struct.tty_buffer*, i32) #1

declare dso_local i8* @char_buf_ptr(%struct.tty_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
