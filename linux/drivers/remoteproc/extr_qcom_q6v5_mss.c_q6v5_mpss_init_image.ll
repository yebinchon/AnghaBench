; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_mpss_init_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_mpss_init_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5 = type { i32, i64 }
%struct.firmware = type { i32 }

@DMA_ATTR_FORCE_CONTIGUOUS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to allocate mdt buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QCOM_SCM_VMID_HLOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"assigning Q6 access to metadata failed: %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@RMB_PMI_META_DATA_REG = common dso_local global i64 0, align 8
@RMB_CMD_META_DATA_READY = common dso_local global i32 0, align 4
@RMB_MBA_COMMAND_REG = common dso_local global i64 0, align 8
@RMB_MBA_META_DATA_AUTH_SUCCESS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"MPSS header authentication timed out\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"MPSS header authentication failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"mdt buffer not reclaimed system may become unstable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6v5*, %struct.firmware*)* @q6v5_mpss_init_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_mpss_init_image(%struct.q6v5* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.q6v5*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.q6v5* %0, %struct.q6v5** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %14 = load i64, i64* @DMA_ATTR_FORCE_CONTIGUOUS, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.firmware*, %struct.firmware** %5, align 8
  %16 = call i8* @qcom_mdt_read_metadata(%struct.firmware* %15, i64* %11)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @PTR_ERR(i8* %21)
  store i32 %22, i32* %3, align 4
  br label %131

23:                                               ; preds = %2
  %24 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %25 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i8* @dma_alloc_attrs(i32 %26, i64 %27, i32* %7, i32 %28, i64 %29)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %23
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @kfree(i8* %34)
  %36 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %37 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %131

42:                                               ; preds = %23
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @memcpy(i8* %43, i8* %44, i64 %45)
  %47 = load i32, i32* @QCOM_SCM_VMID_HLOS, align 4
  %48 = call i32 @BIT(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @q6v5_xfer_mem_ownership(%struct.q6v5* %49, i32* %9, i32 1, i32 %50, i64 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %42
  %56 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %57 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  br label %113

63:                                               ; preds = %42
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %66 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RMB_PMI_META_DATA_REG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  %71 = load i32, i32* @RMB_CMD_META_DATA_READY, align 4
  %72 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %73 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RMB_MBA_COMMAND_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %79 = load i32, i32* @RMB_MBA_META_DATA_AUTH_SUCCESS, align 4
  %80 = call i32 @q6v5_rmb_mba_wait(%struct.q6v5* %78, i32 %79, i32 1000)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @ETIMEDOUT, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %63
  %86 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %87 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %100

90:                                               ; preds = %63
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %95 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %93, %90
  br label %100

100:                                              ; preds = %99, %85
  %101 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @q6v5_xfer_mem_ownership(%struct.q6v5* %101, i32* %9, i32 0, i32 %102, i64 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %109 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dev_warn(i32 %110, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %100
  br label %113

113:                                              ; preds = %112, %55
  %114 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %115 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @dma_free_attrs(i32 %116, i64 %117, i8* %118, i32 %119, i64 %120)
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @kfree(i8* %122)
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %113
  %127 = load i32, i32* %13, align 4
  br label %129

128:                                              ; preds = %113
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i32 [ %127, %126 ], [ 0, %128 ]
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %33, %20
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i8* @qcom_mdt_read_metadata(%struct.firmware*, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @dma_alloc_attrs(i32, i64, i32*, i32, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @q6v5_xfer_mem_ownership(%struct.q6v5*, i32*, i32, i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @q6v5_rmb_mba_wait(%struct.q6v5*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dma_free_attrs(i32, i64, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
