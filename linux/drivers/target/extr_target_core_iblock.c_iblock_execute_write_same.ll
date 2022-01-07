; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_execute_write_same.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_execute_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.iblock_req*, %struct.se_device*, %struct.scatterlist*, i64, i32 }
%struct.iblock_req = type { i32 }
%struct.se_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.scatterlist = type { i32, i32 }
%struct.block_device = type { i32 }
%struct.bio = type { i32 }
%struct.bio_list = type { i32 }
%struct.TYPE_4__ = type { %struct.block_device* }

@.str = private unnamed_addr constant [71 x i8] c"WRITE_SAME: Protection information with IBLOCK backends not supported\0A\00", align 1
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"WRITE_SAME: Illegal SGL t_data_nents: %u length: %u block_size: %u\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @iblock_execute_write_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iblock_execute_write_same(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.iblock_req*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.bio_list, align 4
  %9 = alloca %struct.se_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %12 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 2
  %14 = load %struct.se_device*, %struct.se_device** %13, align 8
  %15 = call %struct.TYPE_4__* @IBLOCK_DEV(%struct.se_device* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.block_device*, %struct.block_device** %16, align 8
  store %struct.block_device* %17, %struct.block_device** %4, align 8
  %18 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 2
  %20 = load %struct.se_device*, %struct.se_device** %19, align 8
  store %struct.se_device* %20, %struct.se_device** %9, align 8
  %21 = load %struct.se_device*, %struct.se_device** %9, align 8
  %22 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @target_to_linux_sector(%struct.se_device* %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.se_device*, %struct.se_device** %9, align 8
  %27 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %28 = call i32 @sbc_get_write_same_sectors(%struct.se_cmd* %27)
  %29 = call i32 @target_to_linux_sector(%struct.se_device* %26, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %31 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %36, i32* %2, align 4
  br label %170

37:                                               ; preds = %1
  %38 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %38, i32 0, i32 3
  %40 = load %struct.scatterlist*, %struct.scatterlist** %39, align 8
  %41 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %40, i64 0
  store %struct.scatterlist* %41, %struct.scatterlist** %6, align 8
  %42 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %43 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %57, label %46

46:                                               ; preds = %37
  %47 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %48 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %50, i32 0, i32 2
  %52 = load %struct.se_device*, %struct.se_device** %51, align 8
  %53 = getelementptr inbounds %struct.se_device, %struct.se_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %49, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %46, %37
  %58 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %59 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %62 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %65 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %64, i32 0, i32 2
  %66 = load %struct.se_device*, %struct.se_device** %65, align 8
  %67 = getelementptr inbounds %struct.se_device, %struct.se_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %63, i32 %69)
  %71 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %71, i32* %2, align 4
  br label %170

72:                                               ; preds = %46
  %73 = load %struct.block_device*, %struct.block_device** %4, align 8
  %74 = call i64 @bdev_write_zeroes_sectors(%struct.block_device* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.block_device*, %struct.block_device** %4, align 8
  %78 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %79 = call i32 @iblock_execute_zero_out(%struct.block_device* %77, %struct.se_cmd* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %170

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %72
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.iblock_req* @kzalloc(i32 4, i32 %84)
  store %struct.iblock_req* %85, %struct.iblock_req** %5, align 8
  %86 = load %struct.iblock_req*, %struct.iblock_req** %5, align 8
  %87 = icmp ne %struct.iblock_req* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %168

89:                                               ; preds = %83
  %90 = load %struct.iblock_req*, %struct.iblock_req** %5, align 8
  %91 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %92 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %91, i32 0, i32 1
  store %struct.iblock_req* %90, %struct.iblock_req** %92, align 8
  %93 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @REQ_OP_WRITE, align 4
  %96 = call %struct.bio* @iblock_get_bio(%struct.se_cmd* %93, i32 %94, i32 1, i32 %95, i32 0)
  store %struct.bio* %96, %struct.bio** %7, align 8
  %97 = load %struct.bio*, %struct.bio** %7, align 8
  %98 = icmp ne %struct.bio* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  br label %165

100:                                              ; preds = %89
  %101 = call i32 @bio_list_init(%struct.bio_list* %8)
  %102 = load %struct.bio*, %struct.bio** %7, align 8
  %103 = call i32 @bio_list_add(%struct.bio_list* %8, %struct.bio* %102)
  %104 = load %struct.iblock_req*, %struct.iblock_req** %5, align 8
  %105 = getelementptr inbounds %struct.iblock_req, %struct.iblock_req* %104, i32 0, i32 0
  %106 = call i32 @refcount_set(i32* %105, i32 1)
  br label %107

107:                                              ; preds = %140, %100
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %155

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %134, %110
  %112 = load %struct.bio*, %struct.bio** %7, align 8
  %113 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %114 = call i32 @sg_page(%struct.scatterlist* %113)
  %115 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %116 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %119 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @bio_add_page(%struct.bio* %112, i32 %114, i32 %117, i32 %120)
  %122 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %123 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %121, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %111
  %127 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @REQ_OP_WRITE, align 4
  %130 = call %struct.bio* @iblock_get_bio(%struct.se_cmd* %127, i32 %128, i32 1, i32 %129, i32 0)
  store %struct.bio* %130, %struct.bio** %7, align 8
  %131 = load %struct.bio*, %struct.bio** %7, align 8
  %132 = icmp ne %struct.bio* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  br label %157

134:                                              ; preds = %126
  %135 = load %struct.iblock_req*, %struct.iblock_req** %5, align 8
  %136 = getelementptr inbounds %struct.iblock_req, %struct.iblock_req* %135, i32 0, i32 0
  %137 = call i32 @refcount_inc(i32* %136)
  %138 = load %struct.bio*, %struct.bio** %7, align 8
  %139 = call i32 @bio_list_add(%struct.bio_list* %8, %struct.bio* %138)
  br label %111

140:                                              ; preds = %111
  %141 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %142 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SECTOR_SHIFT, align 4
  %145 = ashr i32 %143, %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %10, align 4
  %148 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %149 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @SECTOR_SHIFT, align 4
  %152 = ashr i32 %150, %151
  %153 = load i32, i32* %11, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %11, align 4
  br label %107

155:                                              ; preds = %107
  %156 = call i32 @iblock_submit_bios(%struct.bio_list* %8)
  store i32 0, i32* %2, align 4
  br label %170

157:                                              ; preds = %133
  br label %158

158:                                              ; preds = %161, %157
  %159 = call %struct.bio* @bio_list_pop(%struct.bio_list* %8)
  store %struct.bio* %159, %struct.bio** %7, align 8
  %160 = icmp ne %struct.bio* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.bio*, %struct.bio** %7, align 8
  %163 = call i32 @bio_put(%struct.bio* %162)
  br label %158

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164, %99
  %166 = load %struct.iblock_req*, %struct.iblock_req** %5, align 8
  %167 = call i32 @kfree(%struct.iblock_req* %166)
  br label %168

168:                                              ; preds = %165, %88
  %169 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %168, %155, %81, %57, %34
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.TYPE_4__* @IBLOCK_DEV(%struct.se_device*) #1

declare dso_local i32 @target_to_linux_sector(%struct.se_device*, i32) #1

declare dso_local i32 @sbc_get_write_same_sectors(%struct.se_cmd*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @bdev_write_zeroes_sectors(%struct.block_device*) #1

declare dso_local i32 @iblock_execute_zero_out(%struct.block_device*, %struct.se_cmd*) #1

declare dso_local %struct.iblock_req* @kzalloc(i32, i32) #1

declare dso_local %struct.bio* @iblock_get_bio(%struct.se_cmd*, i32, i32, i32, i32) #1

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @bio_list_add(%struct.bio_list*, %struct.bio*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @iblock_submit_bios(%struct.bio_list*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @kfree(%struct.iblock_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
