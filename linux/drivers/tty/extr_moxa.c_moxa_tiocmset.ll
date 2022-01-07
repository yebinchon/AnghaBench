; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.moxa_port* }
%struct.moxa_port = type { i32 }

@moxa_openlock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @moxa_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxa_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.moxa_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call i32 @mutex_lock(i32* @moxa_openlock)
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load %struct.moxa_port*, %struct.moxa_port** %13, align 8
  store %struct.moxa_port* %14, %struct.moxa_port** %8, align 8
  %15 = load %struct.moxa_port*, %struct.moxa_port** %8, align 8
  %16 = icmp ne %struct.moxa_port* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = call i32 @mutex_unlock(i32* @moxa_openlock)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.moxa_port*, %struct.moxa_port** %8, align 8
  %23 = call i32 @MoxaPortGetLineOut(%struct.moxa_port* %22, i32* %9, i32* %10)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TIOCM_RTS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @TIOCM_DTR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @TIOCM_RTS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @TIOCM_DTR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load %struct.moxa_port*, %struct.moxa_port** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @MoxaPortLineCtrl(%struct.moxa_port* %48, i32 %49, i32 %50)
  %52 = call i32 @mutex_unlock(i32* @moxa_openlock)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %47, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @MoxaPortGetLineOut(%struct.moxa_port*, i32*, i32*) #1

declare dso_local i32 @MoxaPortLineCtrl(%struct.moxa_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
