; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_buf_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_buf_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @n_tty_receive_buf_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_receive_buf_raw(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.n_tty_data*, align 8
  %10 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.n_tty_data*, %struct.n_tty_data** %12, align 8
  store %struct.n_tty_data* %13, %struct.n_tty_data** %9, align 8
  %14 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %14, i8* %10, align 1
  br label %15

15:                                               ; preds = %50, %4
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  %25 = load i8, i8* %23, align 1
  store i8 %25, i8* %10, align 1
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i8, i8* %10, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @TTY_NORMAL, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  %38 = load i8, i8* %36, align 1
  %39 = zext i8 %38 to i32
  %40 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  %41 = call i32 @put_tty_queue(i32 %39, %struct.n_tty_data* %40)
  br label %50

42:                                               ; preds = %26
  %43 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %10, align 1
  %49 = call i32 @n_tty_receive_char_flagged(%struct.tty_struct* %43, i32 %47, i8 signext %48)
  br label %50

50:                                               ; preds = %42, %35
  br label %15

51:                                               ; preds = %15
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @put_tty_queue(i32, %struct.n_tty_data*) #1

declare dso_local i32 @n_tty_receive_char_flagged(%struct.tty_struct*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
