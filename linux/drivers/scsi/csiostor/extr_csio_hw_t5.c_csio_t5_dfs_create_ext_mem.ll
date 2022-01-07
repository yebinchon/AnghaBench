; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw_t5.c_csio_t5_dfs_create_ext_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw_t5.c_csio_t5_dfs_create_ext_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }

@MA_TARGET_MEM_ENABLE_A = common dso_local global i32 0, align 4
@EXT_MEM_ENABLE_F = common dso_local global i32 0, align 4
@MA_EXT_MEMORY_BAR_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mc0\00", align 1
@MEM_MC0 = common dso_local global i32 0, align 4
@EXT_MEM1_ENABLE_F = common dso_local global i32 0, align 4
@MA_EXT_MEMORY1_BAR_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"mc1\00", align 1
@MEM_MC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_t5_dfs_create_ext_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_t5_dfs_create_ext_mem(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %5 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %6 = load i32, i32* @MA_TARGET_MEM_ENABLE_A, align 4
  %7 = call i8* @csio_rd_reg32(%struct.csio_hw* %5, i32 %6)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EXT_MEM_ENABLE_F, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %15 = load i32, i32* @MA_EXT_MEMORY_BAR_A, align 4
  %16 = call i8* @csio_rd_reg32(%struct.csio_hw* %14, i32 %15)
  store i8* %16, i8** %3, align 8
  %17 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %18 = load i32, i32* @MEM_MC0, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @EXT_MEM_SIZE_G(i8* %19)
  %21 = call i32 @csio_add_debugfs_mem(%struct.csio_hw* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @EXT_MEM1_ENABLE_F, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %29 = load i32, i32* @MA_EXT_MEMORY1_BAR_A, align 4
  %30 = call i8* @csio_rd_reg32(%struct.csio_hw* %28, i32 %29)
  store i8* %30, i8** %3, align 8
  %31 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %32 = load i32, i32* @MEM_MC1, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @EXT_MEM_SIZE_G(i8* %33)
  %35 = call i32 @csio_add_debugfs_mem(%struct.csio_hw* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %27, %22
  ret void
}

declare dso_local i8* @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_add_debugfs_mem(%struct.csio_hw*, i8*, i32, i32) #1

declare dso_local i32 @EXT_MEM_SIZE_G(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
