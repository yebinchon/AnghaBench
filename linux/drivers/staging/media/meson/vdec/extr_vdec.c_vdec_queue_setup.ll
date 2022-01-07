; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.amvdec_session = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @vdec_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.amvdec_session*, align 8
  %13 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %15 = call %struct.amvdec_session* @vb2_get_drv_priv(%struct.vb2_queue* %14)
  store %struct.amvdec_session* %15, %struct.amvdec_session** %12, align 8
  %16 = load %struct.amvdec_session*, %struct.amvdec_session** %12, align 8
  %17 = call i32 @amvdec_get_output_size(%struct.amvdec_session* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %101

21:                                               ; preds = %5
  %22 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %23 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %100 [
    i32 130, label %25
    i32 131, label %39
  ]

25:                                               ; preds = %21
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %149

38:                                               ; preds = %29
  br label %100

39:                                               ; preds = %21
  %40 = load %struct.amvdec_session*, %struct.amvdec_session** %12, align 8
  %41 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %92 [
    i32 129, label %43
    i32 128, label %64
  ]

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %13, align 4
  %58 = udiv i32 %57, 2
  %59 = icmp ult i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53, %47, %43
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %149

63:                                               ; preds = %53
  br label %95

64:                                               ; preds = %39
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 3
  br i1 %67, label %88, label %68

68:                                               ; preds = %64
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %88, label %74

74:                                               ; preds = %68
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = udiv i32 %78, 4
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %13, align 4
  %86 = udiv i32 %85, 4
  %87 = icmp ult i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %81, %74, %68, %64
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %149

91:                                               ; preds = %81
  br label %95

92:                                               ; preds = %39
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %149

95:                                               ; preds = %91, %63
  %96 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %97 = load %struct.amvdec_session*, %struct.amvdec_session** %12, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @process_num_buffers(%struct.vb2_queue* %96, %struct.amvdec_session* %97, i32* %98, i32 0)
  br label %100

100:                                              ; preds = %21, %95, %38
  store i32 0, i32* %6, align 4
  br label %149

101:                                              ; preds = %5
  %102 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %103 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %145 [
    i32 130, label %105
    i32 131, label %111
  ]

105:                                              ; preds = %101
  %106 = load %struct.amvdec_session*, %struct.amvdec_session** %12, align 8
  %107 = call i32 @amvdec_get_output_size(%struct.amvdec_session* %106)
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %9, align 8
  store i32 1, i32* %110, align 4
  br label %148

111:                                              ; preds = %101
  %112 = load %struct.amvdec_session*, %struct.amvdec_session** %12, align 8
  %113 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %137 [
    i32 129, label %115
    i32 128, label %124
  ]

115:                                              ; preds = %111
  %116 = load i32, i32* %13, align 4
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %13, align 4
  %120 = udiv i32 %119, 2
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  store i32 %120, i32* %122, align 4
  %123 = load i32*, i32** %9, align 8
  store i32 2, i32* %123, align 4
  br label %140

124:                                              ; preds = %111
  %125 = load i32, i32* %13, align 4
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %13, align 4
  %129 = udiv i32 %128, 4
  %130 = load i32*, i32** %10, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %13, align 4
  %133 = udiv i32 %132, 4
  %134 = load i32*, i32** %10, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 %133, i32* %135, align 4
  %136 = load i32*, i32** %9, align 8
  store i32 3, i32* %136, align 4
  br label %140

137:                                              ; preds = %111
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %149

140:                                              ; preds = %124, %115
  %141 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %142 = load %struct.amvdec_session*, %struct.amvdec_session** %12, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = call i32 @process_num_buffers(%struct.vb2_queue* %141, %struct.amvdec_session* %142, i32* %143, i32 1)
  br label %148

145:                                              ; preds = %101
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %6, align 4
  br label %149

148:                                              ; preds = %140, %105
  store i32 0, i32* %6, align 4
  br label %149

149:                                              ; preds = %148, %145, %137, %100, %92, %88, %60, %35
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local %struct.amvdec_session* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @amvdec_get_output_size(%struct.amvdec_session*) #1

declare dso_local i32 @process_num_buffers(%struct.vb2_queue*, %struct.amvdec_session*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
