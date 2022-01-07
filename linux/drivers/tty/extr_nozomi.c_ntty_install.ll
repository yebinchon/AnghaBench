; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_ntty_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_ntty_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }
%struct.tty_struct = type { %struct.port* }
%struct.port = type { i32 }
%struct.nozomi = type { i64 }

@NOZOMI_STATE_READY = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @ntty_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntty_install(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.port*, align 8
  %7 = alloca %struct.nozomi*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %10 = call %struct.port* @get_port_by_tty(%struct.tty_struct* %9)
  store %struct.port* %10, %struct.port** %6, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = call %struct.nozomi* @get_dc_by_tty(%struct.tty_struct* %11)
  store %struct.nozomi* %12, %struct.nozomi** %7, align 8
  %13 = load %struct.port*, %struct.port** %6, align 8
  %14 = icmp ne %struct.port* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %17 = icmp ne %struct.nozomi* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %20 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NOZOMI_STATE_READY, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %15, %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %18
  %28 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %29 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %30 = call i32 @tty_standard_install(%struct.tty_driver* %28, %struct.tty_struct* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.port*, %struct.port** %6, align 8
  %35 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 0
  store %struct.port* %34, %struct.port** %36, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %24
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.port* @get_port_by_tty(%struct.tty_struct*) #1

declare dso_local %struct.nozomi* @get_dc_by_tty(%struct.tty_struct*) #1

declare dso_local i32 @tty_standard_install(%struct.tty_driver*, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
