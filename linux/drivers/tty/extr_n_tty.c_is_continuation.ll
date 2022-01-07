; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_is_continuation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_is_continuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.tty_struct*)* @is_continuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_continuation(i8 zeroext %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.tty_struct*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %6 = call i64 @I_IUTF8(%struct.tty_struct* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i8, i8* %3, align 1
  %10 = call i64 @is_utf8_continuation(i8 zeroext %9)
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ false, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i64 @I_IUTF8(%struct.tty_struct*) #1

declare dso_local i64 @is_utf8_continuation(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
