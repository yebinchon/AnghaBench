; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_init_subnqn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_init_subnqn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_subsystem = type { i32 }
%struct.nvme_ctrl = type { i32, i64, i32 }
%struct.nvme_id_ctrl = type { i32, i32, i32, i32, i32 }

@NVME_QUIRK_IGNORE_DEV_SUBNQN = common dso_local global i32 0, align 4
@NVMF_NQN_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"missing or invalid SUBNQN field.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"nqn.2014.08.org.nvmexpress:%04x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_subsystem*, %struct.nvme_ctrl*, %struct.nvme_id_ctrl*)* @nvme_init_subnqn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_init_subnqn(%struct.nvme_subsystem* %0, %struct.nvme_ctrl* %1, %struct.nvme_id_ctrl* %2) #0 {
  %4 = alloca %struct.nvme_subsystem*, align 8
  %5 = alloca %struct.nvme_ctrl*, align 8
  %6 = alloca %struct.nvme_id_ctrl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nvme_subsystem* %0, %struct.nvme_subsystem** %4, align 8
  store %struct.nvme_ctrl* %1, %struct.nvme_ctrl** %5, align 8
  store %struct.nvme_id_ctrl* %2, %struct.nvme_id_ctrl** %6, align 8
  %9 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %10 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NVME_QUIRK_IGNORE_DEV_SUBNQN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %3
  %16 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %6, align 8
  %17 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* @NVMF_NQN_SIZE, align 8
  %20 = call i64 @strnlen(i32 %18, i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %15
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @NVMF_NQN_SIZE, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %4, align 8
  %29 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %6, align 8
  %32 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @NVMF_NQN_SIZE, align 8
  %35 = call i32 @strlcpy(i32 %30, i32 %33, i64 %34)
  br label %98

36:                                               ; preds = %23, %15
  %37 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %38 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @NVME_VS(i32 1, i32 2, i32 1)
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %44 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_warn(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %36
  br label %48

48:                                               ; preds = %47, %3
  %49 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* @NVMF_NQN_SIZE, align 8
  %53 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %6, align 8
  %54 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %6, align 8
  %58 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = call i32 @snprintf(i32 %51, i64 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %4, align 8
  %63 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %64, %65
  %67 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %6, align 8
  %68 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i32 %66, i32 %69, i32 4)
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %72, 4
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %8, align 4
  %75 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %4, align 8
  %76 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %77, %78
  %80 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %6, align 8
  %81 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @memcpy(i32 %79, i32 %82, i32 4)
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 4
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %4, align 8
  %89 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 4, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memset(i32 %92, i32 0, i32 %96)
  br label %98

98:                                               ; preds = %48, %27
  ret void
}

declare dso_local i64 @strnlen(i32, i64) #1

declare dso_local i32 @strlcpy(i32, i32, i64) #1

declare dso_local i64 @NVME_VS(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
