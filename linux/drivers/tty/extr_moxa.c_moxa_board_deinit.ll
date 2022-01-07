; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_board_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_board_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxa_board_conf = type { i32, %struct.TYPE_2__*, i32*, i64 }
%struct.TYPE_2__ = type { i32 }

@moxa_openlock = common dso_local global i32 0, align 4
@moxa_lock = common dso_local global i32 0, align 4
@MAX_PORTS_PER_BOARD = common dso_local global i32 0, align 4
@moxa_boards = common dso_local global %struct.moxa_board_conf* null, align 8
@moxaDriver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moxa_board_conf*)* @moxa_board_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxa_board_deinit(%struct.moxa_board_conf* %0) #0 {
  %2 = alloca %struct.moxa_board_conf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.moxa_board_conf* %0, %struct.moxa_board_conf** %2, align 8
  %6 = call i32 @mutex_lock(i32* @moxa_openlock)
  %7 = call i32 @spin_lock_bh(i32* @moxa_lock)
  %8 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %9 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = call i32 @spin_unlock_bh(i32* @moxa_lock)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %37, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %14 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %19 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i64 @tty_port_initialized(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %17
  %28 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %29 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @tty_port_tty_hangup(i32* %34, i32 0)
  br label %36

36:                                               ; preds = %27, %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %11

40:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @MAX_PORTS_PER_BOARD, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %47 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @tty_port_destroy(i32* %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %3, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %41

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %87
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %79, %58
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %62 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %67 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i64 @tty_port_initialized(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* %4, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %3, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %59

82:                                               ; preds = %59
  %83 = call i32 @mutex_unlock(i32* @moxa_openlock)
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %90

87:                                               ; preds = %82
  %88 = call i32 @msleep(i32 50)
  %89 = call i32 @mutex_lock(i32* @moxa_openlock)
  br label %58

90:                                               ; preds = %86
  %91 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %92 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** @moxa_boards, align 8
  %93 = ptrtoint %struct.moxa_board_conf* %91 to i64
  %94 = ptrtoint %struct.moxa_board_conf* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 32
  %97 = load i32, i32* @MAX_PORTS_PER_BOARD, align 4
  %98 = zext i32 %97 to i64
  %99 = mul nsw i64 %96, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %113, %90
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %104 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ult i32 %102, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = load i32, i32* @moxaDriver, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %3, align 4
  %111 = add i32 %109, %110
  %112 = call i32 @tty_unregister_device(i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %3, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %101

116:                                              ; preds = %101
  %117 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %118 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @iounmap(i32* %119)
  %121 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %122 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %121, i32 0, i32 2
  store i32* null, i32** %122, align 8
  %123 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %124 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = call i32 @kfree(%struct.TYPE_2__* %125)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @tty_port_initialized(i32*) #1

declare dso_local i32 @tty_port_tty_hangup(i32*, i32) #1

declare dso_local i32 @tty_port_destroy(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
