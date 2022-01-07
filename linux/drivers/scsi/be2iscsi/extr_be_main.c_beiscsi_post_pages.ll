; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_post_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_post_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.be_mem_descriptor* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.be_mem_descriptor = type { i32, %struct.mem_array* }
%struct.mem_array = type { i32 }
%struct.be_dma_mem = type { i32 }

@HWI_MEM_SGE = common dso_local global i32 0, align 4
@BEISCSI_ULP_COUNT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"BM_%d : post sgl failed.\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"BM_%d : POSTED PAGES\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_post_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_post_pages(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.be_mem_descriptor*, align 8
  %5 = alloca %struct.mem_array*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_dma_mem, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %12 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %11, i32 0, i32 3
  %13 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %12, align 8
  store %struct.be_mem_descriptor* %13, %struct.be_mem_descriptor** %4, align 8
  %14 = load i32, i32* @HWI_MEM_SGE, align 4
  %15 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %15, i64 %16
  store %struct.be_mem_descriptor* %17, %struct.be_mem_descriptor** %4, align 8
  %18 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %19 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %18, i32 0, i32 1
  %20 = load %struct.mem_array*, %struct.mem_array** %19, align 8
  store %struct.mem_array* %20, %struct.mem_array** %5, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %34, %1
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @BEISCSI_ULP_COUNT, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %28 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = call i64 @test_bit(i32 %26, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %37

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %21

37:                                               ; preds = %32, %21
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %39 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %45 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %43, %52
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %53, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %95, %37
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %61 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %58
  %65 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %66 = load %struct.mem_array*, %struct.mem_array** %5, align 8
  %67 = call i32 @hwi_build_be_sgl_arr(%struct.beiscsi_hba* %65, %struct.mem_array* %66, %struct.be_dma_mem* %8)
  %68 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %69 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %68, i32 0, i32 0
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.mem_array*, %struct.mem_array** %5, align 8
  %72 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = sdiv i32 %73, %74
  %76 = call i32 @be_cmd_iscsi_post_sgl_pages(i32* %69, %struct.be_dma_mem* %8, i32 %70, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.mem_array*, %struct.mem_array** %5, align 8
  %78 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = sdiv i32 %79, %80
  %82 = load i32, i32* %6, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %64
  %87 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %88 = load i32, i32* @KERN_ERR, align 4
  %89 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %90 = call i32 @beiscsi_log(%struct.beiscsi_hba* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %2, align 4
  br label %103

92:                                               ; preds = %64
  %93 = load %struct.mem_array*, %struct.mem_array** %5, align 8
  %94 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %93, i32 1
  store %struct.mem_array* %94, %struct.mem_array** %5, align 8
  br label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %58

98:                                               ; preds = %58
  %99 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %100 = load i32, i32* @KERN_INFO, align 4
  %101 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %102 = call i32 @beiscsi_log(%struct.beiscsi_hba* %99, i32 %100, i32 %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %98, %86
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hwi_build_be_sgl_arr(%struct.beiscsi_hba*, %struct.mem_array*, %struct.be_dma_mem*) #1

declare dso_local i32 @be_cmd_iscsi_post_sgl_pages(i32*, %struct.be_dma_mem*, i32, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
