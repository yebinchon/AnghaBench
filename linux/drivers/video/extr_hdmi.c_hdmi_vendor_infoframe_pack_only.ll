; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_vendor_infoframe_pack_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_vendor_infoframe_pack_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_vendor_infoframe = type { i64, i32, i32, i32, i32, i64 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_INVALID = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_vendor_infoframe_pack_only(%struct.hdmi_vendor_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_vendor_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.hdmi_vendor_infoframe* %0, %struct.hdmi_vendor_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %14 = call i32 @hdmi_vendor_infoframe_check_only(%struct.hdmi_vendor_infoframe* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %112

19:                                               ; preds = %3
  %20 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %21 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %22 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %20, %23
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOSPC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %112

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @memset(i8* %32, i32 0, i64 %33)
  %35 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %36 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %41 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %46 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 0, i32* %52, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32 3, i32* %54, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  store i32 12, i32* %56, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  store i32 0, i32* %58, align 4
  %59 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %60 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @HDMI_3D_STRUCTURE_INVALID, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %31
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 7
  store i32 64, i32* %66, align 4
  %67 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %68 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 15
  %71 = shl i32 %70, 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  store i32 %71, i32* %73, align 4
  %74 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %75 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %64
  %80 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %81 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 15
  %84 = shl i32 %83, 4
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 9
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %79, %64
  br label %106

88:                                               ; preds = %31
  %89 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %90 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 7
  store i32 32, i32* %95, align 4
  %96 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %97 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  store i32 %99, i32* %101, align 4
  br label %105

102:                                              ; preds = %88
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 7
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %93
  br label %106

106:                                              ; preds = %105, %87
  %107 = load i8*, i8** %6, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @hdmi_infoframe_set_checksum(i8* %107, i64 %108)
  %110 = load i64, i64* %9, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %106, %28, %17
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @hdmi_vendor_infoframe_check_only(%struct.hdmi_vendor_infoframe*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @hdmi_infoframe_set_checksum(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
