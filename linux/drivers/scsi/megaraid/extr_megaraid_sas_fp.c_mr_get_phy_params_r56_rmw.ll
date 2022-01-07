; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_get_phy_params_r56_rmw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_get_phy_params_r56_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32 }
%struct.IO_REQUEST_INFO = type { i32 }
%struct.RAID_CONTEXT_G35 = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.MR_DRV_RAID_MAP_ALL = type { i32 }
%struct.MR_LD_RAID = type { i32, i32, i32, i32 }

@SPAN_INVALID = common dso_local global i32 0, align 4
@RAID_CTX_R56_P_ARM_SHIFT = common dso_local global i32 0, align 4
@RAID_CTX_R56_LOG_ARM_SHIFT = common dso_local global i32 0, align 4
@RAID_CTX_SPANARM_SPAN_SHIFT = common dso_local global i32 0, align 4
@MR_RAID_FLAGS_IO_SUB_TYPE_R56_DIV_OFFLOAD = common dso_local global i32 0, align 4
@MR_RAID_CTX_RAID_FLAGS_IO_SUB_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*, i32, i32, %struct.IO_REQUEST_INFO*, %struct.RAID_CONTEXT_G35*, %struct.MR_DRV_RAID_MAP_ALL*)* @mr_get_phy_params_r56_rmw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mr_get_phy_params_r56_rmw(%struct.megasas_instance* %0, i32 %1, i32 %2, %struct.IO_REQUEST_INFO* %3, %struct.RAID_CONTEXT_G35* %4, %struct.MR_DRV_RAID_MAP_ALL* %5) #0 {
  %7 = alloca %struct.megasas_instance*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.IO_REQUEST_INFO*, align 8
  %11 = alloca %struct.RAID_CONTEXT_G35*, align 8
  %12 = alloca %struct.MR_DRV_RAID_MAP_ALL*, align 8
  %13 = alloca %struct.MR_LD_RAID*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.IO_REQUEST_INFO* %3, %struct.IO_REQUEST_INFO** %10, align 8
  store %struct.RAID_CONTEXT_G35* %4, %struct.RAID_CONTEXT_G35** %11, align 8
  store %struct.MR_DRV_RAID_MAP_ALL* %5, %struct.MR_DRV_RAID_MAP_ALL** %12, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %12, align 8
  %25 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i32 %23, %struct.MR_DRV_RAID_MAP_ALL* %24)
  store %struct.MR_LD_RAID* %25, %struct.MR_LD_RAID** %13, align 8
  %26 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %10, align 8
  %27 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %26, i32 0, i32 0
  store i32* %27, i32** %22, align 8
  %28 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %13, align 8
  %29 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  %31 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %13, align 8
  %32 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @mega_div64_32(i32 %34, i32 %35)
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* %16, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %21, align 4
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @mega_mod64(i32 %39, i32 %40)
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @mega_mod64(i32 %43, i32 %44)
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %19, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %18, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @mega_mod64(i32 %49, i32 %50)
  store i32 %51, i32* %17, align 4
  %52 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %13, align 8
  %53 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %69

57:                                               ; preds = %6
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %21, align 4
  %60 = load i32*, i32** %22, align 8
  %61 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %12, align 8
  %62 = call i64 @MR_GetSpanBlock(i32 %58, i32 %59, i32* %60, %struct.MR_DRV_RAID_MAP_ALL* %61)
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @SPAN_INVALID, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %138

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %56
  %70 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %13, align 8
  %71 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 6
  br i1 %73, label %74, label %100

74:                                               ; preds = %69
  %75 = load i32, i32* %16, align 4
  %76 = sub nsw i32 %75, 2
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @mega_mod64(i32 %77, i32 %78)
  %80 = sub nsw i32 %76, %79
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* %20, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %20, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %20, align 4
  br label %87

87:                                               ; preds = %83, %74
  %88 = load i32, i32* %19, align 4
  %89 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %11, align 8
  %90 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* @RAID_CTX_R56_P_ARM_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %11, align 8
  %96 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 4
  br label %109

100:                                              ; preds = %69
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* @RAID_CTX_R56_P_ARM_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %11, align 8
  %105 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %103
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %100, %87
  %110 = load i32, i32* %21, align 4
  %111 = call i32 @cpu_to_le64(i32 %110)
  %112 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %11, align 8
  %113 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* @RAID_CTX_R56_LOG_ARM_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %11, align 8
  %118 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 4
  %122 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %11, align 8
  %123 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = call i32 @cpu_to_le16s(i32* %124)
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @RAID_CTX_SPANARM_SPAN_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = load i32, i32* %17, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %11, align 8
  %132 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @MR_RAID_FLAGS_IO_SUB_TYPE_R56_DIV_OFFLOAD, align 4
  %134 = load i32, i32* @MR_RAID_CTX_RAID_FLAGS_IO_SUB_TYPE_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %11, align 8
  %137 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %109, %67
  ret void
}

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @mega_div64_32(i32, i32) #1

declare dso_local i32 @mega_mod64(i32, i32) #1

declare dso_local i64 @MR_GetSpanBlock(i32, i32, i32*, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le16s(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
