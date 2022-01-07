; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_register_ldisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_register_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_ldisc_ops = type { i32, i64 }

@N_TTY = common dso_local global i32 0, align 4
@NR_LDISCS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tty_ldiscs_lock = common dso_local global i32 0, align 4
@tty_ldiscs = common dso_local global %struct.tty_ldisc_ops** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_register_ldisc(i32 %0, %struct.tty_ldisc_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_ldisc_ops*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.tty_ldisc_ops* %1, %struct.tty_ldisc_ops** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @N_TTY, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NR_LDISCS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %11
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @raw_spin_lock_irqsave(i32* @tty_ldiscs_lock, i64 %19)
  %21 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %5, align 8
  %22 = load %struct.tty_ldisc_ops**, %struct.tty_ldisc_ops*** @tty_ldiscs, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %22, i64 %24
  store %struct.tty_ldisc_ops* %21, %struct.tty_ldisc_ops** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %5, align 8
  %28 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %5, align 8
  %30 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @raw_spin_unlock_irqrestore(i32* @tty_ldiscs_lock, i64 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %18, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
