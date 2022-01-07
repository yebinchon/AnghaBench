; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_set_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_set_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.moxa_port* }
%struct.moxa_port = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.serial_struct = type { i64, i64, i64, i32, i32, i32, i64 }

@MAX_PORTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ASYNC_USR_MASK = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @moxa_set_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxa_set_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.moxa_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.moxa_port*, %struct.moxa_port** %8, align 8
  store %struct.moxa_port* %9, %struct.moxa_port** %6, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_PORTS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %105

18:                                               ; preds = %2
  %19 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %20 = icmp ne %struct.moxa_port* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %105

24:                                               ; preds = %18
  %25 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %26 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %24
  %30 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %31 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %36 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %41 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 921600
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %34, %29, %24
  %45 = load i32, i32* @EPERM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %105

47:                                               ; preds = %39
  %48 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %49 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %53 = call i32 @capable(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %47
  %56 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %57 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ASYNC_USR_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %63 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ASYNC_USR_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %61, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %55
  %71 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %72 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* @EPERM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %105

77:                                               ; preds = %55
  br label %78

78:                                               ; preds = %77, %47
  %79 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %80 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @HZ, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sdiv i32 %83, 100
  %85 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %86 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %89 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %90 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PORT_16550A, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @MoxaSetFifo(%struct.moxa_port* %88, i32 %94)
  %96 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %97 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %100 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %102 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = call i32 @mutex_unlock(i32* %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %78, %70, %44, %21, %15
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @MoxaSetFifo(%struct.moxa_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
