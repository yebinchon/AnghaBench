; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_config_write_same.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_config_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32, %struct.TYPE_4__*, i32, i64, i64, i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }

@SD_MAX_WS10_BLOCKS = common dso_local global i32 0, align 4
@SD_MAX_WS16_BLOCKS = common dso_local global i64 0, align 8
@SD_ZERO_WS16_UNMAP = common dso_local global i32 0, align 4
@SD_ZERO_WS10_UNMAP = common dso_local global i32 0, align 4
@SD_ZERO_WS = common dso_local global i32 0, align 4
@SD_ZERO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*)* @sd_config_write_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_config_write_same(%struct.scsi_disk* %0) #0 {
  %2 = alloca %struct.scsi_disk*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %2, align 8
  %5 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %5, i32 0, i32 9
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  store %struct.request_queue* %9, %struct.request_queue** %3, align 8
  %10 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %23 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %143

24:                                               ; preds = %1
  %25 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SD_MAX_WS10_BLOCKS, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @SD_MAX_WS16_BLOCKS, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i8* @min_not_zero(i32 %33, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %39 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %74

40:                                               ; preds = %24
  %41 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %42 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %40
  %46 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %47 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %52 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50, %45, %40
  %58 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %59 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SD_MAX_WS10_BLOCKS, align 4
  %62 = call i8* @min_not_zero(i32 %60, i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %65 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %73

66:                                               ; preds = %50
  %67 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %68 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %72 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %66, %57
  br label %74

74:                                               ; preds = %73, %30
  %75 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %76 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %81 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @SD_ZERO_WS16_UNMAP, align 4
  %86 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %87 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  br label %117

88:                                               ; preds = %79, %74
  %89 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %90 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %95 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @SD_ZERO_WS10_UNMAP, align 4
  %100 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %101 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  br label %116

102:                                              ; preds = %93, %88
  %103 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %104 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @SD_ZERO_WS, align 4
  %109 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %110 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  br label %115

111:                                              ; preds = %102
  %112 = load i32, i32* @SD_ZERO_WRITE, align 4
  %113 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %114 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %107
  br label %116

116:                                              ; preds = %115, %98
  br label %117

117:                                              ; preds = %116, %84
  %118 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %119 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %117
  %123 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %124 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ugt i32 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %122
  %129 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %130 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %133 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %136 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @bytes_to_logical(%struct.TYPE_4__* %134, i32 %137)
  %139 = call i32 @round_down(i32 %131, i32 %138)
  %140 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %141 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %128, %122, %117
  br label %143

143:                                              ; preds = %142, %21
  %144 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %145 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %146 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = lshr i32 %148, 9
  %150 = mul i32 %147, %149
  %151 = call i32 @blk_queue_max_write_same_sectors(%struct.request_queue* %144, i32 %150)
  %152 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %153 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %154 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = lshr i32 %156, 9
  %158 = mul i32 %155, %157
  %159 = call i32 @blk_queue_max_write_zeroes_sectors(%struct.request_queue* %152, i32 %158)
  ret void
}

declare dso_local i8* @min_not_zero(i32, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @bytes_to_logical(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @blk_queue_max_write_same_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_write_zeroes_sectors(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
