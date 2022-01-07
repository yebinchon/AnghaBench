; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_pcluster_init_once.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_pcluster_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_pcluster = type { i32** }
%struct.z_erofs_collection = type { i64, i64, i32 }

@Z_EROFS_CLUSTER_MAX_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @z_erofs_pcluster_init_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z_erofs_pcluster_init_once(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.z_erofs_pcluster*, align 8
  %4 = alloca %struct.z_erofs_collection*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.z_erofs_pcluster*
  store %struct.z_erofs_pcluster* %7, %struct.z_erofs_pcluster** %3, align 8
  %8 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %3, align 8
  %9 = call %struct.z_erofs_collection* @z_erofs_primarycollection(%struct.z_erofs_pcluster* %8)
  store %struct.z_erofs_collection* %9, %struct.z_erofs_collection** %4, align 8
  %10 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %4, align 8
  %11 = getelementptr inbounds %struct.z_erofs_collection, %struct.z_erofs_collection* %10, i32 0, i32 2
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %4, align 8
  %14 = getelementptr inbounds %struct.z_erofs_collection, %struct.z_erofs_collection* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %4, align 8
  %16 = getelementptr inbounds %struct.z_erofs_collection, %struct.z_erofs_collection* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %28, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @Z_EROFS_CLUSTER_MAX_PAGES, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %3, align 8
  %23 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %17

31:                                               ; preds = %17
  ret void
}

declare dso_local %struct.z_erofs_collection* @z_erofs_primarycollection(%struct.z_erofs_pcluster*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
