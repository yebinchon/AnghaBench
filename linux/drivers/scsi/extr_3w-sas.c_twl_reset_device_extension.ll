; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-sas.c_twl_reset_device_extension.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-sas.c_twl_reset_device_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64*, i32*, %struct.TYPE_10__*, i32, i32, i64, i8*, i8*, %struct.scsi_cmnd** }
%struct.TYPE_10__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)* }

@TW_IN_RESET = common dso_local global i32 0, align 4
@TW_Q_LENGTH = common dso_local global i32 0, align 4
@TW_S_FINISHED = common dso_local global i64 0, align 8
@TW_S_INITIAL = common dso_local global i64 0, align 8
@TW_S_COMPLETED = common dso_local global i64 0, align 8
@DID_RESET = common dso_local global i32 0, align 4
@TW_Q_START = common dso_local global i8* null, align 8
@TW_IOCTL_CHRDEV_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @twl_reset_device_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_reset_device_extension(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = call i32 @scsi_block_requests(%struct.TYPE_10__* %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @TW_IN_RESET, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = call i32 @TWL_MASK_INTERRUPTS(%struct.TYPE_9__* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = call i32 @TWL_CLEAR_DB_INTERRUPT(%struct.TYPE_9__* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32 %29, i64 %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %90, %16
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @TW_Q_LENGTH, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %93

36:                                               ; preds = %32
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TW_S_FINISHED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %36
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TW_S_INITIAL, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TW_S_COMPLETED, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %56
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 8
  %69 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %69, i64 %71
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %72, align 8
  store %struct.scsi_cmnd* %73, %struct.scsi_cmnd** %8, align 8
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %75 = icmp ne %struct.scsi_cmnd* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %66
  %77 = load i32, i32* @DID_RESET, align 4
  %78 = shl i32 %77, 16
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %80 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %82 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %81)
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 1
  %85 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %84, align 8
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %87 = call i32 %85(%struct.scsi_cmnd* %86)
  br label %88

88:                                               ; preds = %76, %66
  br label %89

89:                                               ; preds = %88, %56, %46, %36
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %32

93:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %113, %93
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @TW_Q_LENGTH, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = load i64, i64* @TW_S_INITIAL, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 %106, i64* %112, align 8
  br label %113

113:                                              ; preds = %98
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %94

116:                                              ; preds = %94
  %117 = load i8*, i8** @TW_Q_START, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 7
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** @TW_Q_START, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 5
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* %7, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32 %129, i64 %130)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = call i64 @twl_reset_sequence(%struct.TYPE_9__* %132, i32 1)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %116
  br label %146

136:                                              ; preds = %116
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = call i32 @TWL_UNMASK_INTERRUPTS(%struct.TYPE_9__* %137)
  %139 = load i32, i32* @TW_IN_RESET, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 4
  %142 = call i32 @clear_bit(i32 %139, i32* %141)
  %143 = load i32, i32* @TW_IOCTL_CHRDEV_FREE, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 8
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %136, %135
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = call i32 @scsi_unblock_requests(%struct.TYPE_10__* %152)
  br label %154

154:                                              ; preds = %149, %146
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i32 @scsi_block_requests(%struct.TYPE_10__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @TWL_MASK_INTERRUPTS(%struct.TYPE_9__*) #1

declare dso_local i32 @TWL_CLEAR_DB_INTERRUPT(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i64 @twl_reset_sequence(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @TWL_UNMASK_INTERRUPTS(%struct.TYPE_9__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @scsi_unblock_requests(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
