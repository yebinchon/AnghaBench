; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_keyboard.c_to_utf8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_keyboard.c_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_port*, i32)* @to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_utf8(%struct.tty_port* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i32, align 4
  store %struct.tty_port* %0, %struct.tty_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 128
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @kbd_put_queue(%struct.tty_port* %8, i32 %9)
  br label %43

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2048
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 6
  %18 = or i32 192, %17
  %19 = call i32 @kbd_put_queue(%struct.tty_port* %15, i32 %18)
  %20 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 63
  %23 = or i32 128, %22
  %24 = call i32 @kbd_put_queue(%struct.tty_port* %20, i32 %23)
  br label %42

25:                                               ; preds = %11
  %26 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 12
  %29 = or i32 224, %28
  %30 = call i32 @kbd_put_queue(%struct.tty_port* %26, i32 %29)
  %31 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 6
  %34 = and i32 %33, 63
  %35 = or i32 128, %34
  %36 = call i32 @kbd_put_queue(%struct.tty_port* %31, i32 %35)
  %37 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 63
  %40 = or i32 128, %39
  %41 = call i32 @kbd_put_queue(%struct.tty_port* %37, i32 %40)
  br label %42

42:                                               ; preds = %25, %14
  br label %43

43:                                               ; preds = %42, %7
  ret void
}

declare dso_local i32 @kbd_put_queue(%struct.tty_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
