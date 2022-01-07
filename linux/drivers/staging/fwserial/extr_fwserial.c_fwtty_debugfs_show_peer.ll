; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_debugfs_show_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_debugfs_show_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.fwtty_peer = type { i32, i64, i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c" %s:\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c" node:%04x gen:%d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c" sp:%d max:%d guid:%016llx\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" mgmt:%012llx\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" addr:%012llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.fwtty_peer*)* @fwtty_debugfs_show_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_debugfs_show_peer(%struct.seq_file* %0, %struct.fwtty_peer* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.fwtty_peer*, align 8
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.fwtty_peer* %1, %struct.fwtty_peer** %4, align 8
  %6 = load %struct.fwtty_peer*, %struct.fwtty_peer** %4, align 8
  %7 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = call i32 (...) @smp_rmb()
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.fwtty_peer*, %struct.fwtty_peer** %4, align 8
  %12 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %11, i32 0, i32 7
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i64 @dev_name(i32* %14)
  %16 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.fwtty_peer*, %struct.fwtty_peer** %4, align 8
  %19 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %21, i32 %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load %struct.fwtty_peer*, %struct.fwtty_peer** %4, align 8
  %26 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.fwtty_peer*, %struct.fwtty_peer** %4, align 8
  %30 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.fwtty_peer*, %struct.fwtty_peer** %4, align 8
  %33 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %28, i32 %31, i64 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.fwtty_peer*, %struct.fwtty_peer** %4, align 8
  %38 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.fwtty_peer*, %struct.fwtty_peer** %4, align 8
  %43 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = call i32 @seq_putc(%struct.seq_file* %46, i8 signext 10)
  ret void
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i64 @dev_name(i32*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
