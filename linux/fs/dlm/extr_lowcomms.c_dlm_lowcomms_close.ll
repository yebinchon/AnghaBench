; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_dlm_lowcomms_close.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_dlm_lowcomms_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.dlm_node_addr = type { i64, %struct.dlm_node_addr**, i32 }

@.str = private unnamed_addr constant [30 x i8] c"closing connection to node %d\00", align 1
@CF_CLOSE = common dso_local global i32 0, align 4
@dlm_node_addrs_spin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_lowcomms_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.dlm_node_addr*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @log_print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.connection* @nodeid2con(i32 %7, i32 0)
  store %struct.connection* %8, %struct.connection** %3, align 8
  %9 = load %struct.connection*, %struct.connection** %3, align 8
  %10 = icmp ne %struct.connection* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i32, i32* @CF_CLOSE, align 4
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = load %struct.connection*, %struct.connection** %3, align 8
  %17 = call i32 @close_connection(%struct.connection* %16, i32 1, i32 1, i32 1)
  %18 = load %struct.connection*, %struct.connection** %3, align 8
  %19 = call i32 @clean_one_writequeue(%struct.connection* %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = call i32 @spin_lock(i32* @dlm_node_addrs_spin)
  %22 = load i32, i32* %2, align 4
  %23 = call %struct.dlm_node_addr* @find_node_addr(i32 %22)
  store %struct.dlm_node_addr* %23, %struct.dlm_node_addr** %4, align 8
  %24 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %4, align 8
  %25 = icmp ne %struct.dlm_node_addr* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %4, align 8
  %28 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %27, i32 0, i32 2
  %29 = call i32 @list_del(i32* %28)
  br label %30

30:                                               ; preds = %36, %26
  %31 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %4, align 8
  %32 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = icmp ne i64 %33, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %4, align 8
  %38 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %37, i32 0, i32 1
  %39 = load %struct.dlm_node_addr**, %struct.dlm_node_addr*** %38, align 8
  %40 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %4, align 8
  %41 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.dlm_node_addr*, %struct.dlm_node_addr** %39, i64 %42
  %44 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %43, align 8
  %45 = call i32 @kfree(%struct.dlm_node_addr* %44)
  br label %30

46:                                               ; preds = %30
  %47 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %4, align 8
  %48 = call i32 @kfree(%struct.dlm_node_addr* %47)
  br label %49

49:                                               ; preds = %46, %20
  %50 = call i32 @spin_unlock(i32* @dlm_node_addrs_spin)
  ret i32 0
}

declare dso_local i32 @log_print(i8*, i32) #1

declare dso_local %struct.connection* @nodeid2con(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @close_connection(%struct.connection*, i32, i32, i32) #1

declare dso_local i32 @clean_one_writequeue(%struct.connection*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_node_addr* @find_node_addr(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.dlm_node_addr*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
