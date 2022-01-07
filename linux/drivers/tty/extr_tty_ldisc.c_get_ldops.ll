; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_get_ldops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_get_ldops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_ldisc_ops = type { i32, i32 }

@tty_ldiscs_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tty_ldiscs = common dso_local global %struct.tty_ldisc_ops** null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_ldisc_ops* (i32)* @get_ldops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_ldisc_ops* @get_ldops(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.tty_ldisc_ops*, align 8
  %5 = alloca %struct.tty_ldisc_ops*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @raw_spin_lock_irqsave(i32* @tty_ldiscs_lock, i64 %6)
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.tty_ldisc_ops* @ERR_PTR(i32 %9)
  store %struct.tty_ldisc_ops* %10, %struct.tty_ldisc_ops** %5, align 8
  %11 = load %struct.tty_ldisc_ops**, %struct.tty_ldisc_ops*** @tty_ldiscs, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %11, i64 %13
  %15 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %14, align 8
  store %struct.tty_ldisc_ops* %15, %struct.tty_ldisc_ops** %4, align 8
  %16 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %4, align 8
  %17 = icmp ne %struct.tty_ldisc_ops* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.tty_ldisc_ops* @ERR_PTR(i32 %20)
  store %struct.tty_ldisc_ops* %21, %struct.tty_ldisc_ops** %5, align 8
  %22 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %4, align 8
  %23 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @try_module_get(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %4, align 8
  %29 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %4, align 8
  store %struct.tty_ldisc_ops* %32, %struct.tty_ldisc_ops** %5, align 8
  br label %33

33:                                               ; preds = %27, %18
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @raw_spin_unlock_irqrestore(i32* @tty_ldiscs_lock, i64 %35)
  %37 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %5, align 8
  ret %struct.tty_ldisc_ops* %37
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.tty_ldisc_ops* @ERR_PTR(i32) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
