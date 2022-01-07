; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_adjust_snap_realm_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_adjust_snap_realm_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }
%struct.ceph_snap_realm = type { i64, i32, i32, %struct.ceph_snap_realm*, i32 }

@.str = private unnamed_addr constant [54 x i8] c"adjust_snap_realm_parent %llx %p: %llx %p -> %llx %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_mds_client*, %struct.ceph_snap_realm*, i64)* @adjust_snap_realm_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_snap_realm_parent(%struct.ceph_mds_client* %0, %struct.ceph_snap_realm* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_mds_client*, align 8
  %6 = alloca %struct.ceph_snap_realm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ceph_snap_realm*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %5, align 8
  store %struct.ceph_snap_realm* %1, %struct.ceph_snap_realm** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %10 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %71

15:                                               ; preds = %3
  %16 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.ceph_snap_realm* @ceph_lookup_snap_realm(%struct.ceph_mds_client* %16, i64 %17)
  store %struct.ceph_snap_realm* %18, %struct.ceph_snap_realm** %8, align 8
  %19 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %8, align 8
  %20 = icmp ne %struct.ceph_snap_realm* %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %15
  %22 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call %struct.ceph_snap_realm* @ceph_create_snap_realm(%struct.ceph_mds_client* %22, i64 %23)
  store %struct.ceph_snap_realm* %24, %struct.ceph_snap_realm** %8, align 8
  %25 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %8, align 8
  %26 = call i64 @IS_ERR(%struct.ceph_snap_realm* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.ceph_snap_realm* %29)
  store i32 %30, i32* %4, align 4
  br label %71

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %15
  %33 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %34 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %37 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %38 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %41 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %40, i32 0, i32 3
  %42 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %8, align 8
  %45 = call i32 @dout(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %35, %struct.ceph_snap_realm* %36, i64 %39, %struct.ceph_snap_realm* %42, i64 %43, %struct.ceph_snap_realm* %44)
  %46 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %47 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %46, i32 0, i32 3
  %48 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %47, align 8
  %49 = icmp ne %struct.ceph_snap_realm* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %32
  %51 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %52 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %51, i32 0, i32 2
  %53 = call i32 @list_del_init(i32* %52)
  %54 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %55 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %56 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %55, i32 0, i32 3
  %57 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %56, align 8
  %58 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %54, %struct.ceph_snap_realm* %57)
  br label %59

59:                                               ; preds = %50, %32
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %62 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %8, align 8
  %64 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %65 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %64, i32 0, i32 3
  store %struct.ceph_snap_realm* %63, %struct.ceph_snap_realm** %65, align 8
  %66 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %67 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %66, i32 0, i32 2
  %68 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %8, align 8
  %69 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %68, i32 0, i32 1
  %70 = call i32 @list_add(i32* %67, i32* %69)
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %59, %28, %14
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.ceph_snap_realm* @ceph_lookup_snap_realm(%struct.ceph_mds_client*, i64) #1

declare dso_local %struct.ceph_snap_realm* @ceph_create_snap_realm(%struct.ceph_mds_client*, i64) #1

declare dso_local i64 @IS_ERR(%struct.ceph_snap_realm*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_snap_realm*) #1

declare dso_local i32 @dout(i8*, i32, %struct.ceph_snap_realm*, i64, %struct.ceph_snap_realm*, i64, %struct.ceph_snap_realm*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @ceph_put_snap_realm(%struct.ceph_mds_client*, %struct.ceph_snap_realm*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
