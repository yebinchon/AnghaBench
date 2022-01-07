; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxa_board_conf = type { i32, %struct.moxa_port*, i32 }
%struct.moxa_port = type { i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.tty_struct = type { i32, i32, %struct.moxa_port* }
%struct.file = type { i32 }

@MAX_PORTS = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@moxa_openlock = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@moxa_boards = common dso_local global %struct.moxa_board_conf* null, align 8
@MAX_PORTS_PER_BOARD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @moxa_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxa_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.moxa_board_conf*, align 8
  %7 = alloca %struct.moxa_port*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @MAX_PORTS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %17 = call i64 @capable(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi i32 [ 0, %19 ], [ %22, %20 ]
  store i32 %24, i32* %3, align 4
  br label %120

25:                                               ; preds = %2
  %26 = call i64 @mutex_lock_interruptible(i32* @moxa_openlock)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %120

31:                                               ; preds = %25
  %32 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** @moxa_boards, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MAX_PORTS_PER_BOARD, align 4
  %35 = sdiv i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %32, i64 %36
  store %struct.moxa_board_conf* %37, %struct.moxa_board_conf** %6, align 8
  %38 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %6, align 8
  %39 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %31
  %43 = call i32 @mutex_unlock(i32* @moxa_openlock)
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %120

46:                                               ; preds = %31
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @MAX_PORTS_PER_BOARD, align 4
  %49 = srem i32 %47, %48
  %50 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %6, align 8
  %51 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = call i32 @mutex_unlock(i32* @moxa_openlock)
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %120

58:                                               ; preds = %46
  %59 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %6, align 8
  %60 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %59, i32 0, i32 1
  %61 = load %struct.moxa_port*, %struct.moxa_port** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @MAX_PORTS_PER_BOARD, align 4
  %64 = srem i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %61, i64 %65
  store %struct.moxa_port* %66, %struct.moxa_port** %7, align 8
  %67 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %68 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %73 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %74 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %73, i32 0, i32 2
  store %struct.moxa_port* %72, %struct.moxa_port** %74, align 8
  %75 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %76 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %75, i32 0, i32 1
  %77 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %78 = call i32 @tty_port_tty_set(%struct.TYPE_5__* %76, %struct.tty_struct* %77)
  %79 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %80 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %84 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %83, i32 0, i32 1
  %85 = call i32 @tty_port_initialized(%struct.TYPE_5__* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %109, label %87

87:                                               ; preds = %58
  %88 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %89 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %91 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %92 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %91, i32 0, i32 1
  %93 = call i32 @moxa_set_tty_param(%struct.tty_struct* %90, i32* %92)
  %94 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %95 = call i32 @MoxaPortLineCtrl(%struct.moxa_port* %94, i32 1, i32 1)
  %96 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %97 = call i32 @MoxaPortEnable(%struct.moxa_port* %96)
  %98 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %99 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %100 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PORT_16550A, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @MoxaSetFifo(%struct.moxa_port* %98, i32 %104)
  %106 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %107 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %106, i32 0, i32 1
  %108 = call i32 @tty_port_set_initialized(%struct.TYPE_5__* %107, i32 1)
  br label %109

109:                                              ; preds = %87, %58
  %110 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %111 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = call i32 @mutex_unlock(i32* @moxa_openlock)
  %115 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %116 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %115, i32 0, i32 1
  %117 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %118 = load %struct.file*, %struct.file** %5, align 8
  %119 = call i32 @tty_port_block_til_ready(%struct.TYPE_5__* %116, %struct.tty_struct* %117, %struct.file* %118)
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %109, %54, %42, %28, %23
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_port_tty_set(%struct.TYPE_5__*, %struct.tty_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_port_initialized(%struct.TYPE_5__*) #1

declare dso_local i32 @moxa_set_tty_param(%struct.tty_struct*, i32*) #1

declare dso_local i32 @MoxaPortLineCtrl(%struct.moxa_port*, i32, i32) #1

declare dso_local i32 @MoxaPortEnable(%struct.moxa_port*) #1

declare dso_local i32 @MoxaSetFifo(%struct.moxa_port*, i32) #1

declare dso_local i32 @tty_port_set_initialized(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @tty_port_block_til_ready(%struct.TYPE_5__*, %struct.tty_struct*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
