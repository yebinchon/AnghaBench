; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_security.c_afs_request_key_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_security.c_afs_request_key_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.afs_cell = type { %struct.key*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%x}\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"key %s\00", align 1
@key_type_rxrpc = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" = %ld\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" = {%x} [anon]\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" = {%x} [auth]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @afs_request_key_rcu(%struct.afs_cell* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.afs_cell*, align 8
  %4 = alloca %struct.key*, align 8
  store %struct.afs_cell* %0, %struct.afs_cell** %3, align 8
  %5 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %6 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %5, i32 0, i32 0
  %7 = load %struct.key*, %struct.key** %6, align 8
  %8 = call i32 @key_serial(%struct.key* %7)
  %9 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %11 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %10, i32 0, i32 0
  %12 = load %struct.key*, %struct.key** %11, align 8
  %13 = getelementptr inbounds %struct.key, %struct.key* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %17 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %16, i32 0, i32 0
  %18 = load %struct.key*, %struct.key** %17, align 8
  %19 = getelementptr inbounds %struct.key, %struct.key* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %22 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.key* @request_key_net_rcu(i32* @key_type_rxrpc, i32 %20, i32 %25)
  store %struct.key* %26, %struct.key** %4, align 8
  %27 = load %struct.key*, %struct.key** %4, align 8
  %28 = call i64 @IS_ERR(%struct.key* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %1
  %31 = load %struct.key*, %struct.key** %4, align 8
  %32 = call i32 @PTR_ERR(%struct.key* %31)
  %33 = load i32, i32* @ENOKEY, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.key*, %struct.key** %4, align 8
  %38 = call i32 @PTR_ERR(%struct.key* %37)
  %39 = call i32 @_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.key*, %struct.key** %4, align 8
  store %struct.key* %40, %struct.key** %2, align 8
  br label %56

41:                                               ; preds = %30
  %42 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %43 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %42, i32 0, i32 0
  %44 = load %struct.key*, %struct.key** %43, align 8
  %45 = call i32 @key_serial(%struct.key* %44)
  %46 = call i32 @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %48 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %47, i32 0, i32 0
  %49 = load %struct.key*, %struct.key** %48, align 8
  %50 = call %struct.key* @key_get(%struct.key* %49)
  store %struct.key* %50, %struct.key** %2, align 8
  br label %56

51:                                               ; preds = %1
  %52 = load %struct.key*, %struct.key** %4, align 8
  %53 = call i32 @key_serial(%struct.key* %52)
  %54 = call i32 @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load %struct.key*, %struct.key** %4, align 8
  store %struct.key* %55, %struct.key** %2, align 8
  br label %56

56:                                               ; preds = %51, %41, %36
  %57 = load %struct.key*, %struct.key** %2, align 8
  ret %struct.key* %57
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local %struct.key* @request_key_net_rcu(i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local %struct.key* @key_get(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
