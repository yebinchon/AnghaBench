; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_build_flash_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_build_flash_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i32, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.esas2r_flash_context = type { i64, i64, i32, %struct.esas2r_sg_context, i32 }
%struct.esas2r_sg_context = type { i64, i64 }

@VDA_FLASH_BEGINW = common dso_local global i64 0, align 8
@esas2r_fmapi_callback = common dso_local global i32 0, align 4
@RS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*)* @build_flash_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_flash_msg(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.esas2r_flash_context*, align 8
  %6 = alloca %struct.esas2r_sg_context*, align 8
  %7 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %8 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %9 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.esas2r_flash_context*
  store %struct.esas2r_flash_context* %11, %struct.esas2r_flash_context** %5, align 8
  %12 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %13 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %12, i32 0, i32 3
  store %struct.esas2r_sg_context* %13, %struct.esas2r_sg_context** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %15 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VDA_FLASH_BEGINW, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %6, align 8
  %21 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %6, align 8
  %26 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %6, align 8
  %29 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @esas2r_calc_byte_xor_cksum(i64 %27, i64 %30, i32 0)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %24, %19
  %33 = load i32, i32* @esas2r_fmapi_callback, align 4
  %34 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %35 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %38 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %41 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %36, %32
  %43 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %44 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %45 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %46 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %50 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %6, align 8
  %53 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @esas2r_build_flash_req(%struct.esas2r_adapter* %43, %struct.esas2r_request* %44, i64 %47, i32 %48, i32 %51, i64 %54)
  %56 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %57 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %58 = call i32 @esas2r_rq_free_sg_lists(%struct.esas2r_request* %56, %struct.esas2r_adapter* %57)
  %59 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %60 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %64 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %6, align 8
  %66 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %42
  %70 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %6, align 8
  %71 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %72 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %73 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %74 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = call i32 @esas2r_sgc_init(%struct.esas2r_sg_context* %70, %struct.esas2r_adapter* %71, %struct.esas2r_request* %72, i32* %80)
  %82 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %83 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %84 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %6, align 8
  %85 = call i32 @esas2r_build_sg_list(%struct.esas2r_adapter* %82, %struct.esas2r_request* %83, %struct.esas2r_sg_context* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %69
  %88 = load i32, i32* @RS_BUSY, align 4
  %89 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %90 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %106

91:                                               ; preds = %69
  br label %96

92:                                               ; preds = %42
  %93 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %94 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %92, %91
  %97 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %98 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %101 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 8
  br label %106

106:                                              ; preds = %96, %87
  ret void
}

declare dso_local i32 @esas2r_calc_byte_xor_cksum(i64, i64, i32) #1

declare dso_local i32 @esas2r_build_flash_req(%struct.esas2r_adapter*, %struct.esas2r_request*, i64, i32, i32, i64) #1

declare dso_local i32 @esas2r_rq_free_sg_lists(%struct.esas2r_request*, %struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_sgc_init(%struct.esas2r_sg_context*, %struct.esas2r_adapter*, %struct.esas2r_request*, i32*) #1

declare dso_local i32 @esas2r_build_sg_list(%struct.esas2r_adapter*, %struct.esas2r_request*, %struct.esas2r_sg_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
