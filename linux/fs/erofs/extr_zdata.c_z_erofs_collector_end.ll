; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_collector_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_collector_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_collector = type { i64, %struct.z_erofs_collection*, i32 }
%struct.z_erofs_collection = type { i32 }

@COLLECT_PRIMARY_FOLLOWED_NOINPLACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_collector*)* @z_erofs_collector_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_erofs_collector_end(%struct.z_erofs_collector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_erofs_collector*, align 8
  %4 = alloca %struct.z_erofs_collection*, align 8
  store %struct.z_erofs_collector* %0, %struct.z_erofs_collector** %3, align 8
  %5 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %3, align 8
  %6 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %5, i32 0, i32 1
  %7 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %6, align 8
  store %struct.z_erofs_collection* %7, %struct.z_erofs_collection** %4, align 8
  %8 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %4, align 8
  %9 = icmp ne %struct.z_erofs_collection* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %3, align 8
  %13 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %12, i32 0, i32 2
  %14 = call i32 @z_erofs_pagevec_ctor_exit(i32* %13, i32 0)
  %15 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %4, align 8
  %16 = getelementptr inbounds %struct.z_erofs_collection, %struct.z_erofs_collection* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %3, align 8
  %19 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @COLLECT_PRIMARY_FOLLOWED_NOINPLACE, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %4, align 8
  %25 = call i32 @z_erofs_collection_put(%struct.z_erofs_collection* %24)
  br label %26

26:                                               ; preds = %23, %11
  %27 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %3, align 8
  %28 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %27, i32 0, i32 1
  store %struct.z_erofs_collection* null, %struct.z_erofs_collection** %28, align 8
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @z_erofs_pagevec_ctor_exit(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @z_erofs_collection_put(%struct.z_erofs_collection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
