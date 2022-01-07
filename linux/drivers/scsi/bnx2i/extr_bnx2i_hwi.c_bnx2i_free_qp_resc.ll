; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_free_qp_resc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_free_qp_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2i_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32*, i32, i64, i32*, i32, i64, i32*, i32, i64, i32*, i32, i64, i32*, i32, i64, i32*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2i_free_qp_resc(%struct.bnx2i_hba* %0, %struct.bnx2i_endpoint* %1) #0 {
  %3 = alloca %struct.bnx2i_hba*, align 8
  %4 = alloca %struct.bnx2i_endpoint*, align 8
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %3, align 8
  store %struct.bnx2i_endpoint* %1, %struct.bnx2i_endpoint** %4, align 8
  %5 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %6 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 18
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 18
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @iounmap(i32* %14)
  %16 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %17 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 18
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %10, %2
  %20 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 16
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %27 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %31 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 17
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %35 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 16
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %39 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 15
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dma_free_coherent(i32* %29, i32 %33, i32* %37, i64 %41)
  %43 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %44 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 16
  store i32* null, i32** %45, align 8
  %46 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %47 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 15
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %25, %19
  %50 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %51 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 13
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %49
  %56 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %57 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %61 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 14
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %65 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 13
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %69 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 12
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @dma_free_coherent(i32* %59, i32 %63, i32* %67, i64 %71)
  %73 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %74 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 13
  store i32* null, i32** %75, align 8
  %76 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %77 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 12
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %55, %49
  %80 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %81 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 10
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %109

85:                                               ; preds = %79
  %86 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %87 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %91 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 11
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %95 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 10
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %99 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 9
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @dma_free_coherent(i32* %89, i32 %93, i32* %97, i64 %101)
  %103 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %104 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 10
  store i32* null, i32** %105, align 8
  %106 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %107 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 9
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %85, %79
  %110 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %111 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %139

115:                                              ; preds = %109
  %116 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %117 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %121 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %125 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 7
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %129 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @dma_free_coherent(i32* %119, i32 %123, i32* %127, i64 %131)
  %133 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %134 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 7
  store i32* null, i32** %135, align 8
  %136 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %137 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 6
  store i64 0, i64* %138, align 8
  br label %139

139:                                              ; preds = %115, %109
  %140 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %141 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %169

145:                                              ; preds = %139
  %146 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %147 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %146, i32 0, i32 0
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %151 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %155 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %159 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @dma_free_coherent(i32* %149, i32 %153, i32* %157, i64 %161)
  %163 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %164 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 4
  store i32* null, i32** %165, align 8
  %166 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %167 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 3
  store i64 0, i64* %168, align 8
  br label %169

169:                                              ; preds = %145, %139
  %170 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %171 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %199

175:                                              ; preds = %169
  %176 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %177 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %176, i32 0, i32 0
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %181 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %185 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %189 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @dma_free_coherent(i32* %179, i32 %183, i32* %187, i64 %191)
  %193 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %194 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  store i32* null, i32** %195, align 8
  %196 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %197 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %175, %169
  ret void
}

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
