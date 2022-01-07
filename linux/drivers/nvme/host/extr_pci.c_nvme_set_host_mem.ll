; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_set_host_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_set_host_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.nvme_command = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@nvme_admin_set_features = common dso_local global i32 0, align 4
@NVME_FEAT_HOST_MEM_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to set host mem (err %d, flags %#x).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, i32)* @nvme_set_host_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_set_host_mem(%struct.nvme_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_command, align 8
  %7 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i32 @memset(%struct.nvme_command* %6, i32 0, i32 56)
  %12 = load i32, i32* @nvme_admin_set_features, align 4
  %13 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %6, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @NVME_FEAT_HOST_MEM_BUF, align 4
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %24 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %27 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ilog2(i32 %29)
  %31 = ashr i32 %25, %30
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %6, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @lower_32_bits(i32 %35)
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @upper_32_bits(i32 %40)
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %6, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %46 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %6, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %52 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nvme_submit_sync_cmd(i32 %54, %struct.nvme_command* %6, i32* null, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %2
  %59 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %60 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @dev_warn(i32 %62, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %58, %2
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @nvme_submit_sync_cmd(i32, %struct.nvme_command*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
