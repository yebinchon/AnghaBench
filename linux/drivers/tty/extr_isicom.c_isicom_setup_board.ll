; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_setup_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_setup_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isi_board = type { i32, i32, %struct.isi_port*, i32 }
%struct.isi_port = type { i32 }

@BOARD_INIT = common dso_local global i32 0, align 4
@BOARD_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isi_board*)* @isicom_setup_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isicom_setup_board(%struct.isi_board* %0) #0 {
  %2 = alloca %struct.isi_board*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.isi_port*, align 8
  store %struct.isi_board* %0, %struct.isi_board** %2, align 8
  %5 = load %struct.isi_board*, %struct.isi_board** %2, align 8
  %6 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 8
  %9 = load %struct.isi_board*, %struct.isi_board** %2, align 8
  %10 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BOARD_INIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %1
  %16 = load %struct.isi_board*, %struct.isi_board** %2, align 8
  %17 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %16, i32 0, i32 2
  %18 = load %struct.isi_port*, %struct.isi_port** %17, align 8
  store %struct.isi_port* %18, %struct.isi_port** %4, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %28, %15
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.isi_board*, %struct.isi_board** %2, align 8
  %22 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %27 = call i32 @drop_dtr_rts(%struct.isi_port* %26)
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  %31 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %32 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %31, i32 1
  store %struct.isi_port* %32, %struct.isi_port** %4, align 8
  br label %19

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* @BOARD_ACTIVE, align 4
  %36 = load i32, i32* @BOARD_INIT, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.isi_board*, %struct.isi_board** %2, align 8
  %39 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  ret void
}

declare dso_local i32 @drop_dtr_rts(%struct.isi_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
