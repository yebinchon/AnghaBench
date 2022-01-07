; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_stats_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.fw_serial* }
%struct.fw_serial = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.fwtty_port = type { i32 }

@num_ports = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%2d:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @fwtty_stats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwtty_stats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fw_serial*, align 8
  %6 = alloca %struct.fwtty_port*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.fw_serial*, %struct.fw_serial** %9, align 8
  store %struct.fw_serial* %10, %struct.fw_serial** %5, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %45, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @num_ports, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load %struct.fw_serial*, %struct.fw_serial** %5, align 8
  %17 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.fwtty_port* @fwtty_port_get(i32 %24)
  store %struct.fwtty_port* %25, %struct.fwtty_port** %6, align 8
  %26 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %27 = icmp ne %struct.fwtty_port* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %15
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %31 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %36 = call i32 @fwtty_proc_show_port(%struct.seq_file* %34, %struct.fwtty_port* %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %39 = call i32 @fwtty_debugfs_show_port(%struct.seq_file* %37, %struct.fwtty_port* %38)
  %40 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %41 = call i32 @fwtty_port_put(%struct.fwtty_port* %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 @seq_puts(%struct.seq_file* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %28, %15
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %11

48:                                               ; preds = %11
  ret i32 0
}

declare dso_local %struct.fwtty_port* @fwtty_port_get(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @fwtty_proc_show_port(%struct.seq_file*, %struct.fwtty_port*) #1

declare dso_local i32 @fwtty_debugfs_show_port(%struct.seq_file*, %struct.fwtty_port*) #1

declare dso_local i32 @fwtty_port_put(%struct.fwtty_port*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
