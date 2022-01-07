; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_allocatescbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_allocatescbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, i8*, %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i32* }

@.str = private unnamed_addr constant [17 x i8] c"ips_allocatescbs\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@IPS_MAX_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @ips_allocatescbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_allocatescbs(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %9 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1)
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 40
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @dma_alloc_coherent(i32* %13, i32 %19, i8** %7, i32 %20)
  %22 = bitcast i8* %21 to %struct.TYPE_13__*
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = icmp eq %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %165

30:                                               ; preds = %1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = call i32 @IPS_SGLIST_SIZE(%struct.TYPE_14__* %35)
  %37 = load i32, i32* @IPS_MAX_SG, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %38, %41
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @dma_alloc_coherent(i32* %34, i32 %42, i8** %8, i32 %43)
  %45 = bitcast i8* %44 to i32*
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  store i32* %45, i32** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %30
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 40
  %60 = trunc i64 %59 to i32
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @dma_free_coherent(i32* %54, i32 %60, %struct.TYPE_13__* %63, i8* %64)
  store i32 0, i32* %2, align 4
  br label %165

66:                                               ; preds = %30
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 40
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memset(%struct.TYPE_13__* %69, i32 0, i32 %75)
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %161, %66
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %164

83:                                               ; preds = %77
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i64 %88
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %4, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 40, %92
  %94 = getelementptr i8, i8* %90, i64 %93
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %98 = call i64 @IPS_USE_ENH_SGLIST(%struct.TYPE_14__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %83
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @IPS_MAX_SG, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %102, %106
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store i64 %107, i64* %110, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = call i32 @IPS_SGLIST_SIZE(%struct.TYPE_14__* %112)
  %114 = load i32, i32* @IPS_MAX_SG, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %6, align 4
  %117 = mul nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr i8, i8* %111, i64 %118
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  br label %144

122:                                              ; preds = %83
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @IPS_MAX_SG, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %124, %128
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %135 = call i32 @IPS_SGLIST_SIZE(%struct.TYPE_14__* %134)
  %136 = load i32, i32* @IPS_MAX_SG, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* %6, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr i8, i8* %133, i64 %140
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %122, %100
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %148, 1
  %150 = icmp slt i32 %145, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %144
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  store %struct.TYPE_13__* %154, %struct.TYPE_13__** %156, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  store %struct.TYPE_13__* %157, %struct.TYPE_13__** %159, align 8
  br label %160

160:                                              ; preds = %151, %144
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %77

164:                                              ; preds = %77
  store i32 1, i32* %2, align 4
  br label %165

165:                                              ; preds = %164, %50, %29
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i8**, i32) #1

declare dso_local i32 @IPS_SGLIST_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @IPS_USE_ENH_SGLIST(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
