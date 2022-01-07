; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas408.c_qlogicfas408_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas408.c_qlogicfas408_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlogicfas408_detect(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @REG1, align 4
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %6, 14
  %8 = call i32 @inb(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, 14
  %11 = call i32 @inb(i32 %10)
  %12 = xor i32 %8, %11
  %13 = icmp eq i32 %12, 7
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 14
  %17 = call i32 @inb(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 14
  %20 = call i32 @inb(i32 %19)
  %21 = xor i32 %17, %20
  %22 = icmp eq i32 %21, 7
  br label %23

23:                                               ; preds = %14, %2
  %24 = phi i1 [ false, %2 ], [ %22, %14 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
