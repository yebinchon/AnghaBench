; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_fs_client = type { i32, %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32, i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i32, i64, i32, i8*, i32, i64, i32, i8*, i32, i64, i64, i32, i32*, i32, i32, i32, i8*, i32, %struct.ceph_fs_client* }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i8* null, align 8
@delayed_work = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ceph_cap_reclaim_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_mdsc_init(%struct.ceph_fs_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_fs_client*, align 8
  %4 = alloca %struct.ceph_mds_client*, align 8
  store %struct.ceph_fs_client* %0, %struct.ceph_fs_client** %3, align 8
  %5 = load i32, i32* @GFP_NOFS, align 4
  %6 = call i8* @kzalloc(i32 280, i32 %5)
  %7 = bitcast i8* %6 to %struct.ceph_mds_client*
  store %struct.ceph_mds_client* %7, %struct.ceph_mds_client** %4, align 8
  %8 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %9 = icmp ne %struct.ceph_mds_client* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %170

13:                                               ; preds = %1
  %14 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %15 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %15, i32 0, i32 45
  store %struct.ceph_fs_client* %14, %struct.ceph_fs_client** %16, align 8
  %17 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %17, i32 0, i32 44
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load i32, i32* @GFP_NOFS, align 4
  %21 = call i8* @kzalloc(i32 1, i32 %20)
  %22 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %23 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %22, i32 0, i32 43
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %25 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %24, i32 0, i32 43
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %13
  %29 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %30 = call i32 @kfree(%struct.ceph_mds_client* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %170

33:                                               ; preds = %13
  %34 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %35 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %36 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %35, i32 0, i32 1
  store %struct.ceph_mds_client* %34, %struct.ceph_mds_client** %36, align 8
  %37 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %38 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %37, i32 0, i32 42
  %39 = call i32 @init_completion(i32* %38)
  %40 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %41 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %40, i32 0, i32 41
  %42 = call i32 @init_waitqueue_head(i32* %41)
  %43 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %44 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %43, i32 0, i32 40
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %47 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %46, i32 0, i32 39
  store i32* null, i32** %47, align 8
  %48 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %49 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %48, i32 0, i32 38
  %50 = call i32 @atomic_set(i32* %49, i32 0)
  %51 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %52 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %51, i32 0, i32 37
  store i64 0, i64* %52, align 8
  %53 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %54 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %53, i32 0, i32 36
  store i64 0, i64* %54, align 8
  %55 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %56 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %55, i32 0, i32 35
  %57 = call i32 @atomic64_set(i32* %56, i32 0)
  %58 = load i8*, i8** @RB_ROOT, align 8
  %59 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %60 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %59, i32 0, i32 34
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %62 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %61, i32 0, i32 33
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %65 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %64, i32 0, i32 32
  store i64 0, i64* %65, align 8
  %66 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %67 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %66, i32 0, i32 31
  %68 = call i32 @init_rwsem(i32* %67)
  %69 = load i8*, i8** @RB_ROOT, align 8
  %70 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %71 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %70, i32 0, i32 30
  store i8* %69, i8** %71, align 8
  %72 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %73 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %72, i32 0, i32 29
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %76 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %75, i32 0, i32 28
  store i64 0, i64* %76, align 8
  %77 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %78 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %77, i32 0, i32 27
  %79 = call i32 @spin_lock_init(i32* %78)
  %80 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %81 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %80, i32 0, i32 26
  store i64 0, i64* %81, align 8
  %82 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %83 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %82, i32 0, i32 25
  store i64 0, i64* %83, align 8
  %84 = load i8*, i8** @RB_ROOT, align 8
  %85 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %86 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %85, i32 0, i32 24
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %88 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %87, i32 0, i32 23
  %89 = load i32, i32* @delayed_work, align 4
  %90 = call i32 @INIT_DELAYED_WORK(i32* %88, i32 %89)
  %91 = load i32, i32* @jiffies, align 4
  %92 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %93 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %92, i32 0, i32 22
  store i32 %91, i32* %93, align 4
  %94 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %95 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %94, i32 0, i32 21
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %98 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %97, i32 0, i32 20
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %101 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %100, i32 0, i32 19
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %104 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %103, i32 0, i32 18
  %105 = call i32 @spin_lock_init(i32* %104)
  %106 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %107 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %109 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %108, i32 0, i32 17
  %110 = call i32 @INIT_LIST_HEAD(i32* %109)
  %111 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %112 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %111, i32 0, i32 16
  %113 = call i32 @INIT_LIST_HEAD(i32* %112)
  %114 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %115 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %114, i32 0, i32 15
  %116 = call i32 @INIT_LIST_HEAD(i32* %115)
  %117 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %118 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %117, i32 0, i32 14
  store i64 0, i64* %118, align 8
  %119 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %120 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %119, i32 0, i32 13
  %121 = call i32 @spin_lock_init(i32* %120)
  %122 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %123 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %122, i32 0, i32 12
  %124 = call i32 @init_waitqueue_head(i32* %123)
  %125 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %126 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %125, i32 0, i32 11
  %127 = load i32, i32* @ceph_cap_reclaim_work, align 4
  %128 = call i32 @INIT_WORK(i32* %126, i32 %127)
  %129 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %130 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %129, i32 0, i32 10
  %131 = call i32 @atomic_set(i32* %130, i32 0)
  %132 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %133 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %132, i32 0, i32 9
  %134 = call i32 @spin_lock_init(i32* %133)
  %135 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %136 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %135, i32 0, i32 8
  %137 = call i32 @INIT_LIST_HEAD(i32* %136)
  %138 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %139 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %138, i32 0, i32 7
  %140 = call i32 @INIT_LIST_HEAD(i32* %139)
  %141 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %142 = call i32 @ceph_caps_init(%struct.ceph_mds_client* %141)
  %143 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %144 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %145 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @ceph_adjust_caps_max_min(%struct.ceph_mds_client* %143, i32 %146)
  %148 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %149 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %148, i32 0, i32 6
  %150 = call i32 @spin_lock_init(i32* %149)
  %151 = load i8*, i8** @RB_ROOT, align 8
  %152 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %153 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %152, i32 0, i32 5
  store i8* %151, i8** %153, align 8
  %154 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %155 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %154, i32 0, i32 4
  %156 = call i32 @INIT_LIST_HEAD(i32* %155)
  %157 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %158 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %157, i32 0, i32 3
  %159 = call i32 @init_rwsem(i32* %158)
  %160 = load i8*, i8** @RB_ROOT, align 8
  %161 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %162 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  %163 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %164 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call %struct.TYPE_2__* (...) @utsname()
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @strscpy(i32 %165, i32 %168, i32 4)
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %33, %28, %10
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kfree(%struct.ceph_mds_client*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ceph_caps_init(%struct.ceph_mds_client*) #1

declare dso_local i32 @ceph_adjust_caps_max_min(%struct.ceph_mds_client*, i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @utsname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
