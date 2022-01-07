; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_set_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_set_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.fwtty_port* }
%struct.fwtty_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.serial_struct = type { i64, i64, i64, i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ASYNC_USR_MASK = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @set_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.fwtty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.fwtty_port*, %struct.fwtty_port** %8, align 8
  store %struct.fwtty_port* %9, %struct.fwtty_port** %6, align 8
  %10 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %11 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %2
  %15 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %16 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %21 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %26 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 400000000
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19, %14, %2
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %77

32:                                               ; preds = %24
  %33 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %34 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %38 = call i32 @capable(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %63, label %40

40:                                               ; preds = %32
  %41 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %42 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ASYNC_USR_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %48 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ASYNC_USR_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %46, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %40
  %56 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %57 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* @EPERM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %77

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62, %32
  %64 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %65 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @HZ, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sdiv i32 %68, 100
  %70 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %71 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %74 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = call i32 @mutex_unlock(i32* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %63, %55, %29
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
