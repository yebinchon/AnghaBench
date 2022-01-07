; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_epfile_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_epfile_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kiocb = type { i32, %struct.ffs_io_data* }
%struct.ffs_io_data = type { i32, i32, %struct.iov_iter, %struct.ffs_io_data*, i32, %struct.kiocb* }
%struct.iov_iter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@ffs_aio_cancel = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @ffs_epfile_read_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_epfile_read_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
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
  %15 = call %struct.ffs_io_data* @kzalloc(i32 40, i32 %14)
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
  br label %118

25:                                               ; preds = %13
  %26 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %27 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %33

28:                                               ; preds = %2
  %29 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %30 = call i32 @memset(%struct.ffs_io_data* %29, i32 0, i32 40)
  %31 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %32 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %25
  %34 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %35 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %37 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %38 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %37, i32 0, i32 5
  store %struct.kiocb* %36, %struct.kiocb** %38, align 8
  %39 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %40 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %33
  %44 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %45 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %44, i32 0, i32 2
  %46 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.ffs_io_data* @dup_iter(%struct.iov_iter* %45, %struct.iov_iter* %46, i32 %47)
  %49 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %50 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %49, i32 0, i32 3
  store %struct.ffs_io_data* %48, %struct.ffs_io_data** %50, align 8
  %51 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %52 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %51, i32 0, i32 3
  %53 = load %struct.ffs_io_data*, %struct.ffs_io_data** %52, align 8
  %54 = icmp ne %struct.ffs_io_data* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %43
  %56 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %57 = call i32 @kfree(%struct.ffs_io_data* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %118

60:                                               ; preds = %43
  br label %69

61:                                               ; preds = %33
  %62 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %63 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %62, i32 0, i32 2
  %64 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %65 = bitcast %struct.iov_iter* %63 to i8*
  %66 = bitcast %struct.iov_iter* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %68 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %67, i32 0, i32 3
  store %struct.ffs_io_data* null, %struct.ffs_io_data** %68, align 8
  br label %69

69:                                               ; preds = %61, %60
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %74 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %76 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %77 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %76, i32 0, i32 1
  store %struct.ffs_io_data* %75, %struct.ffs_io_data** %77, align 8
  %78 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %79 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %84 = load i32, i32* @ffs_aio_cancel, align 4
  %85 = call i32 @kiocb_set_cancel_fn(%struct.kiocb* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %69
  %87 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %88 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %91 = call i32 @ffs_epfile_io(i32 %89, %struct.ffs_io_data* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @EIOCBQUEUED, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %118

98:                                               ; preds = %86
  %99 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %100 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %105 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %104, i32 0, i32 3
  %106 = load %struct.ffs_io_data*, %struct.ffs_io_data** %105, align 8
  %107 = call i32 @kfree(%struct.ffs_io_data* %106)
  %108 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %109 = call i32 @kfree(%struct.ffs_io_data* %108)
  br label %116

110:                                              ; preds = %98
  %111 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %112 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  %113 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %112, i32 0, i32 2
  %114 = bitcast %struct.iov_iter* %111 to i8*
  %115 = bitcast %struct.iov_iter* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 8 %115, i64 4, i1 false)
  br label %116

116:                                              ; preds = %110, %103
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %96, %55, %22
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local %struct.ffs_io_data* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.ffs_io_data*, i32, i32) #1

declare dso_local %struct.ffs_io_data* @dup_iter(%struct.iov_iter*, %struct.iov_iter*, i32) #1

declare dso_local i32 @kfree(%struct.ffs_io_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kiocb_set_cancel_fn(%struct.kiocb*, i32) #1

declare dso_local i32 @ffs_epfile_io(i32, %struct.ffs_io_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
