; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rf.c_RFbAL7230SelectChannelPostProcess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rf.c_RFbAL7230SelectChannelPostProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@CB_MAX_CHANNEL_24G = common dso_local global i64 0, align 8
@dwAL7230InitTableAMode = common dso_local global i32* null, align 8
@dwAL7230InitTable = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RFbAL7230SelectChannelPostProcess(%struct.vnt_private* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vnt_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %65

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %17 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %16, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %24 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %23, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %31 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %30, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %38 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 7
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %37, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %45 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 10
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %44, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %52 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 12
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %51, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %59 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 15
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %58, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %124

65:                                               ; preds = %11, %3
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %123

69:                                               ; preds = %65
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %123

73:                                               ; preds = %69
  %74 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %75 = load i32*, i32** @dwAL7230InitTable, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %74, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %82 = load i32*, i32** @dwAL7230InitTable, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %81, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %89 = load i32*, i32** @dwAL7230InitTable, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %88, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %96 = load i32*, i32** @dwAL7230InitTable, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %95, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %103 = load i32*, i32** @dwAL7230InitTable, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 10
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %102, i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %110 = load i32*, i32** @dwAL7230InitTable, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 12
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %109, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %7, align 4
  %116 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %117 = load i32*, i32** @dwAL7230InitTable, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 15
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %116, i32 %119)
  %121 = load i32, i32* %7, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %73, %69, %65
  br label %124

124:                                              ; preds = %123, %15
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @IFRFbWriteEmbedded(%struct.vnt_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
