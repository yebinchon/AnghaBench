; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_update_disk_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_update_disk_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.nvme_ns = type { i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nvme_id_ns = type { i64, i32, i32, i64, i64, i64, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@NVME_F_METADATA_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*, %struct.nvme_ns*, %struct.nvme_id_ns*)* @nvme_update_disk_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_update_disk_info(%struct.gendisk* %0, %struct.nvme_ns* %1, %struct.nvme_id_ns* %2) #0 {
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca %struct.nvme_id_ns*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store %struct.nvme_ns* %1, %struct.nvme_ns** %5, align 8
  store %struct.nvme_id_ns* %2, %struct.nvme_id_ns** %6, align 8
  %12 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %13 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @le64_to_cpu(i32 %14)
  %16 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %17 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 9
  %20 = shl i32 %15, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %22 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 1, %23
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %8, align 2
  %26 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %27 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i16 512, i16* %8, align 2
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %34 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @blk_mq_freeze_queue(i32 %35)
  %37 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %38 = call i32 @blk_integrity_unregister(%struct.gendisk* %37)
  %39 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %40 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %32
  %44 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %45 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 2
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %51 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %56 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @le16_to_cpu(i64 %57)
  %59 = add nsw i32 1, %58
  %60 = load i16, i16* %8, align 2
  %61 = zext i16 %60 to i32
  %62 = mul nsw i32 %59, %61
  store i32 %62, i32* %9, align 4
  br label %75

63:                                               ; preds = %49, %43
  %64 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %65 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 1, %70
  %72 = load i16, i16* %8, align 2
  %73 = zext i16 %72 to i32
  %74 = mul nsw i32 %71, %73
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %63, %54
  br label %79

76:                                               ; preds = %32
  %77 = load i16, i16* %8, align 2
  %78 = zext i16 %77 to i32
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i16, i16* %8, align 2
  %81 = zext i16 %80 to i32
  store i32 %81, i32* %10, align 4
  %82 = load i16, i16* %8, align 2
  %83 = zext i16 %82 to i32
  store i32 %83, i32* %11, align 4
  %84 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %85 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 16
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %79
  %90 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %91 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @le16_to_cpu(i64 %92)
  %94 = add nsw i32 1, %93
  %95 = load i32, i32* %10, align 4
  %96 = mul nsw i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %98 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @le16_to_cpu(i64 %99)
  %101 = add nsw i32 1, %100
  %102 = load i32, i32* %11, align 4
  %103 = mul nsw i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %89, %79
  %105 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %106 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i16, i16* %8, align 2
  %109 = call i32 @blk_queue_logical_block_size(i32 %107, i16 zeroext %108)
  %110 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %111 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @min(i32 %113, i32 %114)
  %116 = call i32 @blk_queue_physical_block_size(i32 %112, i32 %115)
  %117 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %118 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @blk_queue_io_min(i32 %119, i32 %120)
  %122 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %123 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @blk_queue_io_opt(i32 %124, i32 %125)
  %127 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %128 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %156

131:                                              ; preds = %104
  %132 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %133 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %156, label %136

136:                                              ; preds = %131
  %137 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %138 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %137, i32 0, i32 3
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @NVME_F_METADATA_SUPPORTED, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %136
  %148 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %149 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %150 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %153 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @nvme_init_integrity(%struct.gendisk* %148, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %147, %136, %131, %104
  %157 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %158 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %163 = call i32 @nvme_ns_has_pi(%struct.nvme_ns* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %167 = call i32 @blk_get_integrity(%struct.gendisk* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %165, %161, %156
  %170 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %171 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @PAGE_SHIFT, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169, %165
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %175, %169
  %177 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @set_capacity(%struct.gendisk* %177, i32 %178)
  %180 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %181 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %182 = call i32 @nvme_config_discard(%struct.gendisk* %180, %struct.nvme_ns* %181)
  %183 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %184 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %185 = call i32 @nvme_config_write_zeroes(%struct.gendisk* %183, %struct.nvme_ns* %184)
  %186 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %187 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 1
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %176
  %192 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %193 = call i32 @set_disk_ro(%struct.gendisk* %192, i32 1)
  br label %197

194:                                              ; preds = %176
  %195 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %196 = call i32 @set_disk_ro(%struct.gendisk* %195, i32 0)
  br label %197

197:                                              ; preds = %194, %191
  %198 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %199 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @blk_mq_unfreeze_queue(i32 %200)
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @blk_mq_freeze_queue(i32) #1

declare dso_local i32 @blk_integrity_unregister(%struct.gendisk*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @blk_queue_logical_block_size(i32, i16 zeroext) #1

declare dso_local i32 @blk_queue_physical_block_size(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @blk_queue_io_min(i32, i32) #1

declare dso_local i32 @blk_queue_io_opt(i32, i32) #1

declare dso_local i32 @nvme_init_integrity(%struct.gendisk*, i32, i32) #1

declare dso_local i32 @nvme_ns_has_pi(%struct.nvme_ns*) #1

declare dso_local i32 @blk_get_integrity(%struct.gendisk*) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @nvme_config_discard(%struct.gendisk*, %struct.nvme_ns*) #1

declare dso_local i32 @nvme_config_write_zeroes(%struct.gendisk*, %struct.nvme_ns*) #1

declare dso_local i32 @set_disk_ro(%struct.gendisk*, i32) #1

declare dso_local i32 @blk_mq_unfreeze_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
