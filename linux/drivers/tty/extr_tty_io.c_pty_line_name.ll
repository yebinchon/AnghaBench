; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_pty_line_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_pty_line_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32, i64, i8* }

@.str = private unnamed_addr constant [7 x i8] c"%s%c%x\00", align 1
@PTY_TYPE_SLAVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@ptychar = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_driver*, i32, i8*)* @pty_line_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pty_line_name(%struct.tty_driver* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %10 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %8, %11
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %15 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PTY_TYPE_SLAVE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %22 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %19 ], [ %23, %20 ]
  %26 = load i32*, i32** @ptychar, align 8
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 4
  %29 = and i32 %28, 15
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 15
  %35 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %32, i32 %34)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
