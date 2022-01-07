; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_line_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_line_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32, i8*, i64 }

@TTY_DRIVER_UNNUMBERED_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, i32, i8*)* @tty_line_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_line_name(%struct.tty_driver* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %9 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TTY_DRIVER_UNNUMBERED_NODE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %17 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 %19, i32* %4, align 4
  br label %32

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %23 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %28 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %24, i64 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %20, %14
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
