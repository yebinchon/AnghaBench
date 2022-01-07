; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_setup_write_zeroes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_setup_write_zeroes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.request = type { i32 }
%struct.nvme_command = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }

@NVME_QUIRK_DEALLOCATE_ZEROES = common dso_local global i32 0, align 4
@nvme_cmd_write_zeroes = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.request*, %struct.nvme_command*)* @nvme_setup_write_zeroes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_setup_write_zeroes(%struct.nvme_ns* %0, %struct.request* %1, %struct.nvme_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.nvme_command*, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.nvme_command* %2, %struct.nvme_command** %7, align 8
  %8 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %9 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NVME_QUIRK_DEALLOCATE_ZEROES, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %18 = load %struct.request*, %struct.request** %6, align 8
  %19 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %20 = call i32 @nvme_setup_discard(%struct.nvme_ns* %17, %struct.request* %18, %struct.nvme_command* %19)
  store i32 %20, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load i32, i32* @nvme_cmd_write_zeroes, align 4
  %23 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %24 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 4
  %26 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %27 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %33 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 8
  %35 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %36 = load %struct.request*, %struct.request** %6, align 8
  %37 = call i32 @blk_rq_pos(%struct.request* %36)
  %38 = call i32 @nvme_block_nr(%struct.nvme_ns* %35, i32 %37)
  %39 = call i32 @cpu_to_le64(i32 %38)
  %40 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %41 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 4
  %43 = load %struct.request*, %struct.request** %6, align 8
  %44 = call i32 @blk_rq_bytes(%struct.request* %43)
  %45 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %46 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = ashr i32 %44, %47
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @cpu_to_le16(i32 %49)
  %51 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %52 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %55 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %21, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @nvme_setup_discard(%struct.nvme_ns*, %struct.request*, %struct.nvme_command*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nvme_block_nr(%struct.nvme_ns*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
