; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_tty3215_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_tty3215_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32 }
%struct.tty_driver = type { i32 }
%struct.tty_struct = type { i64, %struct.raw3215_info* }

@raw3215 = common dso_local global %struct.raw3215_info** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @tty3215_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty3215_install(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.raw3215_info*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %7 = load %struct.raw3215_info**, %struct.raw3215_info*** @raw3215, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.raw3215_info*, %struct.raw3215_info** %7, i64 %10
  %12 = load %struct.raw3215_info*, %struct.raw3215_info** %11, align 8
  store %struct.raw3215_info* %12, %struct.raw3215_info** %6, align 8
  %13 = load %struct.raw3215_info*, %struct.raw3215_info** %6, align 8
  %14 = icmp eq %struct.raw3215_info* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.raw3215_info*, %struct.raw3215_info** %6, align 8
  %20 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 1
  store %struct.raw3215_info* %19, %struct.raw3215_info** %21, align 8
  %22 = load %struct.raw3215_info*, %struct.raw3215_info** %6, align 8
  %23 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %22, i32 0, i32 0
  %24 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %26 = call i32 @tty_port_install(i32* %23, %struct.tty_driver* %24, %struct.tty_struct* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @tty_port_install(i32*, %struct.tty_driver*, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
