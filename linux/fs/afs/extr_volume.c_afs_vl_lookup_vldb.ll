; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_volume.c_afs_vl_lookup_vldb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_volume.c_afs_vl_lookup_vldb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vldb_entry = type { i32 }
%struct.afs_cell = type { i32 }
%struct.key = type { i32 }
%struct.afs_vl_cursor = type { i32 }

@EDESTADDRREQ = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.afs_vldb_entry* (%struct.afs_cell*, %struct.key*, i8*, i64)* @afs_vl_lookup_vldb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.afs_vldb_entry* @afs_vl_lookup_vldb(%struct.afs_cell* %0, %struct.key* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.afs_vldb_entry*, align 8
  %6 = alloca %struct.afs_cell*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.afs_vldb_entry*, align 8
  %11 = alloca %struct.afs_vl_cursor, align 4
  %12 = alloca i32, align 4
  store %struct.afs_cell* %0, %struct.afs_cell** %6, align 8
  store %struct.key* %1, %struct.key** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @EDESTADDRREQ, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.afs_vldb_entry* @ERR_PTR(i32 %14)
  store %struct.afs_vldb_entry* %15, %struct.afs_vldb_entry** %10, align 8
  %16 = load %struct.afs_cell*, %struct.afs_cell** %6, align 8
  %17 = load %struct.key*, %struct.key** %7, align 8
  %18 = call i32 @afs_begin_vlserver_operation(%struct.afs_vl_cursor* %11, %struct.afs_cell* %16, %struct.key* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ERESTARTSYS, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.afs_vldb_entry* @ERR_PTR(i32 %22)
  store %struct.afs_vldb_entry* %23, %struct.afs_vldb_entry** %5, align 8
  br label %43

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %28, %24
  %26 = call i64 @afs_select_vlserver(%struct.afs_vl_cursor* %11)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call %struct.afs_vldb_entry* @afs_vl_get_entry_by_name_u(%struct.afs_vl_cursor* %11, i8* %29, i64 %30)
  store %struct.afs_vldb_entry* %31, %struct.afs_vldb_entry** %10, align 8
  br label %25

32:                                               ; preds = %25
  %33 = call i32 @afs_end_vlserver_operation(%struct.afs_vl_cursor* %11)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %12, align 4
  %38 = call %struct.afs_vldb_entry* @ERR_PTR(i32 %37)
  br label %41

39:                                               ; preds = %32
  %40 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %10, align 8
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi %struct.afs_vldb_entry* [ %38, %36 ], [ %40, %39 ]
  store %struct.afs_vldb_entry* %42, %struct.afs_vldb_entry** %5, align 8
  br label %43

43:                                               ; preds = %41, %20
  %44 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %5, align 8
  ret %struct.afs_vldb_entry* %44
}

declare dso_local %struct.afs_vldb_entry* @ERR_PTR(i32) #1

declare dso_local i32 @afs_begin_vlserver_operation(%struct.afs_vl_cursor*, %struct.afs_cell*, %struct.key*) #1

declare dso_local i64 @afs_select_vlserver(%struct.afs_vl_cursor*) #1

declare dso_local %struct.afs_vldb_entry* @afs_vl_get_entry_by_name_u(%struct.afs_vl_cursor*, i8*, i64) #1

declare dso_local i32 @afs_end_vlserver_operation(%struct.afs_vl_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
