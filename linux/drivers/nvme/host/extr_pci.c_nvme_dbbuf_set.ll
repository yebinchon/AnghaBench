; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_dbbuf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_dbbuf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nvme_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i32 }

@nvme_admin_dbbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unable to set dbbuf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_dev*)* @nvme_dbbuf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_dbbuf_set(%struct.nvme_dev* %0) #0 {
  %2 = alloca %struct.nvme_dev*, align 8
  %3 = alloca %struct.nvme_command, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %2, align 8
  %4 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  %10 = call i32 @memset(%struct.nvme_command* %3, i32 0, i32 24)
  %11 = load i32, i32* @nvme_admin_dbbuf, align 4
  %12 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %3, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %15 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @cpu_to_le64(i32 %16)
  %18 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %3, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %21 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_le64(i32 %22)
  %24 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %3, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %27 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @nvme_submit_sync_cmd(i32 %29, %struct.nvme_command* %3, i32* null, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %9
  %33 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %34 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_warn(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %39 = call i32 @nvme_dbbuf_dma_free(%struct.nvme_dev* %38)
  br label %40

40:                                               ; preds = %8, %32, %9
  ret void
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @nvme_submit_sync_cmd(i32, %struct.nvme_command*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @nvme_dbbuf_dma_free(%struct.nvme_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
