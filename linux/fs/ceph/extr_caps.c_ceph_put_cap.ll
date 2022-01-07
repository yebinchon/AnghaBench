; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_put_cap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_put_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.ceph_cap = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"put_cap %p %d = %d used + %d resv + %d avail\0A\00", align 1
@ceph_cap_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_put_cap(%struct.ceph_mds_client* %0, %struct.ceph_cap* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_cap*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_cap* %1, %struct.ceph_cap** %4, align 8
  %5 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %5, i32 0, i32 5
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.ceph_cap*, %struct.ceph_cap** %4, align 8
  %9 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %10 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %13 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %16 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %19 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @dout(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.ceph_cap* %8, i64 %11, i64 %14, i64 %17, i64 %20)
  %22 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %23 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %30 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %33 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = icmp sge i64 %28, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %2
  %38 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %39 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = load i32, i32* @ceph_cap_cachep, align 4
  %43 = load %struct.ceph_cap*, %struct.ceph_cap** %4, align 8
  %44 = call i32 @kmem_cache_free(i32 %42, %struct.ceph_cap* %43)
  br label %55

45:                                               ; preds = %2
  %46 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %47 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.ceph_cap*, %struct.ceph_cap** %4, align 8
  %51 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %50, i32 0, i32 0
  %52 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %53 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %52, i32 0, i32 6
  %54 = call i32 @list_add(i32* %51, i32* %53)
  br label %55

55:                                               ; preds = %45, %37
  %56 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %57 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %60 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %63 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %67 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = icmp ne i64 %58, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %74 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %73, i32 0, i32 5
  %75 = call i32 @spin_unlock(i32* %74)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dout(i8*, %struct.ceph_cap*, i64, i64, i64, i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ceph_cap*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
