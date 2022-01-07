; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_proc_show_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_proc_show_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.fwtty_port = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.stats*, i32)* }
%struct.stats = type { i64 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c" addr:%012llx tx:%d rx:%d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c" cts:%d dsr:%d rng:%d dcd:%d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c" fe:%d oe:%d pe:%d brk:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.fwtty_port*)* @fwtty_proc_show_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_proc_show_port(%struct.seq_file* %0, %struct.fwtty_port* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.fwtty_port*, align 8
  %5 = alloca %struct.stats, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.fwtty_port* %1, %struct.fwtty_port** %4, align 8
  %6 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %7 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %6, i32 0, i32 5
  %8 = call i32 @memcpy(%struct.stats* %5, i32* %7, i32 8)
  %9 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %10 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %16 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (%struct.stats*, i32)*, i32 (%struct.stats*, i32)** %18, align 8
  %20 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %21 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %19(%struct.stats* %5, i32 %22)
  br label %24

24:                                               ; preds = %14, %2
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %27 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %31 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 9
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.stats, %struct.stats* %5, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %33, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %39 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %37, i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %45 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %49 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %53 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %57 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %51, i32 %55, i32 %59)
  %61 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %62 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %63 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %67 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %71 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %75 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %69, i32 %73, i32 %77)
  ret void
}

declare dso_local i32 @memcpy(%struct.stats*, i32*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
