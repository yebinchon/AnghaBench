; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_rotate.c_afs_end_vnode_operation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_rotate.c_afs_end_vnode_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.afs_net = type { i32 }

@EDESTADDRREQ = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_end_vnode_operation(%struct.afs_fs_cursor* %0) #0 {
  %2 = alloca %struct.afs_fs_cursor*, align 8
  %3 = alloca %struct.afs_net*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %2, align 8
  %4 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %5 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %4, i32 0, i32 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = call %struct.afs_net* @afs_v2net(%struct.TYPE_3__* %6)
  store %struct.afs_net* %7, %struct.afs_net** %3, align 8
  %8 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %9 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @EDESTADDRREQ, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %35, label %14

14:                                               ; preds = %1
  %15 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %16 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EADDRNOTAVAIL, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %35, label %21

21:                                               ; preds = %14
  %22 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %23 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ENETUNREACH, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %30 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EHOSTUNREACH, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %21, %14, %1
  %36 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %37 = call i32 @afs_dump_edestaddrreq(%struct.afs_fs_cursor* %36)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %40 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %45 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %44, i32 0, i32 1
  %46 = call i32 @afs_end_cursor(%struct.TYPE_4__* %45)
  %47 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %48 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %49 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @afs_put_cb_interest(%struct.afs_net* %47, i32 %50)
  %52 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %53 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %54 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @afs_put_serverlist(%struct.afs_net* %52, i32 %55)
  %57 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %58 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ECONNABORTED, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %38
  %64 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %65 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @afs_abort_to_error(i32 %67)
  %69 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %70 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %63, %38
  %72 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %2, align 8
  %73 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  ret i32 %74
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.TYPE_3__*) #1

declare dso_local i32 @afs_dump_edestaddrreq(%struct.afs_fs_cursor*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @afs_end_cursor(%struct.TYPE_4__*) #1

declare dso_local i32 @afs_put_cb_interest(%struct.afs_net*, i32) #1

declare dso_local i32 @afs_put_serverlist(%struct.afs_net*, i32) #1

declare dso_local i32 @afs_abort_to_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
