; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_post_template_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_post_template_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.be_mem_descriptor = type { %struct.mem_array* }
%struct.mem_array = type { i32 }
%struct.be_dma_mem = type { i32 }

@BEISCSI_ULP_COUNT = common dso_local global i32 0, align 4
@HWI_MEM_TEMPLATE_HDR_ULP0 = common dso_local global i64 0, align 8
@MEM_DESCR_OFFSET = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"BM_%d : Post Template HDR Failed forULP_%d\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"BM_%d : Template HDR Pages Posted forULP_%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_post_template_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_post_template_hdr(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.be_mem_descriptor*, align 8
  %5 = alloca %struct.mem_array*, align 8
  %6 = alloca %struct.be_dma_mem, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %58, %1
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @BEISCSI_ULP_COUNT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %16 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %13
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %22 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %24, %struct.be_mem_descriptor** %4, align 8
  %25 = load i64, i64* @HWI_MEM_TEMPLATE_HDR_ULP0, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MEM_DESCR_OFFSET, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %32 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %31, i64 %30
  store %struct.be_mem_descriptor* %32, %struct.be_mem_descriptor** %4, align 8
  %33 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %34 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %33, i32 0, i32 0
  %35 = load %struct.mem_array*, %struct.mem_array** %34, align 8
  store %struct.mem_array* %35, %struct.mem_array** %5, align 8
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %37 = load %struct.mem_array*, %struct.mem_array** %5, align 8
  %38 = call i32 @hwi_build_be_sgl_arr(%struct.beiscsi_hba* %36, %struct.mem_array* %37, %struct.be_dma_mem* %6)
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %40 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %39, i32 0, i32 0
  %41 = call i32 @be_cmd_iscsi_post_template_hdr(i32* %40, %struct.be_dma_mem* %6)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %20
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %46 = load i32, i32* @KERN_ERR, align 4
  %47 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @beiscsi_log(%struct.beiscsi_hba* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %62

51:                                               ; preds = %20
  %52 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %53 = load i32, i32* @KERN_INFO, align 4
  %54 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @beiscsi_log(%struct.beiscsi_hba* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %13
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %9

61:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hwi_build_be_sgl_arr(%struct.beiscsi_hba*, %struct.mem_array*, %struct.be_dma_mem*) #1

declare dso_local i32 @be_cmd_iscsi_post_template_hdr(i32*, %struct.be_dma_mem*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
