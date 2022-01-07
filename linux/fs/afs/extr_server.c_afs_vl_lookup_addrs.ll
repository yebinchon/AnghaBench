; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_vl_lookup_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_vl_lookup_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_addr_list = type { i32 }
%struct.afs_cell = type { i32 }
%struct.key = type { i32 }
%struct.afs_vl_cursor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@AFS_VLSERVER_FL_IS_YFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.afs_addr_list* (%struct.afs_cell*, %struct.key*, i32*)* @afs_vl_lookup_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.afs_addr_list* @afs_vl_lookup_addrs(%struct.afs_cell* %0, %struct.key* %1, i32* %2) #0 {
  %4 = alloca %struct.afs_cell*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.afs_vl_cursor, align 8
  %8 = alloca %struct.afs_addr_list*, align 8
  %9 = alloca i32, align 4
  store %struct.afs_cell* %0, %struct.afs_cell** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.afs_addr_list* null, %struct.afs_addr_list** %8, align 8
  %10 = load i32, i32* @ERESTARTSYS, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %13 = load %struct.key*, %struct.key** %5, align 8
  %14 = call i64 @afs_begin_vlserver_operation(%struct.afs_vl_cursor* %7, %struct.afs_cell* %12, %struct.key* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %33, %16
  %18 = call i64 @afs_select_vlserver(%struct.afs_vl_cursor* %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i32, i32* @AFS_VLSERVER_FL_IS_YFS, align 4
  %22 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %7, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %21, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32*, i32** %6, align 8
  %29 = call %struct.afs_addr_list* @afs_yfsvl_get_endpoints(%struct.afs_vl_cursor* %7, i32* %28)
  store %struct.afs_addr_list* %29, %struct.afs_addr_list** %8, align 8
  br label %33

30:                                               ; preds = %20
  %31 = load i32*, i32** %6, align 8
  %32 = call %struct.afs_addr_list* @afs_vl_get_addrs_u(%struct.afs_vl_cursor* %7, i32* %31)
  store %struct.afs_addr_list* %32, %struct.afs_addr_list** %8, align 8
  br label %33

33:                                               ; preds = %30, %27
  br label %17

34:                                               ; preds = %17
  %35 = call i32 @afs_end_vlserver_operation(%struct.afs_vl_cursor* %7)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %3
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.afs_addr_list* @ERR_PTR(i32 %40)
  br label %44

42:                                               ; preds = %36
  %43 = load %struct.afs_addr_list*, %struct.afs_addr_list** %8, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi %struct.afs_addr_list* [ %41, %39 ], [ %43, %42 ]
  ret %struct.afs_addr_list* %45
}

declare dso_local i64 @afs_begin_vlserver_operation(%struct.afs_vl_cursor*, %struct.afs_cell*, %struct.key*) #1

declare dso_local i64 @afs_select_vlserver(%struct.afs_vl_cursor*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.afs_addr_list* @afs_yfsvl_get_endpoints(%struct.afs_vl_cursor*, i32*) #1

declare dso_local %struct.afs_addr_list* @afs_vl_get_addrs_u(%struct.afs_vl_cursor*, i32*) #1

declare dso_local i32 @afs_end_vlserver_operation(%struct.afs_vl_cursor*) #1

declare dso_local %struct.afs_addr_list* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
