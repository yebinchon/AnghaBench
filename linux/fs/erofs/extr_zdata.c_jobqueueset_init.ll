; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_jobqueueset_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_jobqueueset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.z_erofs_unzip_io = type { i32 }

@JQ_BYPASS = common dso_local global i64 0, align 8
@JQ_SUBMIT = common dso_local global i64 0, align 8
@tagptr1_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.super_block*, i32**, %struct.z_erofs_unzip_io**, %struct.z_erofs_unzip_io*, i32)* @jobqueueset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @jobqueueset_init(%struct.super_block* %0, i32** %1, %struct.z_erofs_unzip_io** %2, %struct.z_erofs_unzip_io* %3, i32 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.z_erofs_unzip_io**, align 8
  %9 = alloca %struct.z_erofs_unzip_io*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32** %1, i32*** %7, align 8
  store %struct.z_erofs_unzip_io** %2, %struct.z_erofs_unzip_io*** %8, align 8
  store %struct.z_erofs_unzip_io* %3, %struct.z_erofs_unzip_io** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.super_block*, %struct.super_block** %6, align 8
  %12 = load %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %9, align 8
  %13 = load i64, i64* @JQ_BYPASS, align 8
  %14 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %12, i64 %13
  %15 = call %struct.z_erofs_unzip_io* @jobqueue_init(%struct.super_block* %11, %struct.z_erofs_unzip_io* %14, i32 1)
  %16 = load %struct.z_erofs_unzip_io**, %struct.z_erofs_unzip_io*** %8, align 8
  %17 = load i64, i64* @JQ_BYPASS, align 8
  %18 = getelementptr inbounds %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %16, i64 %17
  store %struct.z_erofs_unzip_io* %15, %struct.z_erofs_unzip_io** %18, align 8
  %19 = load %struct.z_erofs_unzip_io**, %struct.z_erofs_unzip_io*** %8, align 8
  %20 = load i64, i64* @JQ_BYPASS, align 8
  %21 = getelementptr inbounds %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %19, i64 %20
  %22 = load %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %21, align 8
  %23 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %22, i32 0, i32 0
  %24 = load i32**, i32*** %7, align 8
  %25 = load i64, i64* @JQ_BYPASS, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  store i32* %23, i32** %26, align 8
  %27 = load %struct.super_block*, %struct.super_block** %6, align 8
  %28 = load %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %9, align 8
  %29 = load i64, i64* @JQ_SUBMIT, align 8
  %30 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %28, i64 %29
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.z_erofs_unzip_io* @jobqueue_init(%struct.super_block* %27, %struct.z_erofs_unzip_io* %30, i32 %31)
  %33 = load %struct.z_erofs_unzip_io**, %struct.z_erofs_unzip_io*** %8, align 8
  %34 = load i64, i64* @JQ_SUBMIT, align 8
  %35 = getelementptr inbounds %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %33, i64 %34
  store %struct.z_erofs_unzip_io* %32, %struct.z_erofs_unzip_io** %35, align 8
  %36 = load %struct.z_erofs_unzip_io**, %struct.z_erofs_unzip_io*** %8, align 8
  %37 = load i64, i64* @JQ_SUBMIT, align 8
  %38 = getelementptr inbounds %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %36, i64 %37
  %39 = load %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %38, align 8
  %40 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %39, i32 0, i32 0
  %41 = load i32**, i32*** %7, align 8
  %42 = load i64, i64* @JQ_SUBMIT, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  store i32* %40, i32** %43, align 8
  %44 = load i32, i32* @tagptr1_t, align 4
  %45 = load %struct.z_erofs_unzip_io**, %struct.z_erofs_unzip_io*** %8, align 8
  %46 = load i64, i64* @JQ_SUBMIT, align 8
  %47 = getelementptr inbounds %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %45, i64 %46
  %48 = load %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @tagptr_fold(i32 %44, %struct.z_erofs_unzip_io* %48, i32 %52)
  %54 = call i8* @tagptr_cast_ptr(i32 %53)
  ret i8* %54
}

declare dso_local %struct.z_erofs_unzip_io* @jobqueue_init(%struct.super_block*, %struct.z_erofs_unzip_io*, i32) #1

declare dso_local i8* @tagptr_cast_ptr(i32) #1

declare dso_local i32 @tagptr_fold(i32, %struct.z_erofs_unzip_io*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
