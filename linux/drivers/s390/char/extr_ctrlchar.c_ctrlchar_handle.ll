; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_ctrlchar.c_ctrlchar_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_ctrlchar.c_ctrlchar_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8 }
%struct.tty_struct = type { i32 }

@CTRLCHAR_NONE = common dso_local global i32 0, align 4
@CTRLCHAR_CTRL = common dso_local global i32 0, align 4
@CTRLCHAR_SYSRQ = common dso_local global i32 0, align 4
@ctrlchar_sysrq = common dso_local global %struct.TYPE_3__ zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctrlchar_handle(i8* %0, i32 %1, %struct.tty_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_struct*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tty_struct* %2, %struct.tty_struct** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 3
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @CTRLCHAR_NONE, align 4
  store i32 %14, i32* %4, align 4
  br label %56

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 94
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %25, -86
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @CTRLCHAR_NONE, align 4
  store i32 %28, i32* %4, align 4
  br label %56

29:                                               ; preds = %21, %15
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @CTRLCHAR_NONE, align 4
  store i32 %33, i32* %4, align 4
  br label %56

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @tolower(i8 zeroext %37)
  switch i32 %38, label %54 [
    i32 99, label %39
    i32 100, label %44
    i32 122, label %49
  ]

39:                                               ; preds = %34
  %40 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %41 = call i32 @INTR_CHAR(%struct.tty_struct* %40)
  %42 = load i32, i32* @CTRLCHAR_CTRL, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %4, align 4
  br label %56

44:                                               ; preds = %34
  %45 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %46 = call i32 @EOF_CHAR(%struct.tty_struct* %45)
  %47 = load i32, i32* @CTRLCHAR_CTRL, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %4, align 4
  br label %56

49:                                               ; preds = %34
  %50 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %51 = call i32 @SUSP_CHAR(%struct.tty_struct* %50)
  %52 = load i32, i32* @CTRLCHAR_CTRL, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %34
  %55 = load i32, i32* @CTRLCHAR_NONE, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %49, %44, %39, %32, %27, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @tolower(i8 zeroext) #1

declare dso_local i32 @INTR_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @EOF_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @SUSP_CHAR(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
