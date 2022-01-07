; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.tty_ldisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Falling back ldisc for %s.\0A\00", align 1
@N_TTY = common dso_local global i32 0, align 4
@N_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Couldn't open N_NULL ldisc for %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.tty_ldisc*)* @tty_ldisc_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_ldisc_restore(%struct.tty_struct* %0, %struct.tty_ldisc* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.tty_ldisc*, align 8
  %5 = alloca i8*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.tty_ldisc* %1, %struct.tty_ldisc** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = load %struct.tty_ldisc*, %struct.tty_ldisc** %4, align 8
  %8 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @tty_ldisc_failto(%struct.tty_struct* %6, i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %16 = call i8* @tty_name(%struct.tty_struct* %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %20 = load i32, i32* @N_TTY, align 4
  %21 = call i64 @tty_ldisc_failto(%struct.tty_struct* %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %25 = load i32, i32* @N_NULL, align 4
  %26 = call i64 @tty_ldisc_failto(%struct.tty_struct* %24, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %23, %14
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

declare dso_local i64 @tty_ldisc_failto(%struct.tty_struct*, i32) #1

declare dso_local i8* @tty_name(%struct.tty_struct*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @panic(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
