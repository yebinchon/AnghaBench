; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_tty.c_sclp_tty_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_tty.c_sclp_tty_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@sclp_port = common dso_local global i32 0, align 4
@CTRLCHAR_MASK = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"^n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\AAn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sclp_tty_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_tty_input(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.tty_struct* @tty_port_tty_get(i32* @sclp_port)
  store %struct.tty_struct* %7, %struct.tty_struct** %5, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %9 = icmp eq %struct.tty_struct* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %61

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %15 = call i32 @ctrlchar_handle(i8* %12, i32 %13, %struct.tty_struct* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @CTRLCHAR_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %58 [
    i32 128, label %19
    i32 130, label %20
    i32 129, label %26
  ]

19:                                               ; preds = %11
  br label %58

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i32, i32* @TTY_NORMAL, align 4
  %24 = call i32 @tty_insert_flip_char(i32* @sclp_port, i8 signext %22, i32 %23)
  %25 = call i32 @tty_flip_buffer_push(i32* @sclp_port)
  br label %58

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %45, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = getelementptr inbounds i8, i8* %33, i64 -2
  %35 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %29
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = getelementptr inbounds i8, i8* %41, i64 -2
  %43 = call i32 @strncmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37, %26
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @tty_insert_flip_string(i32* @sclp_port, i8* %46, i32 %47)
  %49 = load i32, i32* @TTY_NORMAL, align 4
  %50 = call i32 @tty_insert_flip_char(i32* @sclp_port, i8 signext 10, i32 %49)
  br label %56

51:                                               ; preds = %37, %29
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sub i32 %53, 2
  %55 = call i32 @tty_insert_flip_string(i32* @sclp_port, i8* %52, i32 %54)
  br label %56

56:                                               ; preds = %51, %45
  %57 = call i32 @tty_flip_buffer_push(i32* @sclp_port)
  br label %58

58:                                               ; preds = %11, %56, %20, %19
  %59 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %60 = call i32 @tty_kref_put(%struct.tty_struct* %59)
  br label %61

61:                                               ; preds = %58, %10
  ret void
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @ctrlchar_handle(i8*, i32, %struct.tty_struct*) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i8 signext, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @tty_insert_flip_string(i32*, i8*, i32) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
