; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_default_receive_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_default_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32 }
%struct.tty_struct = type { i32 }
%struct.tty_ldisc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_port*, i8*, i8*, i64)* @tty_port_default_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_port_default_receive_buf(%struct.tty_port* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tty_struct*, align 8
  %12 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %14 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.tty_struct* @READ_ONCE(i32 %15)
  store %struct.tty_struct* %16, %struct.tty_struct** %11, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %18 = icmp ne %struct.tty_struct* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %35

20:                                               ; preds = %4
  %21 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %22 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %21)
  store %struct.tty_ldisc* %22, %struct.tty_ldisc** %12, align 8
  %23 = load %struct.tty_ldisc*, %struct.tty_ldisc** %12, align 8
  %24 = icmp ne %struct.tty_ldisc* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %35

26:                                               ; preds = %20
  %27 = load %struct.tty_ldisc*, %struct.tty_ldisc** %12, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @tty_ldisc_receive_buf(%struct.tty_ldisc* %27, i8* %28, i8* %29, i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.tty_ldisc*, %struct.tty_ldisc** %12, align 8
  %33 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %26, %25, %19
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.tty_struct* @READ_ONCE(i32) #1

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_receive_buf(%struct.tty_ldisc*, i8*, i8*, i64) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
