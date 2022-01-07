; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_init_crq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_init_crq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_host = type { i32, %struct.ibmvfc_crq_queue, %struct.device* }
%struct.ibmvfc_crq_queue = type { i32, %struct.ibmvfc_crq*, i32, i64 }
%struct.ibmvfc_crq = type { i32 }
%struct.device = type { i32 }
%struct.vio_dev = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@H_REG_CRQ = common dso_local global i32 0, align 4
@H_RESOURCE = common dso_local global i32 0, align 4
@H_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Partner adapter not ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error %d opening adapter\0A\00", align 1
@ibmvfc_tasklet = common dso_local global i64 0, align 8
@ibmvfc_interrupt = common dso_local global i32 0, align 4
@IBMVFC_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Couldn't register irq 0x%x. rc=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Error %d enabling interrupts\0A\00", align 1
@LEAVE = common dso_local global i32 0, align 4
@H_FREE_CRQ = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvfc_host*)* @ibmvfc_init_crq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_init_crq(%struct.ibmvfc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvfc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.vio_dev*, align 8
  %8 = alloca %struct.ibmvfc_crq_queue*, align 8
  store %struct.ibmvfc_host* %0, %struct.ibmvfc_host** %3, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %12 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %11, i32 0, i32 2
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.vio_dev* @to_vio_dev(%struct.device* %14)
  store %struct.vio_dev* %15, %struct.vio_dev** %7, align 8
  %16 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %17 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %16, i32 0, i32 1
  store %struct.ibmvfc_crq_queue* %17, %struct.ibmvfc_crq_queue** %8, align 8
  %18 = load i32, i32* @ENTER, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i64 @get_zeroed_page(i32 %19)
  %21 = inttoptr i64 %20 to %struct.ibmvfc_crq*
  %22 = load %struct.ibmvfc_crq_queue*, %struct.ibmvfc_crq_queue** %8, align 8
  %23 = getelementptr inbounds %struct.ibmvfc_crq_queue, %struct.ibmvfc_crq_queue* %22, i32 0, i32 1
  store %struct.ibmvfc_crq* %21, %struct.ibmvfc_crq** %23, align 8
  %24 = load %struct.ibmvfc_crq_queue*, %struct.ibmvfc_crq_queue** %8, align 8
  %25 = getelementptr inbounds %struct.ibmvfc_crq_queue, %struct.ibmvfc_crq_queue* %24, i32 0, i32 1
  %26 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %25, align 8
  %27 = icmp ne %struct.ibmvfc_crq* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %157

31:                                               ; preds = %1
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = load %struct.ibmvfc_crq_queue*, %struct.ibmvfc_crq_queue** %8, align 8
  %37 = getelementptr inbounds %struct.ibmvfc_crq_queue, %struct.ibmvfc_crq_queue* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load %struct.ibmvfc_crq_queue*, %struct.ibmvfc_crq_queue** %8, align 8
  %40 = getelementptr inbounds %struct.ibmvfc_crq_queue, %struct.ibmvfc_crq_queue* %39, i32 0, i32 1
  %41 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %40, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %44 = call i32 @dma_map_single(%struct.device* %38, %struct.ibmvfc_crq* %41, i32 %42, i32 %43)
  %45 = load %struct.ibmvfc_crq_queue*, %struct.ibmvfc_crq_queue** %8, align 8
  %46 = getelementptr inbounds %struct.ibmvfc_crq_queue, %struct.ibmvfc_crq_queue* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load %struct.ibmvfc_crq_queue*, %struct.ibmvfc_crq_queue** %8, align 8
  %49 = getelementptr inbounds %struct.ibmvfc_crq_queue, %struct.ibmvfc_crq_queue* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @dma_mapping_error(%struct.device* %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %31
  br label %150

54:                                               ; preds = %31
  %55 = load i32, i32* @H_REG_CRQ, align 4
  %56 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %57 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ibmvfc_crq_queue*, %struct.ibmvfc_crq_queue** %8, align 8
  %60 = getelementptr inbounds %struct.ibmvfc_crq_queue, %struct.ibmvfc_crq_queue* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = call i32 (i32, i32, ...) @plpar_hcall_norets(i32 %55, i32 %58, i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @H_RESOURCE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %69 = call i32 @ibmvfc_reset_crq(%struct.ibmvfc_host* %68)
  store i32 %69, i32* %4, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %54
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @H_CLOSED, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %85

77:                                               ; preds = %70
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %142

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %74
  store i32 0, i32* %5, align 4
  %86 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %87 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %86, i32 0, i32 0
  %88 = load i64, i64* @ibmvfc_tasklet, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %91 = ptrtoint %struct.ibmvfc_host* %90 to i64
  %92 = call i32 @tasklet_init(i32* %87, i8* %89, i64 %91)
  %93 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %94 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ibmvfc_interrupt, align 4
  %97 = load i32, i32* @IBMVFC_NAME, align 4
  %98 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %99 = call i32 @request_irq(i32 %95, i32 %96, i32 0, i32 %97, %struct.ibmvfc_host* %98)
  store i32 %99, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %85
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %104 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %106)
  br label %121

108:                                              ; preds = %85
  %109 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %110 = call i32 @vio_enable_interrupts(%struct.vio_dev* %109)
  store i32 %110, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load %struct.device*, %struct.device** %6, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  br label %121

116:                                              ; preds = %108
  %117 = load %struct.ibmvfc_crq_queue*, %struct.ibmvfc_crq_queue** %8, align 8
  %118 = getelementptr inbounds %struct.ibmvfc_crq_queue, %struct.ibmvfc_crq_queue* %117, i32 0, i32 3
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* @LEAVE, align 4
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %157

121:                                              ; preds = %112, %101
  %122 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %123 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %122, i32 0, i32 0
  %124 = call i32 @tasklet_kill(i32* %123)
  br label %125

125:                                              ; preds = %139, %121
  %126 = load i32, i32* @H_FREE_CRQ, align 4
  %127 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %128 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i32, ...) @plpar_hcall_norets(i32 %126, i32 %129)
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %125
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @H_BUSY, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %4, align 4
  %137 = call i64 @H_IS_LONG_BUSY(i32 %136)
  %138 = icmp ne i64 %137, 0
  br label %139

139:                                              ; preds = %135, %131
  %140 = phi i1 [ true, %131 ], [ %138, %135 ]
  br i1 %140, label %125, label %141

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %141, %80
  %143 = load %struct.device*, %struct.device** %6, align 8
  %144 = load %struct.ibmvfc_crq_queue*, %struct.ibmvfc_crq_queue** %8, align 8
  %145 = getelementptr inbounds %struct.ibmvfc_crq_queue, %struct.ibmvfc_crq_queue* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @PAGE_SIZE, align 4
  %148 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %149 = call i32 @dma_unmap_single(%struct.device* %143, i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %142, %53
  %151 = load %struct.ibmvfc_crq_queue*, %struct.ibmvfc_crq_queue** %8, align 8
  %152 = getelementptr inbounds %struct.ibmvfc_crq_queue, %struct.ibmvfc_crq_queue* %151, i32 0, i32 1
  %153 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %152, align 8
  %154 = ptrtoint %struct.ibmvfc_crq* %153 to i64
  %155 = call i32 @free_page(i64 %154)
  %156 = load i32, i32* %5, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %150, %116, %28
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.vio_dev* @to_vio_dev(%struct.device*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, %struct.ibmvfc_crq*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @plpar_hcall_norets(i32, i32, ...) #1

declare dso_local i32 @ibmvfc_reset_crq(%struct.ibmvfc_host*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @tasklet_init(i32*, i8*, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.ibmvfc_host*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @vio_enable_interrupts(%struct.vio_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i64 @H_IS_LONG_BUSY(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
