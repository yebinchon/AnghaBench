; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c__gb_sdio_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c__gb_sdio_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_sdio_host = type { i64, i32, i32 }
%struct.mmc_data = type { i32, i32, i64, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.gb_sdio_transfer_request = type { i32, i32*, i8*, i8* }
%struct.gb_sdio_transfer_response = type { i32, i32 }
%struct.gb_operation = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.gb_sdio_transfer_response* }
%struct.TYPE_3__ = type { %struct.gb_sdio_transfer_request* }

@GB_SDIO_TYPE_TRANSFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"send: size received: %zu != %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_sdio_host*, %struct.mmc_data*, i64, i64, i32)* @_gb_sdio_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gb_sdio_send(%struct.gb_sdio_host* %0, %struct.mmc_data* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gb_sdio_host*, align 8
  %8 = alloca %struct.mmc_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gb_sdio_transfer_request*, align 8
  %13 = alloca %struct.gb_sdio_transfer_response*, align 8
  %14 = alloca %struct.gb_operation*, align 8
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.gb_sdio_host* %0, %struct.gb_sdio_host** %7, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %22 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %21, i32 0, i32 3
  %23 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  store %struct.scatterlist* %23, %struct.scatterlist** %15, align 8
  %24 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %25 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %16, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %7, align 8
  %29 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ugt i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %7, align 8
  %35 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GB_SDIO_TYPE_TRANSFER, align 4
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, 32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.gb_operation* @gb_operation_create(i32 %36, i32 %37, i64 %39, i32 8, i32 %40)
  store %struct.gb_operation* %41, %struct.gb_operation** %14, align 8
  %42 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %43 = icmp ne %struct.gb_operation* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %5
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %126

47:                                               ; preds = %5
  %48 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %49 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.gb_sdio_transfer_request*, %struct.gb_sdio_transfer_request** %51, align 8
  store %struct.gb_sdio_transfer_request* %52, %struct.gb_sdio_transfer_request** %12, align 8
  %53 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %54 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 8
  %57 = load %struct.gb_sdio_transfer_request*, %struct.gb_sdio_transfer_request** %12, align 8
  %58 = getelementptr inbounds %struct.gb_sdio_transfer_request, %struct.gb_sdio_transfer_request* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i8* @cpu_to_le16(i64 %59)
  %61 = load %struct.gb_sdio_transfer_request*, %struct.gb_sdio_transfer_request** %12, align 8
  %62 = getelementptr inbounds %struct.gb_sdio_transfer_request, %struct.gb_sdio_transfer_request* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %64 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i8* @cpu_to_le16(i64 %65)
  %67 = load %struct.gb_sdio_transfer_request*, %struct.gb_sdio_transfer_request** %12, align 8
  %68 = getelementptr inbounds %struct.gb_sdio_transfer_request, %struct.gb_sdio_transfer_request* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load %struct.gb_sdio_transfer_request*, %struct.gb_sdio_transfer_request** %12, align 8
  %72 = getelementptr inbounds %struct.gb_sdio_transfer_request, %struct.gb_sdio_transfer_request* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i64 @sg_pcopy_to_buffer(%struct.scatterlist* %69, i32 %70, i32* %74, i64 %75, i32 %76)
  store i64 %77, i64* %17, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %9, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %47
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %20, align 4
  br label %122

84:                                               ; preds = %47
  %85 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %86 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %85)
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %122

90:                                               ; preds = %84
  %91 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %92 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.gb_sdio_transfer_response*, %struct.gb_sdio_transfer_response** %94, align 8
  store %struct.gb_sdio_transfer_response* %95, %struct.gb_sdio_transfer_response** %13, align 8
  %96 = load %struct.gb_sdio_transfer_response*, %struct.gb_sdio_transfer_response** %13, align 8
  %97 = getelementptr inbounds %struct.gb_sdio_transfer_response, %struct.gb_sdio_transfer_response* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @le16_to_cpu(i32 %98)
  store i64 %99, i64* %19, align 8
  %100 = load %struct.gb_sdio_transfer_response*, %struct.gb_sdio_transfer_response** %13, align 8
  %101 = getelementptr inbounds %struct.gb_sdio_transfer_response, %struct.gb_sdio_transfer_response* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @le16_to_cpu(i32 %102)
  store i64 %103, i64* %18, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %19, align 8
  %107 = mul i64 %105, %106
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %90
  %110 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %7, align 8
  %111 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @mmc_dev(i32 %112)
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %19, align 8
  %117 = mul i64 %115, %116
  %118 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %114, i64 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %20, align 4
  br label %121

121:                                              ; preds = %109, %90
  br label %122

122:                                              ; preds = %121, %89, %81
  %123 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %124 = call i32 @gb_operation_put(%struct.gb_operation* %123)
  %125 = load i32, i32* %20, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %122, %44
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.gb_operation* @gb_operation_create(i32, i32, i64, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @sg_pcopy_to_buffer(%struct.scatterlist*, i32, i32*, i64, i32) #1

declare dso_local i32 @gb_operation_request_send_sync(%struct.gb_operation*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
