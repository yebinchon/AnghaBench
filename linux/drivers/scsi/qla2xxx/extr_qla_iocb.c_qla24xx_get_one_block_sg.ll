; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_get_one_block_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_get_one_block_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla2_sgx = type { i64, i64, i64, i64, i64, i64, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_get_one_block_sg(i64 %0, %struct.qla2_sgx* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.qla2_sgx*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.qla2_sgx* %1, %struct.qla2_sgx** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %13 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %16 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %103

20:                                               ; preds = %3
  %21 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %22 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %21, i32 0, i32 6
  %23 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  store %struct.scatterlist* %23, %struct.scatterlist** %8, align 8
  %24 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %25 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %28 = call i64 @sg_dma_address(%struct.scatterlist* %27)
  store i64 %28, i64* %11, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %30 = call i64 @sg_dma_len(%struct.scatterlist* %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %33 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %37 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %41 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = add nsw i64 %38, %43
  %45 = load i64, i64* %5, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %20
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub nsw i64 %48, %49
  %51 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %52 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %51, i32 0, i32 5
  store i64 %50, i64* %52, align 8
  %53 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %54 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %57 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load i64*, i64** %7, align 8
  store i64 0, i64* %60, align 8
  br label %77

61:                                               ; preds = %20
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %64 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %68 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %67, i32 0, i32 5
  store i64 %66, i64* %68, align 8
  %69 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %70 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %73 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load i64*, i64** %7, align 8
  store i64 1, i64* %76, align 8
  br label %77

77:                                               ; preds = %61, %47
  %78 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %79 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %82 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %87 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %77
  %91 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %92 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %91)
  store %struct.scatterlist* %92, %struct.scatterlist** %8, align 8
  %93 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %94 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %98 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %99 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %98, i32 0, i32 6
  store %struct.scatterlist* %97, %struct.scatterlist** %99, align 8
  %100 = load %struct.qla2_sgx*, %struct.qla2_sgx** %6, align 8
  %101 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %100, i32 0, i32 4
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %90, %77
  store i32 1, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %19
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
