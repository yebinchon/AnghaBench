; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_ntty_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_ntty_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.nozomi = type { i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @ntty_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntty_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nozomi*, align 8
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = call %struct.nozomi* @get_dc_by_tty(%struct.tty_struct* %9)
  store %struct.nozomi* %10, %struct.nozomi** %7, align 8
  %11 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %12 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @TIOCM_RTS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %21 = call i32 @set_rts(%struct.tty_struct* %20, i32 1)
  br label %31

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @TIOCM_RTS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %29 = call i32 @set_rts(%struct.tty_struct* %28, i32 0)
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @TIOCM_DTR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %38 = call i32 @set_dtr(%struct.tty_struct* %37, i32 1)
  br label %48

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @TIOCM_DTR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %46 = call i32 @set_dtr(%struct.tty_struct* %45, i32 0)
  br label %47

47:                                               ; preds = %44, %39
  br label %48

48:                                               ; preds = %47, %36
  %49 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %50 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %49, i32 0, i32 0
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  ret i32 0
}

declare dso_local %struct.nozomi* @get_dc_by_tty(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_rts(%struct.tty_struct*, i32) #1

declare dso_local i32 @set_dtr(%struct.tty_struct*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
