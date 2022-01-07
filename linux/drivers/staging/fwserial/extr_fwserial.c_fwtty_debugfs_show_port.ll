; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_debugfs_show_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_debugfs_show_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.fwtty_port = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.seq_file*, i32)*, i32 (%struct.stats*, i32)* }
%struct.stats = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c" dr:%d st:%d err:%d lost:%d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" pkts:%d thr:%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.fwtty_port*)* @fwtty_debugfs_show_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_debugfs_show_port(%struct.seq_file* %0, %struct.fwtty_port* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.fwtty_port*, align 8
  %5 = alloca %struct.stats, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.fwtty_port* %1, %struct.fwtty_port** %4, align 8
  %6 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %7 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %6, i32 0, i32 0
  %8 = call i32 @memcpy(%struct.stats* %5, i32* %7, i32 24)
  %9 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %10 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %16 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32 (%struct.stats*, i32)*, i32 (%struct.stats*, i32)** %18, align 8
  %20 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %21 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %19(%struct.stats* %5, i32 %22)
  br label %24

24:                                               ; preds = %14, %2
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = getelementptr inbounds %struct.stats, %struct.stats* %5, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.stats, %struct.stats* %5, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.stats, %struct.stats* %5, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.stats, %struct.stats* %5, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29, i32 %31, i32 %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = getelementptr inbounds %struct.stats, %struct.stats* %5, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.stats, %struct.stats* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %39)
  %41 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %42 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %24
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = call i32 @seq_puts(%struct.seq_file* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %50 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.seq_file*, i32)*, i32 (%struct.seq_file*, i32)** %52, align 8
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %56 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %53(%struct.seq_file* %54, i32 %57)
  br label %59

59:                                               ; preds = %46, %24
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %62 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %61, i32 0, i32 0
  %63 = call i32 @fwtty_dump_profile(%struct.seq_file* %60, i32* %62)
  ret void
}

declare dso_local i32 @memcpy(%struct.stats*, i32*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @fwtty_dump_profile(%struct.seq_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
