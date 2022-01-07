; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_tty_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_tty_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nozomi = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@MAX_PORT = common dso_local global i32 0, align 4
@ntty_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nozomi*)* @tty_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_exit(%struct.nozomi* %0) #0 {
  %2 = alloca %struct.nozomi*, align 8
  %3 = alloca i32, align 4
  store %struct.nozomi* %0, %struct.nozomi** %2, align 8
  %4 = call i32 @DBG1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MAX_PORT, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load %struct.nozomi*, %struct.nozomi** %2, align 8
  %11 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @tty_port_tty_hangup(i32* %16, i32 0)
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %5

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %27, %21
  %23 = load %struct.nozomi*, %struct.nozomi** %2, align 8
  %24 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @msleep(i32 1)
  br label %22

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @MAX_PORT, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load i32, i32* @ntty_driver, align 4
  %36 = load %struct.nozomi*, %struct.nozomi** %2, align 8
  %37 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @tty_unregister_device(i32 %35, i64 %41)
  %43 = load %struct.nozomi*, %struct.nozomi** %2, align 8
  %44 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @tty_port_destroy(i32* %49)
  br label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %30

54:                                               ; preds = %30
  ret void
}

declare dso_local i32 @DBG1(i8*) #1

declare dso_local i32 @tty_port_tty_hangup(i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tty_unregister_device(i32, i64) #1

declare dso_local i32 @tty_port_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
