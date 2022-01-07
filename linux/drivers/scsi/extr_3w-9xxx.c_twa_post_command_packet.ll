; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_post_command_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_post_command_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i64, i64*, i64, i32*, i64, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@PCI_DEVICE_ID_3WARE_9650SE = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_3WARE_9690SA = common dso_local global i64 0, align 8
@TW_COMMAND_OFFSET = common dso_local global i32 0, align 4
@TW_S_PENDING = common dso_local global i64 0, align 8
@TW_STATUS_COMMAND_QUEUE_FULL = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@TW_Q_LENGTH = common dso_local global i32 0, align 4
@TW_S_POSTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i8)* @twa_post_command_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_post_command_packet(%struct.TYPE_10__* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  store i32 1, i32* %9, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI_DEVICE_ID_3WARE_9650SE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI_DEVICE_ID_3WARE_9690SA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24, %3
  %33 = load i32, i32* @TW_COMMAND_OFFSET, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = call i64 @TW_COMMAND_QUEUE_REG_ADDR_LARGE(%struct.TYPE_10__* %37)
  %39 = call i32 @writel(i32 %36, i64 %38)
  br label %40

40:                                               ; preds = %32, %24
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = call i32 @TW_STATUS_REG_ADDR(%struct.TYPE_10__* %41)
  %43 = call i32 @readl(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @twa_check_bits(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @twa_decode_bits(%struct.TYPE_10__* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TW_S_PENDING, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %56, %51
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @TW_STATUS_COMMAND_QUEUE_FULL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %132

71:                                               ; preds = %66, %56
  %72 = load i8, i8* %6, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %75, i32* %9, align 4
  br label %189

76:                                               ; preds = %71
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TW_S_PENDING, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %129

86:                                               ; preds = %76
  %87 = load i64, i64* @TW_S_PENDING, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 %87, i64* %93, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %100, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %86
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %105, %86
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %112, i32* %119, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  %124 = load i32, i32* @TW_Q_LENGTH, align 4
  %125 = sext i32 %124 to i64
  %126 = urem i64 %123, %125
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 5
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %111, %76
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = call i32 @TW_UNMASK_COMMAND_INTERRUPT(%struct.TYPE_10__* %130)
  br label %189

132:                                              ; preds = %66
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @PCI_DEVICE_ID_3WARE_9650SE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %148, label %140

140:                                              ; preds = %132
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PCI_DEVICE_ID_3WARE_9690SA, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %140, %132
  %149 = load i32, i32* %8, align 4
  %150 = ashr i32 %149, 32
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = call i64 @TW_COMMAND_QUEUE_REG_ADDR_LARGE(%struct.TYPE_10__* %151)
  %153 = add nsw i64 %152, 4
  %154 = call i32 @writel(i32 %150, i64 %153)
  br label %162

155:                                              ; preds = %140
  %156 = load i32, i32* @TW_COMMAND_OFFSET, align 4
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %156, %157
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = call i64 @TW_COMMAND_QUEUE_REG_ADDR(%struct.TYPE_10__* %159)
  %161 = call i32 @writel(i32 %158, i64 %160)
  br label %162

162:                                              ; preds = %155, %148
  %163 = load i64, i64* @TW_S_POSTED, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  store i64 %163, i64* %169, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %171, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 7
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %176, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %162
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 6
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 7
  store i64 %184, i64* %186, align 8
  br label %187

187:                                              ; preds = %181, %162
  br label %188

188:                                              ; preds = %187
  store i32 0, i32* %9, align 4
  br label %189

189:                                              ; preds = %188, %129, %74
  %190 = load i32, i32* %9, align 4
  ret i32 %190
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @TW_COMMAND_QUEUE_REG_ADDR_LARGE(%struct.TYPE_10__*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @TW_STATUS_REG_ADDR(%struct.TYPE_10__*) #1

declare dso_local i64 @twa_check_bits(i32) #1

declare dso_local i32 @twa_decode_bits(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @TW_UNMASK_COMMAND_INTERRUPT(%struct.TYPE_10__*) #1

declare dso_local i64 @TW_COMMAND_QUEUE_REG_ADDR(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
