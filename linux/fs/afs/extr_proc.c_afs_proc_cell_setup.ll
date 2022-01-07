; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_proc_cell_setup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_proc_cell_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_cell = type { i32, %struct.afs_net* }
%struct.afs_net = type { i32, i32 }
%struct.proc_dir_entry = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%p{%s},%p\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"vlservers\00", align 1
@afs_proc_cell_vlservers_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"volumes\00", align 1
@afs_proc_cell_volumes_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_proc_cell_setup(%struct.afs_cell* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_cell*, align 8
  %4 = alloca %struct.proc_dir_entry*, align 8
  %5 = alloca %struct.afs_net*, align 8
  store %struct.afs_cell* %0, %struct.afs_cell** %3, align 8
  %6 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %7 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %6, i32 0, i32 1
  %8 = load %struct.afs_net*, %struct.afs_net** %7, align 8
  store %struct.afs_net* %8, %struct.afs_net** %5, align 8
  %9 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %10 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %11 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %14 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @_enter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.afs_cell* %9, i32 %12, i32 %15)
  %17 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %18 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %21 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %24 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.proc_dir_entry* @proc_net_mkdir(i32 %19, i32 %22, i32 %25)
  store %struct.proc_dir_entry* %26, %struct.proc_dir_entry** %4, align 8
  %27 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %28 = icmp ne %struct.proc_dir_entry* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %51

30:                                               ; preds = %1
  %31 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %32 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %33 = call i32 @proc_create_net_data(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.proc_dir_entry* %31, i32* @afs_proc_cell_vlservers_ops, i32 4, %struct.afs_cell* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %37 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %38 = call i32 @proc_create_net_data(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.proc_dir_entry* %36, i32* @afs_proc_cell_volumes_ops, i32 4, %struct.afs_cell* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %30
  br label %43

41:                                               ; preds = %35
  %42 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

43:                                               ; preds = %40
  %44 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %45 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %48 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @remove_proc_subtree(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %43, %29
  %52 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %41
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @_enter(i8*, %struct.afs_cell*, i32, i32) #1

declare dso_local %struct.proc_dir_entry* @proc_net_mkdir(i32, i32, i32) #1

declare dso_local i32 @proc_create_net_data(i8*, i32, %struct.proc_dir_entry*, i32*, i32, %struct.afs_cell*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @remove_proc_subtree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
