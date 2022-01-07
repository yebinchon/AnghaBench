; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { %struct.proc_dir_entry*, %struct.TYPE_2__* }
%struct.proc_dir_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"afs\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cells\00", align 1
@afs_proc_cells_ops = common dso_local global i32 0, align 4
@afs_proc_cells_write = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"rootcell\00", align 1
@afs_proc_rootcell_show = common dso_local global i32 0, align 4
@afs_proc_rootcell_write = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"servers\00", align 1
@afs_proc_servers_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@afs_proc_stats_show = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"sysname\00", align 1
@afs_proc_sysname_ops = common dso_local global i32 0, align 4
@afs_proc_sysname_write = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_proc_init(%struct.afs_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_net*, align 8
  %4 = alloca %struct.proc_dir_entry*, align 8
  store %struct.afs_net* %0, %struct.afs_net** %3, align 8
  %5 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %7 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %10 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.proc_dir_entry* @proc_net_mkdir(%struct.TYPE_2__* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store %struct.proc_dir_entry* %14, %struct.proc_dir_entry** %4, align 8
  %15 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %16 = icmp ne %struct.proc_dir_entry* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %20 = load i32, i32* @afs_proc_cells_write, align 4
  %21 = call i32 @proc_create_net_data_write(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 420, %struct.proc_dir_entry* %19, i32* @afs_proc_cells_ops, i32 %20, i32 4, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %25 = load i32, i32* @afs_proc_rootcell_show, align 4
  %26 = load i32, i32* @afs_proc_rootcell_write, align 4
  %27 = call i32 @proc_create_net_single_write(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 420, %struct.proc_dir_entry* %24, i32 %25, i32 %26, i32* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %31 = call i32 @proc_create_net(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 292, %struct.proc_dir_entry* %30, i32* @afs_proc_servers_ops, i32 4)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %35 = load i32, i32* @afs_proc_stats_show, align 4
  %36 = call i32 @proc_create_net_single(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 292, %struct.proc_dir_entry* %34, i32 %35, i32* null)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %40 = load i32, i32* @afs_proc_sysname_write, align 4
  %41 = call i32 @proc_create_net_data_write(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 420, %struct.proc_dir_entry* %39, i32* @afs_proc_sysname_ops, i32 %40, i32 4, i32* null)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %33, %29, %23, %18
  br label %49

44:                                               ; preds = %38
  %45 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %46 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %47 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %46, i32 0, i32 0
  store %struct.proc_dir_entry* %45, %struct.proc_dir_entry** %47, align 8
  %48 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

49:                                               ; preds = %43
  %50 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %51 = call i32 @proc_remove(%struct.proc_dir_entry* %50)
  br label %52

52:                                               ; preds = %49, %17
  %53 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %44
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.proc_dir_entry* @proc_net_mkdir(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @proc_create_net_data_write(i8*, i32, %struct.proc_dir_entry*, i32*, i32, i32, i32*) #1

declare dso_local i32 @proc_create_net_single_write(i8*, i32, %struct.proc_dir_entry*, i32, i32, i32*) #1

declare dso_local i32 @proc_create_net(i8*, i32, %struct.proc_dir_entry*, i32*, i32) #1

declare dso_local i32 @proc_create_net_single(i8*, i32, %struct.proc_dir_entry*, i32, i32*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @proc_remove(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
