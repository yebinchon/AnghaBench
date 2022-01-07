; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_init_crq_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_init_crq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crq_queue = type { i32, %struct.viosrp_crq*, i32, i32, i64 }
%struct.viosrp_crq = type { i32 }
%struct.ibmvscsi_host_data = type { i32, i32 }
%struct.vio_dev = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@H_REG_CRQ = common dso_local global i32 0, align 4
@H_RESOURCE = common dso_local global i32 0, align 4
@H_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Partner adapter not ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error %d opening adapter\0A\00", align 1
@ibmvscsi_task = common dso_local global i64 0, align 8
@ibmvscsi_handle_event = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ibmvscsi\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"couldn't register irq 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Error %d enabling interrupts!!!\0A\00", align 1
@H_FREE_CRQ = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crq_queue*, %struct.ibmvscsi_host_data*, i32)* @ibmvscsi_init_crq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsi_init_crq_queue(%struct.crq_queue* %0, %struct.ibmvscsi_host_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crq_queue*, align 8
  %6 = alloca %struct.ibmvscsi_host_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vio_dev*, align 8
  store %struct.crq_queue* %0, %struct.crq_queue** %5, align 8
  store %struct.ibmvscsi_host_data* %1, %struct.ibmvscsi_host_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %12 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.vio_dev* @to_vio_dev(i32 %13)
  store %struct.vio_dev* %14, %struct.vio_dev** %10, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i64 @get_zeroed_page(i32 %15)
  %17 = inttoptr i64 %16 to %struct.viosrp_crq*
  %18 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %19 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %18, i32 0, i32 1
  store %struct.viosrp_crq* %17, %struct.viosrp_crq** %19, align 8
  %20 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %21 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %20, i32 0, i32 1
  %22 = load %struct.viosrp_crq*, %struct.viosrp_crq** %21, align 8
  %23 = icmp ne %struct.viosrp_crq* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %185

25:                                               ; preds = %3
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %31 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %33 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %36 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %35, i32 0, i32 1
  %37 = load %struct.viosrp_crq*, %struct.viosrp_crq** %36, align 8
  %38 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %39 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %45 = call i32 @dma_map_single(i32 %34, %struct.viosrp_crq* %37, i32 %43, i32 %44)
  %46 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %47 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %49 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %52 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @dma_mapping_error(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %25
  br label %179

57:                                               ; preds = %25
  %58 = call i32 (...) @gather_partition_info()
  %59 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %60 = call i32 @set_adapter_info(%struct.ibmvscsi_host_data* %59)
  %61 = load i32, i32* @H_REG_CRQ, align 4
  %62 = load %struct.vio_dev*, %struct.vio_dev** %10, align 8
  %63 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %66 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = call i32 (i32, i32, ...) @plpar_hcall_norets(i32 %61, i32 %64, i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @H_RESOURCE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %57
  %74 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %75 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %76 = call i32 @ibmvscsi_reset_crq_queue(%struct.crq_queue* %74, %struct.ibmvscsi_host_data* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %57
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @H_CLOSED, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %83 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @dev_warn(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %96

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %91 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i32, i8*, ...) @dev_warn(i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %164

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %81
  %97 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %98 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %97, i32 0, i32 4
  store i64 0, i64* %98, align 8
  %99 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %100 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %99, i32 0, i32 3
  %101 = call i32 @spin_lock_init(i32* %100)
  %102 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %103 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %102, i32 0, i32 1
  %104 = load i64, i64* @ibmvscsi_task, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %107 = ptrtoint %struct.ibmvscsi_host_data* %106 to i64
  %108 = call i32 @tasklet_init(i32* %103, i8* %105, i64 %107)
  %109 = load %struct.vio_dev*, %struct.vio_dev** %10, align 8
  %110 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ibmvscsi_handle_event, align 4
  %113 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %114 = bitcast %struct.ibmvscsi_host_data* %113 to i8*
  %115 = call i64 @request_irq(i32 %111, i32 %112, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %96
  %118 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %119 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.vio_dev*, %struct.vio_dev** %10, align 8
  %122 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_err(i32 %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  br label %138

125:                                              ; preds = %96
  %126 = load %struct.vio_dev*, %struct.vio_dev** %10, align 8
  %127 = call i32 @vio_enable_interrupts(%struct.vio_dev* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %132 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @dev_err(i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  br label %138

136:                                              ; preds = %125
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %4, align 4
  br label %186

138:                                              ; preds = %130, %117
  %139 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %140 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %139, i32 0, i32 1
  %141 = call i32 @tasklet_kill(i32* %140)
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %161, %138
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i32 @msleep(i32 100)
  br label %147

147:                                              ; preds = %145, %142
  %148 = load i32, i32* @H_FREE_CRQ, align 4
  %149 = load %struct.vio_dev*, %struct.vio_dev** %10, align 8
  %150 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i32, i32, ...) @plpar_hcall_norets(i32 %148, i32 %151)
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %147
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @H_BUSY, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %8, align 4
  %159 = call i64 @H_IS_LONG_BUSY(i32 %158)
  %160 = icmp ne i64 %159, 0
  br label %161

161:                                              ; preds = %157, %153
  %162 = phi i1 [ true, %153 ], [ %160, %157 ]
  br i1 %162, label %142, label %163

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %163, %89
  %165 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %166 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %169 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %172 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 4
  %176 = trunc i64 %175 to i32
  %177 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %178 = call i32 @dma_unmap_single(i32 %167, i32 %170, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %164, %56
  %180 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %181 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %180, i32 0, i32 1
  %182 = load %struct.viosrp_crq*, %struct.viosrp_crq** %181, align 8
  %183 = ptrtoint %struct.viosrp_crq* %182 to i64
  %184 = call i32 @free_page(i64 %183)
  br label %185

185:                                              ; preds = %179, %24
  store i32 -1, i32* %4, align 4
  br label %186

186:                                              ; preds = %185, %136
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local %struct.vio_dev* @to_vio_dev(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dma_map_single(i32, %struct.viosrp_crq*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @gather_partition_info(...) #1

declare dso_local i32 @set_adapter_info(%struct.ibmvscsi_host_data*) #1

declare dso_local i32 @plpar_hcall_norets(i32, i32, ...) #1

declare dso_local i32 @ibmvscsi_reset_crq_queue(%struct.crq_queue*, %struct.ibmvscsi_host_data*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i8*, i64) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @vio_enable_interrupts(%struct.vio_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
