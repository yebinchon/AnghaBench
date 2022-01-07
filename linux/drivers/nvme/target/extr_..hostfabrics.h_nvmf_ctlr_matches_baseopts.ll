; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_..hostfabrics.h_nvmf_ctlr_matches_baseopts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_..hostfabrics.h_nvmf_ctlr_matches_baseopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nvmf_ctrl_options = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@NVME_CTRL_DELETING = common dso_local global i64 0, align 8
@NVME_CTRL_DEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, %struct.nvmf_ctrl_options*)* @nvmf_ctlr_matches_baseopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmf_ctlr_matches_baseopts(%struct.nvme_ctrl* %0, %struct.nvmf_ctrl_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca %struct.nvmf_ctrl_options*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store %struct.nvmf_ctrl_options* %1, %struct.nvmf_ctrl_options** %5, align 8
  %6 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %7 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NVME_CTRL_DELETING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %56, label %11

11:                                               ; preds = %2
  %12 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NVME_CTRL_DEAD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %56, label %17

17:                                               ; preds = %11
  %18 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %19 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @strcmp(i32 %20, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %17
  %29 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %30 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %35 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @strcmp(i32 %33, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %28
  %44 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %45 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %49 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i64 @memcmp(i32* %47, i32* %53, i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43, %28, %17, %11, %2
  store i32 0, i32* %3, align 4
  br label %58

57:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
