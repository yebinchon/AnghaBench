; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_int_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_int_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mvs_info*)*, i32 (%struct.mvs_info*)* }
%struct.mvs_info = type { i32, i32* }

@MVS_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@RX_RING_SZ_MASK = common dso_local global i32 0, align 4
@MVS_RX_RING_SZ = common dso_local global i32 0, align 4
@RXQ_DONE = common dso_local global i32 0, align 4
@RXQ_ATTN = common dso_local global i32 0, align 4
@RXQ_ERR = common dso_local global i32 0, align 4
@RXQ_SLOT_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvs_int_rx(%struct.mvs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %10 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %13 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @le32_to_cpu(i32 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %20 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %22 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 4095
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %130

26:                                               ; preds = %2
  %27 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %28 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.mvs_info*)*, i32 (%struct.mvs_info*)** %37, align 8
  %39 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %40 = call i32 %38(%struct.mvs_info* %39)
  %41 = load i32, i32* @RX_RING_SZ_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %44 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %35, %26
  %46 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %47 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %130

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %116, %52
  %54 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %55 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %117

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* @MVS_RX_RING_SZ, align 4
  %63 = sub nsw i32 %62, 1
  %64 = and i32 %61, %63
  store i32 %64, i32* %6, align 4
  %65 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %66 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @le32_to_cpu(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @RXQ_DONE, align 4
  %77 = and i32 %75, %76
  %78 = call i64 @likely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %59
  %81 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @mvs_slot_complete(%struct.mvs_info* %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %80, %59
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @RXQ_ATTN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 1, i32* %8, align 4
  br label %116

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @RXQ_ERR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @RXQ_DONE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @mvs_slot_complete(%struct.mvs_info* %101, i32 %102, i32 0)
  br label %104

104:                                              ; preds = %100, %95
  br label %115

105:                                              ; preds = %90
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @RXQ_SLOT_RESET, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @mvs_slot_free(%struct.mvs_info* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %105
  br label %115

115:                                              ; preds = %114, %104
  br label %116

116:                                              ; preds = %115, %89
  br label %53

117:                                              ; preds = %53
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32 (%struct.mvs_info*)*, i32 (%struct.mvs_info*)** %125, align 8
  %127 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %128 = call i32 %126(%struct.mvs_info* %127)
  br label %129

129:                                              ; preds = %123, %120, %117
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %51, %25
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mvs_slot_complete(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @mvs_slot_free(%struct.mvs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
