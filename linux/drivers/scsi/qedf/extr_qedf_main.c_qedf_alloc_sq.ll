; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_alloc_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_alloc_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qedf_rport = type { i32, i32, i32, i32, i8*, i8* }

@SQ_NUM_ENTRIES = common dso_local global i32 0, align 4
@QEDF_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not allocate send queue.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not allocate send queue PBL.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_ctx*, %struct.qedf_rport*)* @qedf_alloc_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_alloc_sq(%struct.qedf_ctx* %0, %struct.qedf_rport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedf_ctx*, align 8
  %5 = alloca %struct.qedf_rport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %4, align 8
  store %struct.qedf_rport* %1, %struct.qedf_rport** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @SQ_NUM_ENTRIES, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %15 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %17 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %20 = call i32 @ALIGN(i32 %18, i32 %19)
  %21 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %22 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %24 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %27 = sdiv i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %32 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %34 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %39 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %45 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %48 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %47, i32 0, i32 2
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @dma_alloc_coherent(i32* %43, i32 %46, i32* %48, i32 %49)
  %51 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %52 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %54 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %2
  %58 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %58, i32 0, i32 1
  %60 = call i32 @QEDF_WARN(i32* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %131

61:                                               ; preds = %2
  %62 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %67 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %70 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %69, i32 0, i32 3
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @dma_alloc_coherent(i32* %65, i32 %68, i32* %70, i32 %71)
  %73 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %74 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %76 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %75, i32 0, i32 5
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %61
  %80 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %81 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %80, i32 0, i32 1
  %82 = call i32 @QEDF_WARN(i32* %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %116

83:                                               ; preds = %61
  %84 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %85 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %88 = sdiv i32 %86, %87
  store i32 %88, i32* %9, align 4
  %89 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %90 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %8, align 4
  %92 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %93 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %92, i32 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = bitcast i8* %94 to i32*
  store i32* %95, i32** %7, align 8
  br label %96

96:                                               ; preds = %100, %83
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %9, align 4
  %99 = icmp ne i32 %97, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @U64_LO(i32 %101)
  %103 = load i32*, i32** %7, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @U64_HI(i32 %106)
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %7, align 8
  %111 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %8, align 4
  br label %96

114:                                              ; preds = %96
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %133

116:                                              ; preds = %79
  %117 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %118 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %122 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %125 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %124, i32 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %128 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dma_free_coherent(i32* %120, i32 %123, i8* %126, i32 %129)
  br label %131

131:                                              ; preds = %116, %57
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %114
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @QEDF_WARN(i32*, i8*) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
