; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_conn_alloc_login_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_conn_alloc_login_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qedi_conn = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32, i32*, i32, i32*, i32, i8*, i32, i32*, i32, i32*, i64 }

@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@QEDI_PAGE_SIZE = common dso_local global i32 0, align 4
@QEDI_LOG_SESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Allocation successful, cid=0x%x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"login resource alloc failed!!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*, %struct.qedi_conn*)* @qedi_conn_alloc_login_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_conn_alloc_login_resources(%struct.qedi_ctx* %0, %struct.qedi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedi_ctx*, align 8
  %5 = alloca %struct.qedi_conn*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %4, align 8
  store %struct.qedi_conn* %1, %struct.qedi_conn** %5, align 8
  %6 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %11 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %12 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @dma_alloc_coherent(i32* %9, i32 %10, i32* %13, i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %18 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32* %16, i32** %19, align 8
  %20 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %21 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %171

26:                                               ; preds = %2
  %27 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %28 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 11
  store i64 0, i64* %29, align 8
  %30 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %31 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %35 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 10
  store i32* %33, i32** %36, align 8
  %37 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %42 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %43 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @dma_alloc_coherent(i32* %40, i32 %41, i32* %44, i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %49 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32* %47, i32** %50, align 8
  %51 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %52 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %26
  br label %153

57:                                               ; preds = %26
  %58 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %59 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %60 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 9
  store i32 %58, i32* %61, align 8
  %62 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %63 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %67 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 8
  store i32* %65, i32** %68, align 8
  %69 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %74 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %75 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @dma_alloc_coherent(i32* %72, i32 %73, i32* %76, i32 %77)
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %81 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  store i32* %79, i32** %82, align 8
  %83 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %84 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %57
  br label %135

89:                                               ; preds = %57
  %90 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %91 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %95 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %96 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 7
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @dma_alloc_coherent(i32* %93, i32 %94, i32* %97, i32 %98)
  %100 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %101 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 6
  store i8* %99, i8** %102, align 8
  %103 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %104 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 6
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %89
  br label %117

109:                                              ; preds = %89
  %110 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %111 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %110, i32 0, i32 1
  %112 = load i32, i32* @QEDI_LOG_SESS, align 4
  %113 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %114 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @QEDI_INFO(i32* %111, i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %115)
  store i32 0, i32* %3, align 4
  br label %181

117:                                              ; preds = %108
  %118 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %119 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %123 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %124 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %128 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dma_free_coherent(i32* %121, i32 %122, i32* %126, i32 %130)
  %132 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %133 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 4
  store i32* null, i32** %134, align 8
  br label %135

135:                                              ; preds = %117, %88
  %136 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %137 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %141 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %142 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %146 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @dma_free_coherent(i32* %139, i32 %140, i32* %144, i32 %148)
  %150 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %151 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  store i32* null, i32** %152, align 8
  br label %153

153:                                              ; preds = %135, %56
  %154 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %155 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %159 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %160 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %164 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @dma_free_coherent(i32* %157, i32 %158, i32* %162, i32 %166)
  %168 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %169 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  store i32* null, i32** %170, align 8
  br label %171

171:                                              ; preds = %153, %25
  %172 = load i32, i32* @KERN_ERR, align 4
  %173 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %174 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %173, i32 0, i32 0
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @iscsi_conn_printk(i32 %172, i32 %177, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %171, %109
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @iscsi_conn_printk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
