; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qedi_endpoint = type { i32, i32, i64, i8*, i8*, i64 }

@EIO = common dso_local global i32 0, align 4
@QEDI_SQ_SIZE = common dso_local global i32 0, align 4
@QEDI_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not allocate send queue.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not allocate send queue PBL.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedi_alloc_sq(%struct.qedi_ctx* %0, %struct.qedi_endpoint* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedi_ctx*, align 8
  %5 = alloca %struct.qedi_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %4, align 8
  store %struct.qedi_endpoint* %1, %struct.qedi_endpoint** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %11 = icmp ne %struct.qedi_endpoint* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %144

15:                                               ; preds = %2
  %16 = load i32, i32* @QEDI_SQ_SIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %21 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %25 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %29 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %32 = sdiv i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %37 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %39 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %44 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %50 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %53 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %52, i32 0, i32 2
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @dma_alloc_coherent(i32* %48, i32 %51, i64* %53, i32 %54)
  %56 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %57 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %59 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %15
  %63 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %63, i32 0, i32 1
  %65 = call i32 @QEDI_WARN(i32* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %142

68:                                               ; preds = %15
  %69 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %74 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %77 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %76, i32 0, i32 5
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @dma_alloc_coherent(i32* %72, i32 %75, i64* %77, i32 %78)
  %80 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %81 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %83 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %82, i32 0, i32 4
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %68
  %87 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %87, i32 0, i32 1
  %89 = call i32 @QEDI_WARN(i32* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %127

92:                                               ; preds = %68
  %93 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %94 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %9, align 4
  %98 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %99 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %8, align 8
  %101 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %102 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = bitcast i8* %103 to i64*
  store i64* %104, i64** %7, align 8
  br label %105

105:                                              ; preds = %109, %92
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %9, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %105
  %110 = load i64, i64* %8, align 8
  %111 = load i64*, i64** %7, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i64*, i64** %7, align 8
  %113 = getelementptr inbounds i64, i64* %112, i32 1
  store i64* %113, i64** %7, align 8
  %114 = load i64, i64* %8, align 8
  %115 = trunc i64 %114 to i32
  %116 = ashr i32 %115, 32
  %117 = sext i32 %116 to i64
  %118 = load i64*, i64** %7, align 8
  store i64 %117, i64* %118, align 8
  %119 = load i64*, i64** %7, align 8
  %120 = getelementptr inbounds i64, i64* %119, i32 1
  store i64* %120, i64** %7, align 8
  %121 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %8, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %8, align 8
  br label %105

125:                                              ; preds = %105
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %3, align 4
  br label %144

127:                                              ; preds = %86
  %128 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %129 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %133 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %136 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %5, align 8
  %139 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @dma_free_coherent(i32* %131, i32 %134, i8* %137, i64 %140)
  br label %142

142:                                              ; preds = %127, %62
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %125, %12
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @QEDI_WARN(i32*, i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
