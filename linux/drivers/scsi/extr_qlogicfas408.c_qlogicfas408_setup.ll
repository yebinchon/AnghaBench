; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas408.c_qlogicfas408_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas408.c_qlogicfas408_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG0 = common dso_local global i32 0, align 4
@qlcfg8 = common dso_local global i32 0, align 4
@qlcfg5 = common dso_local global i32 0, align 4
@qlcfg9 = common dso_local global i32 0, align 4
@REG1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlogicfas408_setup(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, 8
  %9 = call i32 @outb(i32 1, i32 %8)
  %10 = load i32, i32* @REG0, align 4
  %11 = load i32, i32* @qlcfg8, align 4
  %12 = or i32 64, %11
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 8
  %17 = call i32 @outb(i32 %14, i32 %16)
  %18 = load i32, i32* @qlcfg5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 5
  %21 = call i32 @outb(i32 %18, i32 %20)
  %22 = load i32, i32* @qlcfg9, align 4
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 9
  %25 = call i32 @outb(i32 %22, i32 %24)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
