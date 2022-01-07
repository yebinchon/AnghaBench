; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_unsolicited_frame_control.c_sci_unsolicited_frame_control_release_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_unsolicited_frame_control.c_sci_unsolicited_frame_control_release_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_unsolicited_frame_control = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32* }

@SCU_MAX_UNSOLICITED_FRAMES = common dso_local global i32 0, align 4
@UNSOLICITED_FRAME_RELEASED = common dso_local global i64 0, align 8
@UNSOLICITED_FRAME_EMPTY = common dso_local global i64 0, align 8
@ENABLE_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sci_unsolicited_frame_control_release_frame(%struct.sci_unsolicited_frame_control* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sci_unsolicited_frame_control*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sci_unsolicited_frame_control* %0, %struct.sci_unsolicited_frame_control** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %4, align 8
  %9 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SCU_MAX_UNSOLICITED_FRAMES, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %4, align 8
  %16 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SCU_MAX_UNSOLICITED_FRAMES, align 4
  %19 = and i32 %17, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %48, %2
  %22 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %4, align 8
  %23 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @lower_32_bits(i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %21
  %32 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %4, align 8
  %33 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @upper_32_bits(i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* @SCU_MAX_UNSOLICITED_FRAMES, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br label %46

46:                                               ; preds = %41, %31, %21
  %47 = phi i1 [ false, %31 ], [ false, %21 ], [ %45, %41 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %21

51:                                               ; preds = %46
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* @SCU_MAX_UNSOLICITED_FRAMES, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp uge i64 %52, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load i64, i64* %5, align 8
  %59 = load i32, i32* @SCU_MAX_UNSOLICITED_FRAMES, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp uge i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %122

63:                                               ; preds = %51
  %64 = load i64, i64* @UNSOLICITED_FRAME_RELEASED, align 8
  %65 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %4, align 8
  %66 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i64 %64, i64* %71, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %5, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %122

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %111, %76
  %78 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %4, align 8
  %79 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @UNSOLICITED_FRAME_RELEASED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %77
  %89 = load i64, i64* @UNSOLICITED_FRAME_EMPTY, align 8
  %90 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %4, align 8
  %91 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i64 %89, i64* %96, align 8
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, 1
  %99 = load i32, i32* @SCU_MAX_UNSOLICITED_FRAMES, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %88
  %104 = load i32, i32* @SCU_MAX_UNSOLICITED_FRAMES, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %7, align 8
  %107 = xor i64 %106, %105
  store i64 %107, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %111

108:                                              ; preds = %88
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %111

111:                                              ; preds = %108, %103
  br label %77

112:                                              ; preds = %77
  %113 = load i32, i32* @ENABLE_BIT, align 4
  %114 = call i64 @SCU_UFQGP_GEN_BIT(i32 %113)
  %115 = load i64, i64* %7, align 8
  %116 = or i64 %114, %115
  %117 = load i64, i64* %6, align 8
  %118 = or i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %4, align 8
  %121 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %112, %75, %62
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @lower_32_bits(i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @SCU_UFQGP_GEN_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
