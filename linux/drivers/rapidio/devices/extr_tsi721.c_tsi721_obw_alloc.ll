; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_obw_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_obw_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { i32, %struct.TYPE_2__*, %struct.tsi721_ob_win* }
%struct.TYPE_2__ = type { i32 }
%struct.tsi721_ob_win = type { i32, i64, i64, %struct.tsi721_obw_bar* }
%struct.tsi721_obw_bar = type { i64, i64, i32 }

@TSI721_PC2SR_ZONES = common dso_local global i64 0, align 8
@TSI721_IBWIN_NUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"OBW count tracking failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsi721_device*, %struct.tsi721_obw_bar*, i64, i32*)* @tsi721_obw_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_obw_alloc(%struct.tsi721_device* %0, %struct.tsi721_obw_bar* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tsi721_device*, align 8
  %7 = alloca %struct.tsi721_obw_bar*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tsi721_ob_win*, align 8
  %15 = alloca %struct.tsi721_ob_win*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.tsi721_device* %0, %struct.tsi721_device** %6, align 8
  store %struct.tsi721_obw_bar* %1, %struct.tsi721_obw_bar** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.tsi721_ob_win* null, %struct.tsi721_ob_win** %15, align 8
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.tsi721_obw_bar*, %struct.tsi721_obw_bar** %7, align 8
  %19 = getelementptr inbounds %struct.tsi721_obw_bar, %struct.tsi721_obw_bar* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.tsi721_obw_bar*, %struct.tsi721_obw_bar** %7, align 8
  %23 = getelementptr inbounds %struct.tsi721_obw_bar, %struct.tsi721_obw_bar* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @TSI721_PC2SR_ZONES, align 8
  %29 = sdiv i64 %27, %28
  store i64 %29, i64* %13, align 8
  br label %30

30:                                               ; preds = %113, %4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* @TSI721_IBWIN_NUM, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %114

34:                                               ; preds = %30
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %110, %34
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* @TSI721_IBWIN_NUM, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %113

39:                                               ; preds = %35
  %40 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %41 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %40, i32 0, i32 2
  %42 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %41, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %42, i64 %44
  %46 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %39
  %50 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %15, align 8
  %51 = icmp eq %struct.tsi721_ob_win* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %54 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %53, i32 0, i32 2
  %55 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %54, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %55, i64 %57
  store %struct.tsi721_ob_win* %58, %struct.tsi721_ob_win** %15, align 8
  %59 = load i32, i32* %17, align 4
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %52, %49
  br label %110

61:                                               ; preds = %39
  %62 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %63 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %62, i32 0, i32 2
  %64 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %64, i64 %66
  store %struct.tsi721_ob_win* %67, %struct.tsi721_ob_win** %14, align 8
  %68 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %14, align 8
  %69 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %61
  %74 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %14, align 8
  %75 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %109

79:                                               ; preds = %73
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %14, align 8
  %82 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %14, align 8
  %85 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = icmp slt i64 %80, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %79
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %8, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %14, align 8
  %94 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %89
  %98 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %14, align 8
  %99 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %14, align 8
  %102 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i64 @ALIGN(i64 %105, i64 %106)
  store i64 %107, i64* %10, align 8
  br label %113

108:                                              ; preds = %89, %79
  br label %109

109:                                              ; preds = %108, %73, %61
  br label %110

110:                                              ; preds = %109, %60
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %17, align 4
  br label %35

113:                                              ; preds = %97, %35
  br label %30

114:                                              ; preds = %30
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %8, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i64, i64* %12, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %159

123:                                              ; preds = %114
  %124 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %15, align 8
  %125 = icmp ne %struct.tsi721_ob_win* %124, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %123
  %127 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %128 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = call i32 @tsi_err(i32* %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %159

134:                                              ; preds = %123
  %135 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %15, align 8
  %136 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %15, align 8
  %139 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %15, align 8
  %142 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %141, i32 0, i32 2
  store i64 %140, i64* %142, align 8
  %143 = load %struct.tsi721_obw_bar*, %struct.tsi721_obw_bar** %7, align 8
  %144 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %15, align 8
  %145 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %144, i32 0, i32 3
  store %struct.tsi721_obw_bar* %143, %struct.tsi721_obw_bar** %145, align 8
  %146 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %147 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %147, align 8
  %150 = load i64, i64* %8, align 8
  %151 = load %struct.tsi721_obw_bar*, %struct.tsi721_obw_bar** %7, align 8
  %152 = getelementptr inbounds %struct.tsi721_obw_bar, %struct.tsi721_obw_bar* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = sub nsw i64 %154, %150
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %152, align 8
  %157 = load i32, i32* %16, align 4
  %158 = load i32*, i32** %9, align 8
  store i32 %157, i32* %158, align 4
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %134, %126, %120
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @tsi_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
