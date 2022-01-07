; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_rw_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_rw_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_target_request = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.sbp_page_table_entry*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sbp_page_table_entry = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.sbp_session* }
%struct.sbp_session = type { i32, i32, i32, i32 }
%struct.fw_card = type { i32 }
%struct.sg_mapping_iter = type { i32, i32, i64 }

@RCODE_COMPLETE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@TCODE_READ_BLOCK_REQUEST = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"sbp_run_transaction: page size ignored\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbp_target_request*)* @sbp_rw_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp_rw_data(%struct.sbp_target_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbp_target_request*, align 8
  %4 = alloca %struct.sbp_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sbp_page_table_entry*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.fw_card*, align 8
  %19 = alloca %struct.sg_mapping_iter, align 8
  store %struct.sbp_target_request* %0, %struct.sbp_target_request** %3, align 8
  %20 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %21 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.sbp_session*, %struct.sbp_session** %23, align 8
  store %struct.sbp_session* %24, %struct.sbp_session** %4, align 8
  %25 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %25, i32* %15, align 4
  %26 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %27 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @SG_MITER_FROM_SG, align 4
  store i32 %34, i32* %6, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @TCODE_READ_BLOCK_REQUEST, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @SG_MITER_TO_SG, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %40 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = call i32 @CMDBLK_ORB_MAX_PAYLOAD(i32 %43)
  %45 = shl i32 4, %44
  store i32 %45, i32* %7, align 4
  %46 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %47 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @be32_to_cpu(i32 %49)
  %51 = call i32 @CMDBLK_ORB_SPEED(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %53 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = call i32 @CMDBLK_ORB_PG_SIZE(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %38
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 256, %62
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %38
  %65 = load %struct.sbp_session*, %struct.sbp_session** %4, align 8
  %66 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %65, i32 0, i32 2
  %67 = call i32 @spin_lock_bh(i32* %66)
  %68 = load %struct.sbp_session*, %struct.sbp_session** %4, align 8
  %69 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.fw_card* @fw_card_get(i32 %70)
  store %struct.fw_card* %71, %struct.fw_card** %18, align 8
  %72 = load %struct.sbp_session*, %struct.sbp_session** %4, align 8
  %73 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  %75 = load %struct.sbp_session*, %struct.sbp_session** %4, align 8
  %76 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  %78 = load %struct.sbp_session*, %struct.sbp_session** %4, align 8
  %79 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %78, i32 0, i32 2
  %80 = call i32 @spin_unlock_bh(i32* %79)
  %81 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %82 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %81, i32 0, i32 2
  %83 = load %struct.sbp_page_table_entry*, %struct.sbp_page_table_entry** %82, align 8
  %84 = icmp ne %struct.sbp_page_table_entry* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %64
  %86 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %87 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %86, i32 0, i32 2
  %88 = load %struct.sbp_page_table_entry*, %struct.sbp_page_table_entry** %87, align 8
  store %struct.sbp_page_table_entry* %88, %struct.sbp_page_table_entry** %16, align 8
  %89 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %90 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be32_to_cpu(i32 %92)
  %94 = call i32 @CMDBLK_ORB_DATA_SIZE(i32 %93)
  store i32 %94, i32* %12, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %13, align 4
  br label %104

95:                                               ; preds = %64
  store %struct.sbp_page_table_entry* null, %struct.sbp_page_table_entry** %16, align 8
  store i32 0, i32* %12, align 4
  %96 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %97 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = call i64 @sbp2_pointer_to_addr(i32* %98)
  store i64 %99, i64* %17, align 8
  %100 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %101 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %95, %85
  %105 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %106 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %110 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %19, i32 %108, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %168, %104
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %118, %115
  %122 = phi i1 [ true, %115 ], [ %120, %118 ]
  br i1 %122, label %123, label %178

123:                                              ; preds = %121
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %146, label %126

126:                                              ; preds = %123
  %127 = load %struct.sbp_page_table_entry*, %struct.sbp_page_table_entry** %16, align 8
  %128 = getelementptr inbounds %struct.sbp_page_table_entry, %struct.sbp_page_table_entry* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @be16_to_cpu(i32 %129)
  %131 = shl i32 %130, 32
  %132 = load %struct.sbp_page_table_entry*, %struct.sbp_page_table_entry** %16, align 8
  %133 = getelementptr inbounds %struct.sbp_page_table_entry, %struct.sbp_page_table_entry* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @be32_to_cpu(i32 %134)
  %136 = or i32 %131, %135
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %17, align 8
  %138 = load %struct.sbp_page_table_entry*, %struct.sbp_page_table_entry** %16, align 8
  %139 = getelementptr inbounds %struct.sbp_page_table_entry, %struct.sbp_page_table_entry* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @be16_to_cpu(i32 %140)
  store i32 %141, i32* %13, align 4
  %142 = load %struct.sbp_page_table_entry*, %struct.sbp_page_table_entry** %16, align 8
  %143 = getelementptr inbounds %struct.sbp_page_table_entry, %struct.sbp_page_table_entry* %142, i32 1
  store %struct.sbp_page_table_entry* %143, %struct.sbp_page_table_entry** %16, align 8
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %126, %123
  %147 = call i32 @sg_miter_next(%struct.sg_mapping_iter* %19)
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %7, align 4
  %150 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %19, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 @min3(i32 %148, i32 %149, i32 %152)
  store i32 %153, i32* %14, align 4
  %154 = load %struct.fw_card*, %struct.fw_card** %18, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i64, i64* %17, align 8
  %160 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %19, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @sbp_run_transaction(%struct.fw_card* %154, i32 %155, i32 %156, i32 %157, i32 %158, i64 %159, i32 %161, i32 %162)
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* @RCODE_COMPLETE, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %146
  br label %178

168:                                              ; preds = %146
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %13, align 4
  %171 = sub nsw i32 %170, %169
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %17, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %17, align 8
  %176 = load i32, i32* %14, align 4
  %177 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %19, i32 0, i32 0
  store i32 %176, i32* %177, align 8
  br label %115

178:                                              ; preds = %167, %121
  %179 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %19)
  %180 = load %struct.fw_card*, %struct.fw_card** %18, align 8
  %181 = call i32 @fw_card_put(%struct.fw_card* %180)
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* @RCODE_COMPLETE, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %178
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @WARN_ON(i32 %188)
  store i32 0, i32* %2, align 4
  br label %193

190:                                              ; preds = %178
  %191 = load i32, i32* @EIO, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %190, %185
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @CMDBLK_ORB_MAX_PAYLOAD(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @CMDBLK_ORB_SPEED(i32) #1

declare dso_local i32 @CMDBLK_ORB_PG_SIZE(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.fw_card* @fw_card_get(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @CMDBLK_ORB_DATA_SIZE(i32) #1

declare dso_local i64 @sbp2_pointer_to_addr(i32*) #1

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @min3(i32, i32, i32) #1

declare dso_local i32 @sbp_run_transaction(%struct.fw_card*, i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

declare dso_local i32 @fw_card_put(%struct.fw_card*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
