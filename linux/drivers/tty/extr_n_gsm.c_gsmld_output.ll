; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32*, i32)* }

@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"gsmld_output: \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsm_mux*, i32*, i32)* @gsmld_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsmld_output(%struct.gsm_mux* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsm_mux*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.gsm_mux* %0, %struct.gsm_mux** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %9 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = call i32 @tty_write_room(%struct.TYPE_5__* %10)
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %16 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %17 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = call i32 @set_bit(i32 %15, i32* %19)
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %3
  %24 = load i32, i32* @debug, align 4
  %25 = and i32 %24, 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28, i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %34 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_5__*, i32*, i32)*, i32 (%struct.TYPE_5__*, i32*, i32)** %38, align 8
  %40 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %41 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 %39(%struct.TYPE_5__* %42, i32* %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %32, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @tty_write_room(%struct.TYPE_5__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
