; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_ns_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_ns_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { %struct.TYPE_9__*, i32, %struct.TYPE_10__*, i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NVME_NS_REMOVING = common dso_local global i32 0, align 4
@GENHD_FL_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ns*)* @nvme_ns_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ns_remove(%struct.nvme_ns* %0) #0 {
  %2 = alloca %struct.nvme_ns*, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %2, align 8
  %3 = load i32, i32* @NVME_NS_REMOVING, align 4
  %4 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %4, i32 0, i32 7
  %6 = call i64 @test_and_set_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %89

9:                                                ; preds = %1
  %10 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %11 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %10, i32 0, i32 6
  %12 = call i32 @nvme_fault_inject_fini(i32* %11)
  %13 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %14 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %21 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %20, i32 0, i32 5
  %22 = call i32 @list_del_rcu(i32* %21)
  %23 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %24 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = call i32 (...) @synchronize_rcu()
  %31 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %32 = call i32 @nvme_mpath_clear_current_path(%struct.nvme_ns* %31)
  %33 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %34 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %33, i32 0, i32 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = call i32 @synchronize_srcu(i32* %36)
  %38 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %39 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %9
  %43 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %44 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GENHD_FL_UP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %42
  %52 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %53 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %52, i32 0, i32 2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = call i32 @del_gendisk(%struct.TYPE_10__* %54)
  %56 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %57 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @blk_cleanup_queue(i32 %58)
  %60 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %61 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %60, i32 0, i32 2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = call i64 @blk_get_integrity(%struct.TYPE_10__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %67 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = call i32 @blk_integrity_unregister(%struct.TYPE_10__* %68)
  br label %70

70:                                               ; preds = %65, %51
  br label %71

71:                                               ; preds = %70, %42, %9
  %72 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %73 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = call i32 @down_write(i32* %75)
  %77 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %78 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %77, i32 0, i32 1
  %79 = call i32 @list_del_init(i32* %78)
  %80 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %81 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = call i32 @up_write(i32* %83)
  %85 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %86 = call i32 @nvme_mpath_check_last_path(%struct.nvme_ns* %85)
  %87 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %88 = call i32 @nvme_put_ns(%struct.nvme_ns* %87)
  br label %89

89:                                               ; preds = %71, %8
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nvme_fault_inject_fini(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @nvme_mpath_clear_current_path(%struct.nvme_ns*) #1

declare dso_local i32 @synchronize_srcu(i32*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_10__*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i64 @blk_get_integrity(%struct.TYPE_10__*) #1

declare dso_local i32 @blk_integrity_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @nvme_mpath_check_last_path(%struct.nvme_ns*) #1

declare dso_local i32 @nvme_put_ns(%struct.nvme_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
