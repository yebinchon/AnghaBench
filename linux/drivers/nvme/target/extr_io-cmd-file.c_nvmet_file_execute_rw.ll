; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-file.c_nvmet_file_execute_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-file.c_nvmet_file_execute_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { i64, %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@NVMET_MAX_INLINE_BIOVEC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_req*)* @nvmet_file_execute_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_file_execute_rw(%struct.nvmet_req* %0) #0 {
  %2 = alloca %struct.nvmet_req*, align 8
  %3 = alloca i64, align 8
  store %struct.nvmet_req* %0, %struct.nvmet_req** %2, align 8
  %4 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %5 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %8 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %16 = call i32 @nvmet_req_complete(%struct.nvmet_req* %15, i32 0)
  br label %92

17:                                               ; preds = %11
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @NVMET_MAX_INLINE_BIOVEC, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64 @kmalloc_array(i64 %22, i32 4, i32 %23)
  %25 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %26 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i64 %24, i64* %27, align 8
  br label %35

28:                                               ; preds = %17
  %29 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %30 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %33 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i64 %31, i64* %34, align 8
  br label %35

35:                                               ; preds = %28, %21
  %36 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %37 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %35
  %46 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %47 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i64 @mempool_alloc(i32 %50, i32 %51)
  %53 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %54 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  %56 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %57 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %63

59:                                               ; preds = %35
  %60 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %61 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %45
  %64 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %65 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %63
  %71 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %72 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @likely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %82 = load i32, i32* @IOCB_NOWAIT, align 4
  %83 = call i32 @nvmet_file_execute_io(%struct.nvmet_req* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %92

86:                                               ; preds = %80, %70
  %87 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %88 = call i32 @nvmet_file_submit_buffered_io(%struct.nvmet_req* %87)
  br label %92

89:                                               ; preds = %63
  %90 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %91 = call i32 @nvmet_file_execute_io(%struct.nvmet_req* %90, i32 0)
  br label %92

92:                                               ; preds = %14, %85, %89, %86
  ret void
}

declare dso_local i32 @nvmet_req_complete(%struct.nvmet_req*, i32) #1

declare dso_local i64 @kmalloc_array(i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @nvmet_file_execute_io(%struct.nvmet_req*, i32) #1

declare dso_local i32 @nvmet_file_submit_buffered_io(%struct.nvmet_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
