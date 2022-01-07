; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_rbsp_hrd_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_rbsp_hrd_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbsp = type { i32 }
%struct.nal_h264_hrd_parameters = type { i32, i32*, i32*, i32, i32, i32, i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbsp*, %struct.nal_h264_hrd_parameters*)* @nal_h264_rbsp_hrd_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nal_h264_rbsp_hrd_parameters(%struct.rbsp* %0, %struct.nal_h264_hrd_parameters* %1) #0 {
  %3 = alloca %struct.rbsp*, align 8
  %4 = alloca %struct.nal_h264_hrd_parameters*, align 8
  %5 = alloca i32, align 4
  store %struct.rbsp* %0, %struct.rbsp** %3, align 8
  store %struct.nal_h264_hrd_parameters* %1, %struct.nal_h264_hrd_parameters** %4, align 8
  %6 = load %struct.nal_h264_hrd_parameters*, %struct.nal_h264_hrd_parameters** %4, align 8
  %7 = icmp ne %struct.nal_h264_hrd_parameters* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %12 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  br label %77

13:                                               ; preds = %2
  %14 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %15 = load %struct.nal_h264_hrd_parameters*, %struct.nal_h264_hrd_parameters** %4, align 8
  %16 = getelementptr inbounds %struct.nal_h264_hrd_parameters, %struct.nal_h264_hrd_parameters* %15, i32 0, i32 0
  %17 = call i32 @rbsp_uev(%struct.rbsp* %14, i32* %16)
  %18 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %19 = load %struct.nal_h264_hrd_parameters*, %struct.nal_h264_hrd_parameters** %4, align 8
  %20 = getelementptr inbounds %struct.nal_h264_hrd_parameters, %struct.nal_h264_hrd_parameters* %19, i32 0, i32 9
  %21 = call i32 @rbsp_bits(%struct.rbsp* %18, i32 4, i32* %20)
  %22 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %23 = load %struct.nal_h264_hrd_parameters*, %struct.nal_h264_hrd_parameters** %4, align 8
  %24 = getelementptr inbounds %struct.nal_h264_hrd_parameters, %struct.nal_h264_hrd_parameters* %23, i32 0, i32 8
  %25 = call i32 @rbsp_bits(%struct.rbsp* %22, i32 4, i32* %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %57, %13
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.nal_h264_hrd_parameters*, %struct.nal_h264_hrd_parameters** %4, align 8
  %29 = getelementptr inbounds %struct.nal_h264_hrd_parameters, %struct.nal_h264_hrd_parameters* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ule i32 %27, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %26
  %33 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %34 = load %struct.nal_h264_hrd_parameters*, %struct.nal_h264_hrd_parameters** %4, align 8
  %35 = getelementptr inbounds %struct.nal_h264_hrd_parameters, %struct.nal_h264_hrd_parameters* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @rbsp_uev(%struct.rbsp* %33, i32* %39)
  %41 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %42 = load %struct.nal_h264_hrd_parameters*, %struct.nal_h264_hrd_parameters** %4, align 8
  %43 = getelementptr inbounds %struct.nal_h264_hrd_parameters, %struct.nal_h264_hrd_parameters* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @rbsp_uev(%struct.rbsp* %41, i32* %47)
  %49 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %50 = load %struct.nal_h264_hrd_parameters*, %struct.nal_h264_hrd_parameters** %4, align 8
  %51 = getelementptr inbounds %struct.nal_h264_hrd_parameters, %struct.nal_h264_hrd_parameters* %50, i32 0, i32 7
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @rbsp_bit(%struct.rbsp* %49, i32* %55)
  br label %57

57:                                               ; preds = %32
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %26

60:                                               ; preds = %26
  %61 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %62 = load %struct.nal_h264_hrd_parameters*, %struct.nal_h264_hrd_parameters** %4, align 8
  %63 = getelementptr inbounds %struct.nal_h264_hrd_parameters, %struct.nal_h264_hrd_parameters* %62, i32 0, i32 6
  %64 = call i32 @rbsp_bits(%struct.rbsp* %61, i32 5, i32* %63)
  %65 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %66 = load %struct.nal_h264_hrd_parameters*, %struct.nal_h264_hrd_parameters** %4, align 8
  %67 = getelementptr inbounds %struct.nal_h264_hrd_parameters, %struct.nal_h264_hrd_parameters* %66, i32 0, i32 5
  %68 = call i32 @rbsp_bits(%struct.rbsp* %65, i32 5, i32* %67)
  %69 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %70 = load %struct.nal_h264_hrd_parameters*, %struct.nal_h264_hrd_parameters** %4, align 8
  %71 = getelementptr inbounds %struct.nal_h264_hrd_parameters, %struct.nal_h264_hrd_parameters* %70, i32 0, i32 4
  %72 = call i32 @rbsp_bits(%struct.rbsp* %69, i32 5, i32* %71)
  %73 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %74 = load %struct.nal_h264_hrd_parameters*, %struct.nal_h264_hrd_parameters** %4, align 8
  %75 = getelementptr inbounds %struct.nal_h264_hrd_parameters, %struct.nal_h264_hrd_parameters* %74, i32 0, i32 3
  %76 = call i32 @rbsp_bits(%struct.rbsp* %73, i32 5, i32* %75)
  br label %77

77:                                               ; preds = %60, %8
  ret void
}

declare dso_local i32 @rbsp_uev(%struct.rbsp*, i32*) #1

declare dso_local i32 @rbsp_bits(%struct.rbsp*, i32, i32*) #1

declare dso_local i32 @rbsp_bit(%struct.rbsp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
