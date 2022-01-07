; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_proc_stats_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_proc_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.afs_net = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"kAFS statistics\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"dir-mgmt: look=%u reval=%u inval=%u relpg=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"dir-data: rdpg=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"dir-edit: cr=%u rm=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"file-rd : n=%u nb=%lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"file-wr : n=%u nb=%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @afs_proc_stats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_proc_stats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.afs_net*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = call %struct.afs_net* @afs_seq2net_single(%struct.seq_file* %6)
  store %struct.afs_net* %7, %struct.afs_net** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = call i32 @seq_puts(%struct.seq_file* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %12 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %11, i32 0, i32 10
  %13 = call i32 @atomic_read(i32* %12)
  %14 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %15 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %14, i32 0, i32 9
  %16 = call i32 @atomic_read(i32* %15)
  %17 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %18 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %17, i32 0, i32 8
  %19 = call i32 @atomic_read(i32* %18)
  %20 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %21 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %20, i32 0, i32 7
  %22 = call i32 @atomic_read(i32* %21)
  %23 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %26 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %25, i32 0, i32 6
  %27 = call i32 @atomic_read(i32* %26)
  %28 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %31 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %30, i32 0, i32 5
  %32 = call i32 @atomic_read(i32* %31)
  %33 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %34 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %33, i32 0, i32 4
  %35 = call i32 @atomic_read(i32* %34)
  %36 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %39 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %38, i32 0, i32 3
  %40 = call i32 @atomic_read(i32* %39)
  %41 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %42 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %41, i32 0, i32 2
  %43 = call i32 @atomic_long_read(i32* %42)
  %44 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %47 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %46, i32 0, i32 1
  %48 = call i32 @atomic_read(i32* %47)
  %49 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %50 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %49, i32 0, i32 0
  %51 = call i32 @atomic_long_read(i32* %50)
  %52 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %48, i32 %51)
  ret i32 0
}

declare dso_local %struct.afs_net* @afs_seq2net_single(%struct.seq_file*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_long_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
