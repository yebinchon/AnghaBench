; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.mxser_port* }
%struct.mxser_port = type { i32, %struct.tty_port, i32, %struct.TYPE_2__*, i32, i32 }
%struct.tty_port = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MXSER_PORTS = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @mxser_get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.mxser_port*, align 8
  %7 = alloca %struct.tty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.mxser_port*, %struct.mxser_port** %9, align 8
  store %struct.mxser_port* %10, %struct.mxser_port** %6, align 8
  %11 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %12 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %11, i32 0, i32 1
  store %struct.tty_port* %12, %struct.tty_port** %7, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MXSER_PORTS, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOTTY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %78

21:                                               ; preds = %2
  %22 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %23 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %26 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %29 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %34 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %36 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %39 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %41 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %46 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %48 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %52 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %54 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %57 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %59 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %63 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %65 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %69 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %71 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %74 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %76 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %21, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
