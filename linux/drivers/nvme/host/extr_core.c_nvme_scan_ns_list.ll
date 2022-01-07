; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_scan_ns_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_scan_ns_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_ns = type { i32 }

@NVME_IDENTIFY_DATA_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, i32)* @nvme_scan_ns_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_scan_ns_list(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @DIV_ROUND_UP_ULL(i32 %14, i32 1024)
  store i32 %15, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* @NVME_IDENTIFY_DATA_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kzalloc(i32 %16, i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %94

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %82, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %25
  %30 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @nvme_identify_ns_list(%struct.nvme_ctrl* %30, i32 %31, i32* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %90

37:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %75, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @min(i32 %40, i32 1024)
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %38
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %86

53:                                               ; preds = %43
  %54 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @nvme_validate_ns(%struct.nvme_ctrl* %54, i32 %55)
  br label %57

57:                                               ; preds = %73, %53
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call %struct.nvme_ns* @nvme_find_get_ns(%struct.nvme_ctrl* %63, i32 %64)
  store %struct.nvme_ns* %65, %struct.nvme_ns** %6, align 8
  %66 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %67 = icmp ne %struct.nvme_ns* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %70 = call i32 @nvme_ns_remove(%struct.nvme_ns* %69)
  %71 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %72 = call i32 @nvme_put_ns(%struct.nvme_ns* %71)
  br label %73

73:                                               ; preds = %68, %62
  br label %57

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %38

78:                                               ; preds = %38
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sub i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %25

85:                                               ; preds = %25
  br label %86

86:                                               ; preds = %85, %52
  %87 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @nvme_remove_invalid_namespaces(%struct.nvme_ctrl* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %36
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @kfree(i32* %91)
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %21
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @nvme_identify_ns_list(%struct.nvme_ctrl*, i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @nvme_validate_ns(%struct.nvme_ctrl*, i32) #1

declare dso_local %struct.nvme_ns* @nvme_find_get_ns(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @nvme_ns_remove(%struct.nvme_ns*) #1

declare dso_local i32 @nvme_put_ns(%struct.nvme_ns*) #1

declare dso_local i32 @nvme_remove_invalid_namespaces(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
