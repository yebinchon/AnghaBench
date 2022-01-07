; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_epfile_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_epfile_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kiocb = type { i32, %struct.ffs_io_data* }
%struct.ffs_io_data = type { i32, i32, %struct.iov_iter, i32, %struct.kiocb* }
%struct.iov_iter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@ffs_aio_cancel = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @ffs_epfile_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_epfile_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.ffs_io_data, align 8
  %7 = alloca %struct.ffs_io_data*, align 8
  %8 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  store %struct.ffs_io_data* %6, %struct.ffs_io_data** %7, align 8
  %9 = call i32 (...) @ENTER()
  %10 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %11 = call i32 @is_sync_kiocb(%struct.kiocb* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ffs_io_data* @kzalloc(i32 24, i32 %14)
  store %struct.ffs_io_data* %15, %struct.ffs_io_data** %7, align 8
  %16 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %17 = icmp ne %struct.ffs_io_data* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %13
  %26 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %27 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %33

28:                                               ; preds = %2
  %29 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %30 = call i32 @memset(%struct.ffs_io_data* %29, i32 0, i32 24)
  %31 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %32 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %25
  %34 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %35 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %37 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %38 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %37, i32 0, i32 4
  store %struct.kiocb* %36, %struct.kiocb** %38, align 8
  %39 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %40 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %39, i32 0, i32 2
  %41 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %42 = bitcast %struct.iov_iter* %40 to i8*
  %43 = bitcast %struct.iov_iter* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %48 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %50 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %51 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %50, i32 0, i32 1
  store %struct.ffs_io_data* %49, %struct.ffs_io_data** %51, align 8
  %52 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %53 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %33
  %57 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %58 = load i32, i32* @ffs_aio_cancel, align 4
  %59 = call i32 @kiocb_set_cancel_fn(%struct.kiocb* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %33
  %61 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %62 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %65 = call i32 @ffs_epfile_io(i32 %63, %struct.ffs_io_data* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @EIOCBQUEUED, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %88

72:                                               ; preds = %60
  %73 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %74 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %79 = call i32 @kfree(%struct.ffs_io_data* %78)
  br label %86

80:                                               ; preds = %72
  %81 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %82 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %83 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %82, i32 0, i32 2
  %84 = bitcast %struct.iov_iter* %81 to i8*
  %85 = bitcast %struct.iov_iter* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 8 %85, i64 4, i1 false)
  br label %86

86:                                               ; preds = %80, %77
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %70, %22
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local %struct.ffs_io_data* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.ffs_io_data*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kiocb_set_cancel_fn(%struct.kiocb*, i32) #1

declare dso_local i32 @ffs_epfile_io(i32, %struct.ffs_io_data*) #1

declare dso_local i32 @kfree(%struct.ffs_io_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
