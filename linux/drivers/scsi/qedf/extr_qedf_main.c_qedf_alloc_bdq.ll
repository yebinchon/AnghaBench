; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_alloc_bdq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_alloc_bdq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32, i32, i32, i32, i8*, i32, %struct.TYPE_10__*, %struct.TYPE_7__*, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8* }
%struct.scsi_bd = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_6__ = type { i8*, i8* }

@QEDF_BDQ_SIZE = common dso_local global i32 0, align 4
@QEDF_BDQ_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not allocate BDQ buffer %d.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QEDF_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not allocate BDQ PBL.\0A\00", align 1
@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"BDQ PBL addr=0x%p dma=%pad\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not allocate list of PBL pages.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_ctx*)* @qedf_alloc_bdq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_alloc_bdq(%struct.qedf_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_bd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %51, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @QEDF_BDQ_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  %13 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %13, i32 0, i32 6
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* @QEDF_BDQ_BUF_SIZE, align 4
  %18 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %18, i32 0, i32 7
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @dma_alloc_coherent(i32* %16, i32 %17, i32* %24, i32 %25)
  %27 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %27, i32 0, i32 7
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i8* %26, i8** %33, align 8
  %34 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %34, i32 0, i32 7
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %12
  %44 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %44, i32 0, i32 5
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %208

50:                                               ; preds = %12
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %8

54:                                               ; preds = %8
  %55 = load i32, i32* @QEDF_BDQ_SIZE, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 32
  %58 = trunc i64 %57 to i32
  %59 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %65 = call i32 @ALIGN(i32 %63, i32 %64)
  %66 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %68, i32 0, i32 6
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %75, i32 0, i32 1
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @dma_alloc_coherent(i32* %71, i32 %74, i32* %76, i32 %77)
  %79 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %79, i32 0, i32 8
  store i8* %78, i8** %80, align 8
  %81 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %82 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %81, i32 0, i32 8
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %54
  %86 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %87 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %86, i32 0, i32 5
  %88 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %208

91:                                               ; preds = %54
  %92 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %92, i32 0, i32 5
  %94 = load i32, i32* @QEDF_LOG_DISC, align 4
  %95 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %96 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %95, i32 0, i32 8
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %99 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %98, i32 0, i32 1
  %100 = call i32 @QEDF_INFO(i32* %93, i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %97, i32* %99)
  %101 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %101, i32 0, i32 8
  %103 = load i8*, i8** %102, align 8
  %104 = bitcast i8* %103 to %struct.scsi_bd*
  store %struct.scsi_bd* %104, %struct.scsi_bd** %5, align 8
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %148, %91
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @QEDF_BDQ_SIZE, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %151

109:                                              ; preds = %105
  %110 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %111 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %110, i32 0, i32 7
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @U64_HI(i32 %117)
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %121 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  store i8* %119, i8** %122, align 8
  %123 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %124 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %123, i32 0, i32 7
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @U64_LO(i32 %130)
  %132 = call i8* @cpu_to_le32(i32 %131)
  %133 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %134 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i8* %132, i8** %135, align 8
  %136 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %137 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i64 0, i64* %139, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i8* @cpu_to_le32(i32 %140)
  %142 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %143 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i8* %141, i8** %145, align 8
  %146 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %147 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %146, i32 1
  store %struct.scsi_bd* %147, %struct.scsi_bd** %5, align 8
  br label %148

148:                                              ; preds = %109
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %105

151:                                              ; preds = %105
  %152 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %153 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %152, i32 0, i32 6
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %157 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %158 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %157, i32 0, i32 2
  %159 = load i32, i32* @GFP_KERNEL, align 4
  %160 = call i8* @dma_alloc_coherent(i32* %155, i32 %156, i32* %158, i32 %159)
  %161 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %162 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  %163 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %164 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %173, label %167

167:                                              ; preds = %151
  %168 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %169 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %168, i32 0, i32 5
  %170 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %169, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %2, align 4
  br label %208

173:                                              ; preds = %151
  %174 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %175 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %178 = sdiv i32 %176, %177
  %179 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %180 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %182 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %181, i32 0, i32 4
  %183 = load i8*, i8** %182, align 8
  %184 = bitcast i8* %183 to i32*
  store i32* %184, i32** %6, align 8
  %185 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %186 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %204, %173
  %189 = load i32, i32* %4, align 4
  %190 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %191 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %207

194:                                              ; preds = %188
  %195 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %196 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %6, align 8
  store i32 %197, i32* %198, align 4
  %199 = load i32*, i32** %6, align 8
  %200 = getelementptr inbounds i32, i32* %199, i32 1
  store i32* %200, i32** %6, align 8
  %201 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %194
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %4, align 4
  br label %188

207:                                              ; preds = %188
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %207, %167, %85, %43
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i8*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
