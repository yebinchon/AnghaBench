; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_jobqueue_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_jobqueue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.z_erofs_unzip_io = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.z_erofs_unzip_io_sb = type { %struct.super_block*, %struct.z_erofs_unzip_io }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@z_erofs_vle_unzip_wq = common dso_local global i32 0, align 4
@Z_EROFS_PCLUSTER_TAIL_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.z_erofs_unzip_io* (%struct.super_block*, %struct.z_erofs_unzip_io*, i32)* @jobqueue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.z_erofs_unzip_io* @jobqueue_init(%struct.super_block* %0, %struct.z_erofs_unzip_io* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.z_erofs_unzip_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_erofs_unzip_io_sb*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.z_erofs_unzip_io* %1, %struct.z_erofs_unzip_io** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %5, align 8
  %12 = icmp ne %struct.z_erofs_unzip_io* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @DBG_BUGON(i32 %14)
  %16 = load %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %5, align 8
  %17 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @init_waitqueue_head(i32* %18)
  %20 = load %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %5, align 8
  %21 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %20, i32 0, i32 2
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  br label %43

23:                                               ; preds = %3
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load i32, i32* @__GFP_NOFAIL, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.z_erofs_unzip_io_sb* @kvzalloc(i32 24, i32 %26)
  store %struct.z_erofs_unzip_io_sb* %27, %struct.z_erofs_unzip_io_sb** %7, align 8
  %28 = load %struct.z_erofs_unzip_io_sb*, %struct.z_erofs_unzip_io_sb** %7, align 8
  %29 = icmp ne %struct.z_erofs_unzip_io_sb* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @DBG_BUGON(i32 %31)
  %33 = load %struct.z_erofs_unzip_io_sb*, %struct.z_erofs_unzip_io_sb** %7, align 8
  %34 = getelementptr inbounds %struct.z_erofs_unzip_io_sb, %struct.z_erofs_unzip_io_sb* %33, i32 0, i32 1
  store %struct.z_erofs_unzip_io* %34, %struct.z_erofs_unzip_io** %5, align 8
  %35 = load %struct.super_block*, %struct.super_block** %4, align 8
  %36 = load %struct.z_erofs_unzip_io_sb*, %struct.z_erofs_unzip_io_sb** %7, align 8
  %37 = getelementptr inbounds %struct.z_erofs_unzip_io_sb, %struct.z_erofs_unzip_io_sb* %36, i32 0, i32 0
  store %struct.super_block* %35, %struct.super_block** %37, align 8
  %38 = load %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %5, align 8
  %39 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* @z_erofs_vle_unzip_wq, align 4
  %42 = call i32 @INIT_WORK(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %23, %10
  %44 = load i32, i32* @Z_EROFS_PCLUSTER_TAIL_CLOSED, align 4
  %45 = load %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %5, align 8
  %46 = getelementptr inbounds %struct.z_erofs_unzip_io, %struct.z_erofs_unzip_io* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.z_erofs_unzip_io*, %struct.z_erofs_unzip_io** %5, align 8
  ret %struct.z_erofs_unzip_io* %47
}

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.z_erofs_unzip_io_sb* @kvzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
