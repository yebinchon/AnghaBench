; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_table_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_table_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VCC_MAX_PORTS = common dso_local global i64 0, align 8
@vcc_table_lock = common dso_local global i32 0, align 4
@vcc_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @vcc_table_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcc_table_remove(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @VCC_MAX_PORTS, align 8
  %6 = icmp uge i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %19

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @vcc_table_lock, i64 %12)
  %14 = load i32**, i32*** @vcc_table, align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 %15
  store i32* null, i32** %16, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* @vcc_table_lock, i64 %17)
  br label %19

19:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
