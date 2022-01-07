; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_reset_device_extension.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_reset_device_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64*, i32*, i32, i32, %struct.TYPE_8__*, i64, i8*, i8*, i64, i64, i8*, i8*, %struct.scsi_cmnd** }
%struct.TYPE_8__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)* }

@TW_IN_RESET = common dso_local global i32 0, align 4
@TW_Q_LENGTH = common dso_local global i32 0, align 4
@TW_S_FINISHED = common dso_local global i64 0, align 8
@TW_S_INITIAL = common dso_local global i64 0, align 8
@TW_S_COMPLETED = common dso_local global i64 0, align 8
@DID_RESET = common dso_local global i32 0, align 4
@TW_Q_START = common dso_local global i8* null, align 8
@TW_IOCTL_CHRDEV_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @twa_reset_device_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_reset_device_extension(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %7 = load i32, i32* @TW_IN_RESET, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = call i32 @set_bit(i32 %7, i32* %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = call i32 @TW_DISABLE_INTERRUPTS(%struct.TYPE_9__* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = call i32 @TW_MASK_COMMAND_INTERRUPT(%struct.TYPE_9__* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %91, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @TW_Q_LENGTH, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %94

26:                                               ; preds = %22
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TW_S_FINISHED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %90

36:                                               ; preds = %26
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TW_S_INITIAL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %90

46:                                               ; preds = %36
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TW_S_COMPLETED, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 12
  %59 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %59, i64 %61
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %62, align 8
  %64 = icmp ne %struct.scsi_cmnd* %63, null
  br i1 %64, label %65, label %89

65:                                               ; preds = %56
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 12
  %68 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %68, i64 %70
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %71, align 8
  store %struct.scsi_cmnd* %72, %struct.scsi_cmnd** %6, align 8
  %73 = load i32, i32* @DID_RESET, align 4
  %74 = shl i32 %73, 16
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %78 = call i64 @twa_command_mapped(%struct.scsi_cmnd* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %65
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %82 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %81)
  br label %83

83:                                               ; preds = %80, %65
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 1
  %86 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %85, align 8
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %88 = call i32 %86(%struct.scsi_cmnd* %87)
  br label %89

89:                                               ; preds = %83, %56
  br label %90

90:                                               ; preds = %89, %46, %36, %26
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %22

94:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @TW_Q_LENGTH, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %95
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  %107 = load i64, i64* @TW_S_INITIAL, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  store i64 %107, i64* %113, align 8
  br label %114

114:                                              ; preds = %99
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  br label %95

117:                                              ; preds = %95
  %118 = load i8*, i8** @TW_Q_START, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 11
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** @TW_Q_START, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 10
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 9
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 8
  store i64 0, i64* %127, align 8
  %128 = load i8*, i8** @TW_Q_START, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 7
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** @TW_Q_START, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 6
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 5
  store i64 0, i64* %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32 %140, i64 %141)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %144 = call i64 @twa_reset_sequence(%struct.TYPE_9__* %143, i32 1)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %117
  br label %157

147:                                              ; preds = %117
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %149 = call i32 @TW_ENABLE_AND_CLEAR_INTERRUPTS(%struct.TYPE_9__* %148)
  %150 = load i32, i32* @TW_IN_RESET, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  %153 = call i32 @clear_bit(i32 %150, i32* %152)
  %154 = load i32, i32* @TW_IOCTL_CHRDEV_FREE, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %147, %146
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @TW_DISABLE_INTERRUPTS(%struct.TYPE_9__*) #1

declare dso_local i32 @TW_MASK_COMMAND_INTERRUPT(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @twa_command_mapped(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i64 @twa_reset_sequence(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @TW_ENABLE_AND_CLEAR_INTERRUPTS(%struct.TYPE_9__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
