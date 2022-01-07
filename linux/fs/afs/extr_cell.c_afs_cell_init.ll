; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_cell.c_afs_cell_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_cell.c_afs_cell_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32, i32 }
%struct.afs_cell = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" = 0 [no root]\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"kAFS: no VL server IP addresses specified\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" = %ld\00", align 1
@AFS_CELL_FL_NO_GC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_cell_init(%struct.afs_net* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_net*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.afs_cell*, align 8
  %7 = alloca %struct.afs_cell*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.afs_net* %0, %struct.afs_net** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %77

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 58)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = call i32 @_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %9, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %10, align 8
  br label %33

25:                                               ; preds = %16
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %25, %21
  %34 = load %struct.afs_net*, %struct.afs_net** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call %struct.afs_cell* @afs_lookup_cell(%struct.afs_net* %34, i8* %35, i64 %36, i8* %37, i32 0)
  store %struct.afs_cell* %38, %struct.afs_cell** %7, align 8
  %39 = load %struct.afs_cell*, %struct.afs_cell** %7, align 8
  %40 = call i64 @IS_ERR(%struct.afs_cell* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load %struct.afs_cell*, %struct.afs_cell** %7, align 8
  %44 = call i32 @PTR_ERR(%struct.afs_cell* %43)
  %45 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load %struct.afs_cell*, %struct.afs_cell** %7, align 8
  %47 = call i32 @PTR_ERR(%struct.afs_cell* %46)
  store i32 %47, i32* %3, align 4
  br label %77

48:                                               ; preds = %33
  %49 = load i32, i32* @AFS_CELL_FL_NO_GC, align 4
  %50 = load %struct.afs_cell*, %struct.afs_cell** %7, align 8
  %51 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %50, i32 0, i32 0
  %52 = call i32 @test_and_set_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load %struct.afs_cell*, %struct.afs_cell** %7, align 8
  %56 = call i32 @afs_get_cell(%struct.afs_cell* %55)
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.afs_net*, %struct.afs_net** %4, align 8
  %59 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %58, i32 0, i32 0
  %60 = call i32 @write_seqlock(i32* %59)
  %61 = load %struct.afs_net*, %struct.afs_net** %4, align 8
  %62 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.afs_cell* @rcu_access_pointer(i32 %63)
  store %struct.afs_cell* %64, %struct.afs_cell** %6, align 8
  %65 = load %struct.afs_net*, %struct.afs_net** %4, align 8
  %66 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.afs_cell*, %struct.afs_cell** %7, align 8
  %69 = call i32 @rcu_assign_pointer(i32 %67, %struct.afs_cell* %68)
  %70 = load %struct.afs_net*, %struct.afs_net** %4, align 8
  %71 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %70, i32 0, i32 0
  %72 = call i32 @write_sequnlock(i32* %71)
  %73 = load %struct.afs_net*, %struct.afs_net** %4, align 8
  %74 = load %struct.afs_cell*, %struct.afs_cell** %6, align 8
  %75 = call i32 @afs_put_cell(%struct.afs_net* %73, %struct.afs_cell* %74)
  %76 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %57, %42, %14
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.afs_cell* @afs_lookup_cell(%struct.afs_net*, i8*, i64, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.afs_cell*) #1

declare dso_local i32 @PTR_ERR(%struct.afs_cell*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @afs_get_cell(%struct.afs_cell*) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local %struct.afs_cell* @rcu_access_pointer(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.afs_cell*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @afs_put_cell(%struct.afs_net*, %struct.afs_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
