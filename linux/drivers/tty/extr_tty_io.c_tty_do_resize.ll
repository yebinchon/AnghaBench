; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_do_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_do_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.winsize }
%struct.winsize = type { i32 }
%struct.pid = type { i32 }

@SIGWINCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_do_resize(%struct.tty_struct* %0, %struct.winsize* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.winsize*, align 8
  %5 = alloca %struct.pid*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.winsize* %1, %struct.winsize** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.winsize*, %struct.winsize** %4, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 1
  %12 = call i32 @memcmp(%struct.winsize* %9, %struct.winsize* %11, i32 4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %17 = call %struct.pid* @tty_get_pgrp(%struct.tty_struct* %16)
  store %struct.pid* %17, %struct.pid** %5, align 8
  %18 = load %struct.pid*, %struct.pid** %5, align 8
  %19 = icmp ne %struct.pid* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.pid*, %struct.pid** %5, align 8
  %22 = load i32, i32* @SIGWINCH, align 4
  %23 = call i32 @kill_pgrp(%struct.pid* %21, i32 %22, i32 1)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.pid*, %struct.pid** %5, align 8
  %26 = call i32 @put_pid(%struct.pid* %25)
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 1
  %29 = load %struct.winsize*, %struct.winsize** %4, align 8
  %30 = bitcast %struct.winsize* %28 to i8*
  %31 = bitcast %struct.winsize* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  br label %32

32:                                               ; preds = %24, %14
  %33 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcmp(%struct.winsize*, %struct.winsize*, i32) #1

declare dso_local %struct.pid* @tty_get_pgrp(%struct.tty_struct*) #1

declare dso_local i32 @kill_pgrp(%struct.pid*, i32, i32) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
