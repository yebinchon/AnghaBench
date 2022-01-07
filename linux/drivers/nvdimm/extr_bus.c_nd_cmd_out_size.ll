; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_cmd_out_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_cmd_out_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { i32 }
%struct.nd_cmd_desc = type { i32, i64* }
%struct.nd_cmd_pkg = type { i64 }

@UINT_MAX = common dso_local global i64 0, align 8
@ND_CMD_GET_CONFIG_DATA = common dso_local global i32 0, align 4
@ND_CMD_VENDOR = common dso_local global i32 0, align 4
@ND_CMD_ARS_STATUS = common dso_local global i32 0, align 4
@ND_CMD_CALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nd_cmd_out_size(%struct.nvdimm* %0, i32 %1, %struct.nd_cmd_desc* %2, i32 %3, i64* %4, i64* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.nvdimm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nd_cmd_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.nd_cmd_pkg*, align 8
  store %struct.nvdimm* %0, %struct.nvdimm** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.nd_cmd_desc* %2, %struct.nd_cmd_desc** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.nd_cmd_desc*, %struct.nd_cmd_desc** %11, align 8
  %19 = getelementptr inbounds %struct.nd_cmd_desc, %struct.nd_cmd_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i64, i64* @UINT_MAX, align 8
  store i64 %23, i64* %8, align 8
  br label %115

24:                                               ; preds = %7
  %25 = load %struct.nd_cmd_desc*, %struct.nd_cmd_desc** %11, align 8
  %26 = getelementptr inbounds %struct.nd_cmd_desc, %struct.nd_cmd_desc* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UINT_MAX, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load %struct.nd_cmd_desc*, %struct.nd_cmd_desc** %11, align 8
  %36 = getelementptr inbounds %struct.nd_cmd_desc, %struct.nd_cmd_desc* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  br label %115

42:                                               ; preds = %24
  %43 = load %struct.nvdimm*, %struct.nvdimm** %9, align 8
  %44 = icmp ne %struct.nvdimm* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @ND_CMD_GET_CONFIG_DATA, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64*, i64** %13, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  br label %115

56:                                               ; preds = %49, %45, %42
  %57 = load %struct.nvdimm*, %struct.nvdimm** %9, align 8
  %58 = icmp ne %struct.nvdimm* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @ND_CMD_VENDOR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i64*, i64** %14, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %8, align 8
  br label %115

70:                                               ; preds = %63, %59, %56
  %71 = load %struct.nvdimm*, %struct.nvdimm** %9, align 8
  %72 = icmp ne %struct.nvdimm* %71, null
  br i1 %72, label %100, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @ND_CMD_ARS_STATUS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %73
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = load i64*, i64** %14, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %83, 4
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i64 0, i64* %8, align 8
  br label %115

86:                                               ; preds = %80
  %87 = load i64*, i64** %14, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, 4
  %91 = load i64, i64* %15, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i64, i64* %15, align 8
  store i64 %94, i64* %8, align 8
  br label %115

95:                                               ; preds = %86
  %96 = load i64*, i64** %14, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 8
  store i64 %99, i64* %8, align 8
  br label %115

100:                                              ; preds = %77, %73, %70
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @ND_CMD_CALL, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i64*, i64** %13, align 8
  %106 = bitcast i64* %105 to %struct.nd_cmd_pkg*
  store %struct.nd_cmd_pkg* %106, %struct.nd_cmd_pkg** %16, align 8
  %107 = load %struct.nd_cmd_pkg*, %struct.nd_cmd_pkg** %16, align 8
  %108 = getelementptr inbounds %struct.nd_cmd_pkg, %struct.nd_cmd_pkg* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %8, align 8
  br label %115

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* @UINT_MAX, align 8
  store i64 %114, i64* %8, align 8
  br label %115

115:                                              ; preds = %113, %104, %95, %93, %85, %66, %52, %34, %22
  %116 = load i64, i64* %8, align 8
  ret i64 %116
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
