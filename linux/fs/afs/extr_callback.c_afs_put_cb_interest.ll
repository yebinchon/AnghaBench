; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_callback.c_afs_put_cb_interest.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_callback.c_afs_put_cb_interest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32 }
%struct.afs_cb_interest = type { i64, %struct.TYPE_2__*, i32, %struct.afs_cb_interest*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.afs_vol_interest = type { i64, %struct.TYPE_2__*, i32, %struct.afs_vol_interest*, i32 }

@rcu = common dso_local global i32 0, align 4
@afs_server_trace_put_cbi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_put_cb_interest(%struct.afs_net* %0, %struct.afs_cb_interest* %1) #0 {
  %3 = alloca %struct.afs_net*, align 8
  %4 = alloca %struct.afs_cb_interest*, align 8
  %5 = alloca %struct.afs_vol_interest*, align 8
  store %struct.afs_net* %0, %struct.afs_net** %3, align 8
  store %struct.afs_cb_interest* %1, %struct.afs_cb_interest** %4, align 8
  %6 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %4, align 8
  %7 = icmp ne %struct.afs_cb_interest* %6, null
  br i1 %7, label %8, label %67

8:                                                ; preds = %2
  %9 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %4, align 8
  %10 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %9, i32 0, i32 0
  %11 = call i64 @refcount_dec_and_test(i64* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %8
  %14 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %4, align 8
  %15 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %14, i32 0, i32 4
  %16 = call i32 @hlist_unhashed(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %62, label %18

18:                                               ; preds = %13
  %19 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %4, align 8
  %20 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @write_lock(i32* %22)
  %24 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %4, align 8
  %25 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %24, i32 0, i32 4
  %26 = call i32 @hlist_del_init(i32* %25)
  %27 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %4, align 8
  %28 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %27, i32 0, i32 3
  %29 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %28, align 8
  %30 = bitcast %struct.afs_cb_interest* %29 to %struct.afs_vol_interest*
  store %struct.afs_vol_interest* %30, %struct.afs_vol_interest** %5, align 8
  %31 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %4, align 8
  %32 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %31, i32 0, i32 3
  store %struct.afs_cb_interest* null, %struct.afs_cb_interest** %32, align 8
  %33 = load %struct.afs_vol_interest*, %struct.afs_vol_interest** %5, align 8
  %34 = getelementptr inbounds %struct.afs_vol_interest, %struct.afs_vol_interest* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %18
  %39 = load %struct.afs_vol_interest*, %struct.afs_vol_interest** %5, align 8
  %40 = getelementptr inbounds %struct.afs_vol_interest, %struct.afs_vol_interest* %39, i32 0, i32 2
  %41 = call i32 @hlist_del(i32* %40)
  br label %43

42:                                               ; preds = %18
  store %struct.afs_vol_interest* null, %struct.afs_vol_interest** %5, align 8
  br label %43

43:                                               ; preds = %42, %38
  %44 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %4, align 8
  %45 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @write_unlock(i32* %47)
  %49 = load %struct.afs_vol_interest*, %struct.afs_vol_interest** %5, align 8
  %50 = icmp ne %struct.afs_vol_interest* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.afs_vol_interest*, %struct.afs_vol_interest** %5, align 8
  %53 = load i32, i32* @rcu, align 4
  %54 = call i32 @kfree_rcu(%struct.afs_vol_interest* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %43
  %56 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %57 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %4, align 8
  %58 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* @afs_server_trace_put_cbi, align 4
  %61 = call i32 @afs_put_server(%struct.afs_net* %56, %struct.TYPE_2__* %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %13
  %63 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %4, align 8
  %64 = bitcast %struct.afs_cb_interest* %63 to %struct.afs_vol_interest*
  %65 = load i32, i32* @rcu, align 4
  %66 = call i32 @kfree_rcu(%struct.afs_vol_interest* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %8, %2
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i64*) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.afs_vol_interest*, i32) #1

declare dso_local i32 @afs_put_server(%struct.afs_net*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
