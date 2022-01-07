; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_submit_and_unzip.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_submit_and_unzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.z_erofs_collector = type { i32 }
%struct.list_head = type { i32 }
%struct.z_erofs_unzip_io = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NR_JOBQUEUES = common dso_local global i32 0, align 4
@JQ_BYPASS = common dso_local global i64 0, align 8
@JQ_SUBMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.z_erofs_collector*, %struct.list_head*, i32)* @z_erofs_submit_and_unzip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z_erofs_submit_and_unzip(%struct.super_block* %0, %struct.z_erofs_collector* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.z_erofs_collector*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.z_erofs_collector* %1, %struct.z_erofs_collector** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @NR_JOBQUEUES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca %struct.z_erofs_unzip_io, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %6, align 8
  %18 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.list_head*, %struct.list_head** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @z_erofs_vle_submit_all(%struct.super_block* %16, i32 %19, %struct.list_head* %20, %struct.z_erofs_unzip_io* %15, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %53

25:                                               ; preds = %4
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load i64, i64* @JQ_BYPASS, align 8
  %28 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %15, i64 %27
  %29 = load %struct.list_head*, %struct.list_head** %7, align 8
  %30 = call i32 @z_erofs_vle_unzip_all(%struct.super_block* %26, %struct.z_erofs_unzip_io* %28, %struct.list_head* %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store i32 1, i32* %11, align 4
  br label %53

34:                                               ; preds = %25
  %35 = load i64, i64* @JQ_SUBMIT, align 8
  %36 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %15, i64 %35
  %37 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @JQ_SUBMIT, align 8
  %41 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %15, i64 %40
  %42 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %41, i32 0, i32 0
  %43 = call i32 @atomic_read(i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @wait_event(i32 %39, i32 %46)
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = load i64, i64* @JQ_SUBMIT, align 8
  %50 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %15, i64 %49
  %51 = load %struct.list_head*, %struct.list_head** %7, align 8
  %52 = call i32 @z_erofs_vle_unzip_all(%struct.super_block* %48, %struct.z_erofs_unzip_io* %50, %struct.list_head* %51)
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %34, %33, %24
  %54 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %11, align 4
  switch i32 %55, label %57 [
    i32 0, label %56
    i32 1, label %56
  ]

56:                                               ; preds = %53, %53
  ret void

57:                                               ; preds = %53
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @z_erofs_vle_submit_all(%struct.super_block*, i32, %struct.list_head*, %struct.z_erofs_unzip_io*, i32) #2

declare dso_local i32 @z_erofs_vle_unzip_all(%struct.super_block*, %struct.z_erofs_unzip_io*, %struct.list_head*) #2

declare dso_local i32 @wait_event(i32, i32) #2

declare dso_local i32 @atomic_read(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
