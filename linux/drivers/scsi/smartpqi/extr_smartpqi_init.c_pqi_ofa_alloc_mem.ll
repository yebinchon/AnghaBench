; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32*, %struct.pqi_ofa_memory*, %struct.TYPE_2__* }
%struct.pqi_ofa_memory = type { i32, %struct.pqi_sg_descriptor*, i32 }
%struct.pqi_sg_descriptor = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CISS_SG_LAST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, i32, i32)* @pqi_ofa_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_ofa_alloc_mem(%struct.pqi_ctrl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pqi_ctrl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pqi_sg_descriptor*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.pqi_ofa_memory*, align 8
  %14 = alloca i64, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.pqi_sg_descriptor* null, %struct.pqi_sg_descriptor** %11, align 8
  %15 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %16 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %12, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sdiv i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %27 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %26, i32 0, i32 1
  %28 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %27, align 8
  store %struct.pqi_ofa_memory* %28, %struct.pqi_ofa_memory** %13, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %144

35:                                               ; preds = %3
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32* @kcalloc(i32 %36, i32 8, i32 %37)
  %39 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %40 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %42 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %144

46:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %87, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %47
  %52 = load %struct.device*, %struct.device** %12, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @dma_alloc_coherent(%struct.device* %52, i32 %53, i64* %14, i32 %54)
  %56 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %57 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  %62 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %63 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %51
  br label %93

71:                                               ; preds = %51
  %72 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %13, align 8
  %73 = getelementptr inbounds %struct.pqi_ofa_memory, %struct.pqi_ofa_memory* %72, i32 0, i32 1
  %74 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %74, i64 %76
  store %struct.pqi_sg_descriptor* %77, %struct.pqi_sg_descriptor** %11, align 8
  %78 = load i64, i64* %14, align 8
  %79 = trunc i64 %78 to i32
  %80 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %11, align 8
  %81 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %80, i32 0, i32 0
  %82 = call i32 @put_unaligned_le64(i32 %79, i32* %81)
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %11, align 8
  %85 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %84, i32 0, i32 2
  %86 = call i32 @put_unaligned_le32(i32 %83, i32* %85)
  br label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %47

93:                                               ; preds = %70, %47
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %93
  br label %114

101:                                              ; preds = %96
  %102 = load i32, i32* @CISS_SG_LAST, align 4
  %103 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %11, align 8
  %104 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %103, i32 0, i32 1
  %105 = call i32 @put_unaligned_le32(i32 %102, i32* %104)
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %13, align 8
  %108 = getelementptr inbounds %struct.pqi_ofa_memory, %struct.pqi_ofa_memory* %107, i32 0, i32 2
  %109 = call i32 @put_unaligned_le16(i32 %106, i32* %108)
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %13, align 8
  %112 = getelementptr inbounds %struct.pqi_ofa_memory, %struct.pqi_ofa_memory* %111, i32 0, i32 0
  %113 = call i32 @put_unaligned_le32(i32 %110, i32* %112)
  store i32 0, i32* %4, align 4
  br label %150

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %119, %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %10, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %115
  %120 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %13, align 8
  %121 = getelementptr inbounds %struct.pqi_ofa_memory, %struct.pqi_ofa_memory* %120, i32 0, i32 1
  %122 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %122, i64 %124
  store %struct.pqi_sg_descriptor* %125, %struct.pqi_sg_descriptor** %11, align 8
  %126 = load %struct.device*, %struct.device** %12, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %129 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %11, align 8
  %136 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %135, i32 0, i32 0
  %137 = call i32 @get_unaligned_le64(i32* %136)
  %138 = call i32 @dma_free_coherent(%struct.device* %126, i32 %127, i32 %134, i32 %137)
  br label %115

139:                                              ; preds = %115
  %140 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %141 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @kfree(i32* %142)
  br label %144

144:                                              ; preds = %139, %45, %34
  %145 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %13, align 8
  %146 = getelementptr inbounds %struct.pqi_ofa_memory, %struct.pqi_ofa_memory* %145, i32 0, i32 0
  %147 = call i32 @put_unaligned_le32(i32 0, i32* %146)
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %144, %101
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_le64(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
