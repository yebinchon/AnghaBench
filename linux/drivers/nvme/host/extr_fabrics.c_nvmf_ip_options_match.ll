; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_ip_options_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_ip_options_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.nvmf_ctrl_options = type { i32, i32, i32, i32 }

@NVMF_OPT_HOST_TRADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmf_ip_options_match(%struct.nvme_ctrl* %0, %struct.nvmf_ctrl_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca %struct.nvmf_ctrl_options*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store %struct.nvmf_ctrl_options* %1, %struct.nvmf_ctrl_options** %5, align 8
  %6 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %7 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %8 = call i32 @nvmf_ctlr_matches_baseopts(%struct.nvme_ctrl* %6, %struct.nvmf_ctrl_options* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %12 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %15 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strcmp(i32 %13, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %10
  %22 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %23 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %26 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strcmp(i32 %24, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21, %10, %2
  store i32 0, i32* %3, align 4
  br label %81

33:                                               ; preds = %21
  %34 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %35 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NVMF_OPT_HOST_TRADDR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %33
  %41 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %42 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NVMF_OPT_HOST_TRADDR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %40
  %50 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %51 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %54 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @strcmp(i32 %52, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %81

61:                                               ; preds = %49
  br label %80

62:                                               ; preds = %40, %33
  %63 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %64 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NVMF_OPT_HOST_TRADDR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %62
  %70 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %71 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NVMF_OPT_HOST_TRADDR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69, %62
  store i32 0, i32* %3, align 4
  br label %81

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %61
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %78, %60, %32
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @nvmf_ctlr_matches_baseopts(%struct.nvme_ctrl*, %struct.nvmf_ctrl_options*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
