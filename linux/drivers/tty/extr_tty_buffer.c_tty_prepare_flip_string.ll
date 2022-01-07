; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c_tty_prepare_flip_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c_tty_prepare_flip_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tty_buffer* }
%struct.tty_buffer = type { i32, i32 }

@TTYB_NORMAL = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_prepare_flip_string(%struct.tty_port* %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty_buffer*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @TTYB_NORMAL, align 4
  %12 = call i32 @__tty_buffer_request_room(%struct.tty_port* %9, i64 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %3
  %17 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %18 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.tty_buffer*, %struct.tty_buffer** %19, align 8
  store %struct.tty_buffer* %20, %struct.tty_buffer** %8, align 8
  %21 = load %struct.tty_buffer*, %struct.tty_buffer** %8, align 8
  %22 = load %struct.tty_buffer*, %struct.tty_buffer** %8, align 8
  %23 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @char_buf_ptr(%struct.tty_buffer* %21, i32 %24)
  %26 = load i8**, i8*** %5, align 8
  store i8* %25, i8** %26, align 8
  %27 = load %struct.tty_buffer*, %struct.tty_buffer** %8, align 8
  %28 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* @TTYB_NORMAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %16
  %35 = load %struct.tty_buffer*, %struct.tty_buffer** %8, align 8
  %36 = load %struct.tty_buffer*, %struct.tty_buffer** %8, align 8
  %37 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @flag_buf_ptr(%struct.tty_buffer* %35, i32 %38)
  %40 = load i32, i32* @TTY_NORMAL, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @memset(i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %16
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.tty_buffer*, %struct.tty_buffer** %8, align 8
  %46 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %3
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @__tty_buffer_request_room(%struct.tty_port*, i64, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @char_buf_ptr(%struct.tty_buffer*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @flag_buf_ptr(%struct.tty_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
