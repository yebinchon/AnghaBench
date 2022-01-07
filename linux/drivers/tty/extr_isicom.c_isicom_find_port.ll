; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_find_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_find_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isi_board = type { i32, i32 }
%struct.isi_port = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.tty_struct = type { i32, i32 }

@isi_card = common dso_local global %struct.isi_board* null, align 8
@FIRMWARE_LOADED = common dso_local global i32 0, align 4
@isi_ports = common dso_local global %struct.isi_port* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"isicom_open\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_port* (%struct.tty_struct*)* @isicom_find_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_port* @isicom_find_port(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.isi_port*, align 8
  %5 = alloca %struct.isi_board*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @BOARD(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.isi_board*, %struct.isi_board** @isi_card, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %13, i64 %15
  store %struct.isi_board* %16, %struct.isi_board** %5, align 8
  %17 = load %struct.isi_board*, %struct.isi_board** %5, align 8
  %18 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FIRMWARE_LOADED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store %struct.tty_port* null, %struct.tty_port** %2, align 8
  br label %50

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul i32 %26, 16
  %28 = load %struct.isi_board*, %struct.isi_board** %5, align 8
  %29 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %27, %30
  %32 = sub i32 %31, 1
  %33 = icmp ugt i32 %25, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store %struct.tty_port* null, %struct.tty_port** %2, align 8
  br label %50

35:                                               ; preds = %24
  %36 = load %struct.isi_port*, %struct.isi_port** @isi_ports, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %36, i64 %38
  store %struct.isi_port* %39, %struct.isi_port** %4, align 8
  %40 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %41 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @isicom_paranoia_check(%struct.isi_port* %40, i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store %struct.tty_port* null, %struct.tty_port** %2, align 8
  br label %50

47:                                               ; preds = %35
  %48 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %49 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %48, i32 0, i32 0
  store %struct.tty_port* %49, %struct.tty_port** %2, align 8
  br label %50

50:                                               ; preds = %47, %46, %34, %23
  %51 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  ret %struct.tty_port* %51
}

declare dso_local i32 @BOARD(i32) #1

declare dso_local i64 @isicom_paranoia_check(%struct.isi_port*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
