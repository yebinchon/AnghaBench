; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_drm_infoframe_pack_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_drm_infoframe_pack_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_drm_infoframe = type { i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdmi_drm_infoframe_pack_only(%struct.hdmi_drm_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hdmi_drm_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.hdmi_drm_infoframe* %0, %struct.hdmi_drm_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %8, align 8
  %13 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %14 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %15 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64, i64* @ENOSPC, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %200

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @memset(i8* %25, i32 0, i64 %26)
  %28 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %29 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %34 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %39 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  store i64 %40, i64* %42, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 3
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 %45
  store i64* %47, i64** %8, align 8
  %48 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %49 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64*, i64** %8, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %8, align 8
  store i64 %51, i64* %52, align 8
  %54 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %55 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load i64*, i64** %8, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %8, align 8
  store i64 %57, i64* %58, align 8
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %110, %24
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 3
  br i1 %62, label %63, label %113

63:                                               ; preds = %60
  %64 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %65 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %64, i32 0, i32 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64*, i64** %8, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %8, align 8
  store i64 %72, i64* %73, align 8
  %75 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %76 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %75, i32 0, i32 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 8
  %84 = sext i32 %83 to i64
  %85 = load i64*, i64** %8, align 8
  %86 = getelementptr inbounds i64, i64* %85, i32 1
  store i64* %86, i64** %8, align 8
  store i64 %84, i64* %85, align 8
  %87 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %88 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %87, i32 0, i32 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64*, i64** %8, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %8, align 8
  store i64 %95, i64* %96, align 8
  %98 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %99 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %98, i32 0, i32 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 8
  %107 = sext i32 %106 to i64
  %108 = load i64*, i64** %8, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %8, align 8
  store i64 %107, i64* %108, align 8
  br label %110

110:                                              ; preds = %63
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %60

113:                                              ; preds = %60
  %114 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %115 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = load i64*, i64** %8, align 8
  %120 = getelementptr inbounds i64, i64* %119, i32 1
  store i64* %120, i64** %8, align 8
  store i64 %118, i64* %119, align 8
  %121 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %122 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %124, 8
  %126 = sext i32 %125 to i64
  %127 = load i64*, i64** %8, align 8
  %128 = getelementptr inbounds i64, i64* %127, i32 1
  store i64* %128, i64** %8, align 8
  store i64 %126, i64* %127, align 8
  %129 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %130 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64*, i64** %8, align 8
  %135 = getelementptr inbounds i64, i64* %134, i32 1
  store i64* %135, i64** %8, align 8
  store i64 %133, i64* %134, align 8
  %136 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %137 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %136, i32 0, i32 7
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 8
  %141 = sext i32 %140 to i64
  %142 = load i64*, i64** %8, align 8
  %143 = getelementptr inbounds i64, i64* %142, i32 1
  store i64* %143, i64** %8, align 8
  store i64 %141, i64* %142, align 8
  %144 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %145 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = load i64*, i64** %8, align 8
  %149 = getelementptr inbounds i64, i64* %148, i32 1
  store i64* %149, i64** %8, align 8
  store i64 %147, i64* %148, align 8
  %150 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %151 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = ashr i32 %152, 8
  %154 = sext i32 %153 to i64
  %155 = load i64*, i64** %8, align 8
  %156 = getelementptr inbounds i64, i64* %155, i32 1
  store i64* %156, i64** %8, align 8
  store i64 %154, i64* %155, align 8
  %157 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %158 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64*, i64** %8, align 8
  %162 = getelementptr inbounds i64, i64* %161, i32 1
  store i64* %162, i64** %8, align 8
  store i64 %160, i64* %161, align 8
  %163 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %164 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = ashr i32 %165, 8
  %167 = sext i32 %166 to i64
  %168 = load i64*, i64** %8, align 8
  %169 = getelementptr inbounds i64, i64* %168, i32 1
  store i64* %169, i64** %8, align 8
  store i64 %167, i64* %168, align 8
  %170 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %171 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = load i64*, i64** %8, align 8
  %175 = getelementptr inbounds i64, i64* %174, i32 1
  store i64* %175, i64** %8, align 8
  store i64 %173, i64* %174, align 8
  %176 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %177 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = ashr i32 %178, 8
  %180 = sext i32 %179 to i64
  %181 = load i64*, i64** %8, align 8
  %182 = getelementptr inbounds i64, i64* %181, i32 1
  store i64* %182, i64** %8, align 8
  store i64 %180, i64* %181, align 8
  %183 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %184 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64*, i64** %8, align 8
  %188 = getelementptr inbounds i64, i64* %187, i32 1
  store i64* %188, i64** %8, align 8
  store i64 %186, i64* %187, align 8
  %189 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %190 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = ashr i32 %191, 8
  %193 = sext i32 %192 to i64
  %194 = load i64*, i64** %8, align 8
  %195 = getelementptr inbounds i64, i64* %194, i32 1
  store i64* %195, i64** %8, align 8
  store i64 %193, i64* %194, align 8
  %196 = load i8*, i8** %6, align 8
  %197 = load i64, i64* %9, align 8
  %198 = call i32 @hdmi_infoframe_set_checksum(i8* %196, i64 %197)
  %199 = load i64, i64* %9, align 8
  store i64 %199, i64* %4, align 8
  br label %200

200:                                              ; preds = %113, %21
  %201 = load i64, i64* %4, align 8
  ret i64 %201
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @hdmi_infoframe_set_checksum(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
