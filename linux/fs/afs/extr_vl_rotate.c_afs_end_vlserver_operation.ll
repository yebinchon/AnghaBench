; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vl_rotate.c_afs_end_vlserver_operation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vl_rotate.c_afs_end_vlserver_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vl_cursor = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.afs_net* }
%struct.afs_net = type { i32 }

@EDESTADDRREQ = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_end_vlserver_operation(%struct.afs_vl_cursor* %0) #0 {
  %2 = alloca %struct.afs_vl_cursor*, align 8
  %3 = alloca %struct.afs_net*, align 8
  store %struct.afs_vl_cursor* %0, %struct.afs_vl_cursor** %2, align 8
  %4 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %2, align 8
  %5 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.afs_net*, %struct.afs_net** %7, align 8
  store %struct.afs_net* %8, %struct.afs_net** %3, align 8
  %9 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %2, align 8
  %10 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @EDESTADDRREQ, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %36, label %15

15:                                               ; preds = %1
  %16 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %2, align 8
  %17 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @EADDRNOTAVAIL, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %36, label %22

22:                                               ; preds = %15
  %23 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %2, align 8
  %24 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ENETUNREACH, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %2, align 8
  %31 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EHOSTUNREACH, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %22, %15, %1
  %37 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %2, align 8
  %38 = call i32 @afs_vl_dump_edestaddrreq(%struct.afs_vl_cursor* %37)
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %2, align 8
  %41 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %40, i32 0, i32 1
  %42 = call i32 @afs_end_cursor(%struct.TYPE_4__* %41)
  %43 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %44 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %2, align 8
  %45 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @afs_put_vlserverlist(%struct.afs_net* %43, i32 %46)
  %48 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %2, align 8
  %49 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ECONNABORTED, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %39
  %55 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %2, align 8
  %56 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @afs_abort_to_error(i32 %58)
  %60 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %2, align 8
  %61 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %54, %39
  %63 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %2, align 8
  %64 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  ret i32 %65
}

declare dso_local i32 @afs_vl_dump_edestaddrreq(%struct.afs_vl_cursor*) #1

declare dso_local i32 @afs_end_cursor(%struct.TYPE_4__*) #1

declare dso_local i32 @afs_put_vlserverlist(%struct.afs_net*, i32) #1

declare dso_local i32 @afs_abort_to_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
