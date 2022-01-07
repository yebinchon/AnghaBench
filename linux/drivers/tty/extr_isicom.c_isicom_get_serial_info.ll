; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.isi_port* }
%struct.isi_port = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, %struct.isi_port* }

@.str = private unnamed_addr constant [13 x i8] c"isicom_ioctl\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@isi_ports = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @isicom_get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isicom_get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.isi_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.isi_port*, %struct.isi_port** %8, align 8
  store %struct.isi_port* %9, %struct.isi_port** %6, align 8
  %10 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @isicom_paranoia_check(%struct.isi_port* %10, i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %67

19:                                               ; preds = %2
  %20 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %21 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %25 = load i32, i32* @isi_ports, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %24, i64 %27
  %29 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %30 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %29, i32 0, i32 5
  store %struct.isi_port* %28, %struct.isi_port** %30, align 8
  %31 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %32 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %37 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %39 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %44 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %46 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %50 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %52 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %56 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %58 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %62 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %64 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %19, %16
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @isicom_paranoia_check(%struct.isi_port*, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
