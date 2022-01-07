; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_control_rls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_control_rls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@NUM_DLCI = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@CMD_RLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_mux*, i32*, i32)* @gsm_control_rls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_control_rls(%struct.gsm_mux* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gsm_mux*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.gsm_mux* %0, %struct.gsm_mux** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %11, align 8
  br label %14

14:                                               ; preds = %26, %3
  %15 = load i32*, i32** %11, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* %15, align 4
  %18 = call i64 @gsm_read_ea(i32* %8, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %99

26:                                               ; preds = %20
  br label %14

27:                                               ; preds = %14
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %99

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = lshr i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @NUM_DLCI, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %44 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp eq %struct.TYPE_2__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %42, %38, %33
  br label %99

52:                                               ; preds = %42
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %99

59:                                               ; preds = %52
  %60 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %61 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store %struct.tty_port* %67, %struct.tty_port** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %73 = load i32, i32* @TTY_OVERRUN, align 4
  %74 = call i32 @tty_insert_flip_char(%struct.tty_port* %72, i32 0, i32 %73)
  br label %75

75:                                               ; preds = %71, %59
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %81 = load i32, i32* @TTY_PARITY, align 4
  %82 = call i32 @tty_insert_flip_char(%struct.tty_port* %80, i32 0, i32 %81)
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %89 = load i32, i32* @TTY_FRAME, align 4
  %90 = call i32 @tty_insert_flip_char(%struct.tty_port* %88, i32 0, i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %93 = call i32 @tty_flip_buffer_push(%struct.tty_port* %92)
  %94 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %95 = load i32, i32* @CMD_RLS, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @gsm_control_reply(%struct.gsm_mux* %94, i32 %95, i32* %96, i32 %97)
  br label %99

99:                                               ; preds = %91, %58, %51, %32, %25
  ret void
}

declare dso_local i64 @gsm_read_ea(i32*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @gsm_control_reply(%struct.gsm_mux*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
