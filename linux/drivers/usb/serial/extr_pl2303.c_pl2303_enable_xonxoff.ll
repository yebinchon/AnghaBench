; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_enable_xonxoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_enable_xonxoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.pl2303_type_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.pl2303_type_data*)* @pl2303_enable_xonxoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl2303_enable_xonxoff(%struct.tty_struct* %0, %struct.pl2303_type_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.pl2303_type_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.pl2303_type_data* %1, %struct.pl2303_type_data** %5, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %7 = call i32 @I_IXON(%struct.tty_struct* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = call i64 @I_IXANY(%struct.tty_struct* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %30

14:                                               ; preds = %9
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = call i32 @START_CHAR(%struct.tty_struct* %15)
  %17 = icmp ne i32 %16, 17
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = call i32 @STOP_CHAR(%struct.tty_struct* %19)
  %21 = icmp ne i32 %20, 19
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14
  store i32 0, i32* %3, align 4
  br label %30

23:                                               ; preds = %18
  %24 = load %struct.pl2303_type_data*, %struct.pl2303_type_data** %5, align 8
  %25 = getelementptr inbounds %struct.pl2303_type_data, %struct.pl2303_type_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %30

29:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %22, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @I_IXON(%struct.tty_struct*) #1

declare dso_local i64 @I_IXANY(%struct.tty_struct*) #1

declare dso_local i32 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @STOP_CHAR(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
