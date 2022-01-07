; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_try_inplace_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_try_inplace_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_collector = type { i64, %struct.z_erofs_pcluster* }
%struct.z_erofs_pcluster = type { i64, i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_collector*, %struct.page*)* @z_erofs_try_inplace_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_erofs_try_inplace_io(%struct.z_erofs_collector* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_erofs_collector*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.z_erofs_pcluster*, align 8
  %7 = alloca i32, align 4
  store %struct.z_erofs_collector* %0, %struct.z_erofs_collector** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %8 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %4, align 8
  %9 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %8, i32 0, i32 1
  %10 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %9, align 8
  store %struct.z_erofs_pcluster* %10, %struct.z_erofs_pcluster** %6, align 8
  %11 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %6, align 8
  %12 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @BIT(i32 %13)
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %36, %2
  %16 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %4, align 8
  %17 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %6, align 8
  %20 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = icmp slt i64 %18, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %15
  %27 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %4, align 8
  %28 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = trunc i64 %29 to i32
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = call i32 @cmpxchg(i32 %31, i32* null, %struct.page* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %38

36:                                               ; preds = %26
  br label %15

37:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %35
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cmpxchg(i32, i32*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
