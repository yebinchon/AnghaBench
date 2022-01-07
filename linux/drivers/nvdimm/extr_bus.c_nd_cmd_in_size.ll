; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_cmd_in_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_cmd_in_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { i32 }
%struct.nd_cmd_desc = type { i32, i64* }
%struct.nd_cmd_set_config_hdr = type { i64 }
%struct.nd_cmd_vendor_hdr = type { i64 }
%struct.nd_cmd_pkg = type { i64 }

@UINT_MAX = common dso_local global i64 0, align 8
@ND_CMD_SET_CONFIG_DATA = common dso_local global i32 0, align 4
@ND_CMD_VENDOR = common dso_local global i32 0, align 4
@ND_CMD_CALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nd_cmd_in_size(%struct.nvdimm* %0, i32 %1, %struct.nd_cmd_desc* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvdimm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nd_cmd_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nd_cmd_set_config_hdr*, align 8
  %13 = alloca %struct.nd_cmd_vendor_hdr*, align 8
  %14 = alloca %struct.nd_cmd_pkg*, align 8
  store %struct.nvdimm* %0, %struct.nvdimm** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.nd_cmd_desc* %2, %struct.nd_cmd_desc** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.nd_cmd_desc*, %struct.nd_cmd_desc** %9, align 8
  %17 = getelementptr inbounds %struct.nd_cmd_desc, %struct.nd_cmd_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i64, i64* @UINT_MAX, align 8
  store i64 %21, i64* %6, align 8
  br label %86

22:                                               ; preds = %5
  %23 = load %struct.nd_cmd_desc*, %struct.nd_cmd_desc** %9, align 8
  %24 = getelementptr inbounds %struct.nd_cmd_desc, %struct.nd_cmd_desc* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @UINT_MAX, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load %struct.nd_cmd_desc*, %struct.nd_cmd_desc** %9, align 8
  %34 = getelementptr inbounds %struct.nd_cmd_desc, %struct.nd_cmd_desc* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  br label %86

40:                                               ; preds = %22
  %41 = load %struct.nvdimm*, %struct.nvdimm** %7, align 8
  %42 = icmp ne %struct.nvdimm* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @ND_CMD_SET_CONFIG_DATA, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i8*, i8** %11, align 8
  %52 = bitcast i8* %51 to %struct.nd_cmd_set_config_hdr*
  store %struct.nd_cmd_set_config_hdr* %52, %struct.nd_cmd_set_config_hdr** %12, align 8
  %53 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %12, align 8
  %54 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  br label %86

56:                                               ; preds = %47, %43, %40
  %57 = load %struct.nvdimm*, %struct.nvdimm** %7, align 8
  %58 = icmp ne %struct.nvdimm* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @ND_CMD_VENDOR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i8*, i8** %11, align 8
  %68 = bitcast i8* %67 to %struct.nd_cmd_vendor_hdr*
  store %struct.nd_cmd_vendor_hdr* %68, %struct.nd_cmd_vendor_hdr** %13, align 8
  %69 = load %struct.nd_cmd_vendor_hdr*, %struct.nd_cmd_vendor_hdr** %13, align 8
  %70 = getelementptr inbounds %struct.nd_cmd_vendor_hdr, %struct.nd_cmd_vendor_hdr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %6, align 8
  br label %86

72:                                               ; preds = %63, %59, %56
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @ND_CMD_CALL, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i8*, i8** %11, align 8
  %78 = bitcast i8* %77 to %struct.nd_cmd_pkg*
  store %struct.nd_cmd_pkg* %78, %struct.nd_cmd_pkg** %14, align 8
  %79 = load %struct.nd_cmd_pkg*, %struct.nd_cmd_pkg** %14, align 8
  %80 = getelementptr inbounds %struct.nd_cmd_pkg, %struct.nd_cmd_pkg* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %6, align 8
  br label %86

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* @UINT_MAX, align 8
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %84, %76, %66, %50, %32, %20
  %87 = load i64, i64* %6, align 8
  ret i64 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
