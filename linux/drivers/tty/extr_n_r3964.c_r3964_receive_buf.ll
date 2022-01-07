; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_r3964_receive_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_r3964_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.r3964_info* }
%struct.r3964_info = type { i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @r3964_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r3964_receive_buf(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.r3964_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = load %struct.r3964_info*, %struct.r3964_info** %15, align 8
  store %struct.r3964_info* %16, %struct.r3964_info** %9, align 8
  %17 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %17, i8* %12, align 1
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %11, align 8
  br label %21

21:                                               ; preds = %47, %4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %21
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %11, align 8
  %30 = load i8, i8* %28, align 1
  store i8 %30, i8* %12, align 1
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i8, i8* %12, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @TTY_NORMAL, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.r3964_info*, %struct.r3964_info** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @receive_char(%struct.r3964_info* %38, i8 zeroext %40)
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.r3964_info*, %struct.r3964_info** %9, align 8
  %44 = load i8, i8* %12, align 1
  %45 = call i32 @receive_error(%struct.r3964_info* %43, i8 signext %44)
  br label %46

46:                                               ; preds = %42, %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %13, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %10, align 8
  br label %21

52:                                               ; preds = %21
  ret void
}

declare dso_local i32 @receive_char(%struct.r3964_info*, i8 zeroext) #1

declare dso_local i32 @receive_error(%struct.r3964_info*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
