; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_lookup_server.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_lookup_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.afs_cell = type { i32 }
%struct.key = type { i32 }
%struct.afs_addr_list = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p,%pU\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" = %p{%d}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_server* @afs_lookup_server(%struct.afs_cell* %0, %struct.key* %1, i32* %2) #0 {
  %4 = alloca %struct.afs_server*, align 8
  %5 = alloca %struct.afs_cell*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.afs_addr_list*, align 8
  %9 = alloca %struct.afs_server*, align 8
  %10 = alloca %struct.afs_server*, align 8
  store %struct.afs_cell* %0, %struct.afs_cell** %5, align 8
  store %struct.key* %1, %struct.key** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.afs_cell*, %struct.afs_cell** %5, align 8
  %12 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13, i32* %14)
  %16 = load %struct.afs_cell*, %struct.afs_cell** %5, align 8
  %17 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call %struct.afs_server* @afs_find_server_by_uuid(i32 %18, i32* %19)
  store %struct.afs_server* %20, %struct.afs_server** %9, align 8
  %21 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  %22 = icmp ne %struct.afs_server* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  store %struct.afs_server* %24, %struct.afs_server** %4, align 8
  br label %72

25:                                               ; preds = %3
  %26 = load %struct.afs_cell*, %struct.afs_cell** %5, align 8
  %27 = load %struct.key*, %struct.key** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call %struct.afs_addr_list* @afs_vl_lookup_addrs(%struct.afs_cell* %26, %struct.key* %27, i32* %28)
  store %struct.afs_addr_list* %29, %struct.afs_addr_list** %8, align 8
  %30 = load %struct.afs_addr_list*, %struct.afs_addr_list** %8, align 8
  %31 = call i64 @IS_ERR(%struct.afs_addr_list* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.afs_addr_list*, %struct.afs_addr_list** %8, align 8
  %35 = call %struct.afs_server* @ERR_CAST(%struct.afs_addr_list* %34)
  store %struct.afs_server* %35, %struct.afs_server** %4, align 8
  br label %72

36:                                               ; preds = %25
  %37 = load %struct.afs_cell*, %struct.afs_cell** %5, align 8
  %38 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.afs_addr_list*, %struct.afs_addr_list** %8, align 8
  %42 = call %struct.afs_server* @afs_alloc_server(i32 %39, i32* %40, %struct.afs_addr_list* %41)
  store %struct.afs_server* %42, %struct.afs_server** %10, align 8
  %43 = load %struct.afs_server*, %struct.afs_server** %10, align 8
  %44 = icmp ne %struct.afs_server* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %36
  %46 = load %struct.afs_addr_list*, %struct.afs_addr_list** %8, align 8
  %47 = call i32 @afs_put_addrlist(%struct.afs_addr_list* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.afs_server* @ERR_PTR(i32 %49)
  store %struct.afs_server* %50, %struct.afs_server** %4, align 8
  br label %72

51:                                               ; preds = %36
  %52 = load %struct.afs_cell*, %struct.afs_cell** %5, align 8
  %53 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.afs_server*, %struct.afs_server** %10, align 8
  %56 = call %struct.afs_server* @afs_install_server(i32 %54, %struct.afs_server* %55)
  store %struct.afs_server* %56, %struct.afs_server** %9, align 8
  %57 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  %58 = load %struct.afs_server*, %struct.afs_server** %10, align 8
  %59 = icmp ne %struct.afs_server* %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.afs_addr_list*, %struct.afs_addr_list** %8, align 8
  %62 = call i32 @afs_put_addrlist(%struct.afs_addr_list* %61)
  %63 = load %struct.afs_server*, %struct.afs_server** %10, align 8
  %64 = call i32 @kfree(%struct.afs_server* %63)
  br label %65

65:                                               ; preds = %60, %51
  %66 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  %67 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  %68 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %67, i32 0, i32 0
  %69 = call i32 @atomic_read(i32* %68)
  %70 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.afs_server* %66, i32 %69)
  %71 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  store %struct.afs_server* %71, %struct.afs_server** %4, align 8
  br label %72

72:                                               ; preds = %65, %45, %33, %23
  %73 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  ret %struct.afs_server* %73
}

declare dso_local i32 @_enter(i8*, i32, i32*) #1

declare dso_local %struct.afs_server* @afs_find_server_by_uuid(i32, i32*) #1

declare dso_local %struct.afs_addr_list* @afs_vl_lookup_addrs(%struct.afs_cell*, %struct.key*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.afs_addr_list*) #1

declare dso_local %struct.afs_server* @ERR_CAST(%struct.afs_addr_list*) #1

declare dso_local %struct.afs_server* @afs_alloc_server(i32, i32*, %struct.afs_addr_list*) #1

declare dso_local i32 @afs_put_addrlist(%struct.afs_addr_list*) #1

declare dso_local %struct.afs_server* @ERR_PTR(i32) #1

declare dso_local %struct.afs_server* @afs_install_server(i32, %struct.afs_server*) #1

declare dso_local i32 @kfree(%struct.afs_server*) #1

declare dso_local i32 @_leave(i8*, %struct.afs_server*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
