; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_reset_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_reset_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, %struct.Scsi_Host*, i32 }
%struct.Scsi_Host = type { i32* }
%struct.fib = type { i32 }
%struct.aac_pause = type { i8*, i8*, i8*, i8*, i8*, i8* }

@EBUSY = common dso_local global i32 0, align 4
@aac_check_reset = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@VM_ContainerConfig = common dso_local global i32 0, align 4
@CT_PAUSE_IO = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_reset_adapter(%struct.aac_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aac_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fib*, align 8
  %13 = alloca %struct.aac_pause*, align 8
  %14 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %15 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %16 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %15, i32 0, i32 2
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @spin_trylock_irqsave(i32* %16, i64 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %141

23:                                               ; preds = %3
  %24 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %25 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %30 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %29, i32 0, i32 2
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %141

35:                                               ; preds = %23
  %36 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %37 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %39 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %38, i32 0, i32 2
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %43 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %42, i32 0, i32 1
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %43, align 8
  store %struct.Scsi_Host* %44, %struct.Scsi_Host** %10, align 8
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %46 = call i32 @scsi_block_requests(%struct.Scsi_Host* %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %51 = call i32 @aac_send_shutdown(%struct.aac_dev* %50)
  br label %52

52:                                               ; preds = %49, %35
  %53 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %54 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %6, align 4
  br label %71

62:                                               ; preds = %52
  %63 = load i32, i32* @aac_check_reset, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @aac_check_reset, align 4
  %67 = icmp ne i32 %66, 1
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i1 [ false, %62 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  br label %71

71:                                               ; preds = %68, %60
  %72 = phi i32 [ %61, %60 ], [ %70, %68 ]
  store i32 %72, i32* %11, align 4
  %73 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @_aac_reset_adapter(%struct.aac_dev* %73, i32 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %78 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 2
  br i1 %83, label %84, label %139

84:                                               ; preds = %71
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %139

89:                                               ; preds = %84
  %90 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %91 = call %struct.fib* @aac_fib_alloc(%struct.aac_dev* %90)
  store %struct.fib* %91, %struct.fib** %12, align 8
  %92 = load %struct.fib*, %struct.fib** %12, align 8
  %93 = icmp ne %struct.fib* %92, null
  br i1 %93, label %94, label %138

94:                                               ; preds = %89
  %95 = load %struct.fib*, %struct.fib** %12, align 8
  %96 = call i32 @aac_fib_init(%struct.fib* %95)
  %97 = load %struct.fib*, %struct.fib** %12, align 8
  %98 = call i64 @fib_data(%struct.fib* %97)
  %99 = inttoptr i64 %98 to %struct.aac_pause*
  store %struct.aac_pause* %99, %struct.aac_pause** %13, align 8
  %100 = load i32, i32* @VM_ContainerConfig, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = load %struct.aac_pause*, %struct.aac_pause** %13, align 8
  %103 = getelementptr inbounds %struct.aac_pause, %struct.aac_pause* %102, i32 0, i32 5
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @CT_PAUSE_IO, align 4
  %105 = call i8* @cpu_to_le32(i32 %104)
  %106 = load %struct.aac_pause*, %struct.aac_pause** %13, align 8
  %107 = getelementptr inbounds %struct.aac_pause, %struct.aac_pause* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = call i8* @cpu_to_le32(i32 1)
  %109 = load %struct.aac_pause*, %struct.aac_pause** %13, align 8
  %110 = getelementptr inbounds %struct.aac_pause, %struct.aac_pause* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = call i8* @cpu_to_le32(i32 1)
  %112 = load %struct.aac_pause*, %struct.aac_pause** %13, align 8
  %113 = getelementptr inbounds %struct.aac_pause, %struct.aac_pause* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = call i8* @cpu_to_le32(i32 1)
  %115 = load %struct.aac_pause*, %struct.aac_pause** %13, align 8
  %116 = getelementptr inbounds %struct.aac_pause, %struct.aac_pause* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = call i8* @cpu_to_le32(i32 0)
  %118 = load %struct.aac_pause*, %struct.aac_pause** %13, align 8
  %119 = getelementptr inbounds %struct.aac_pause, %struct.aac_pause* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* @ContainerCommand, align 4
  %121 = load %struct.fib*, %struct.fib** %12, align 8
  %122 = load i32, i32* @FsaNormal, align 4
  %123 = call i32 @aac_fib_send(i32 %120, %struct.fib* %121, i32 48, i32 %122, i32 -2, i32 1, i32* null, i32* null)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %94
  %127 = load %struct.fib*, %struct.fib** %12, align 8
  %128 = call i32 @aac_fib_complete(%struct.fib* %127)
  br label %129

129:                                              ; preds = %126, %94
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @ERESTARTSYS, align 4
  %132 = sub nsw i32 0, %131
  %133 = icmp ne i32 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.fib*, %struct.fib** %12, align 8
  %136 = call i32 @aac_fib_free(%struct.fib* %135)
  br label %137

137:                                              ; preds = %134, %129
  br label %138

138:                                              ; preds = %137, %89
  br label %139

139:                                              ; preds = %138, %84, %71
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %28, %20
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i64 @spin_trylock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scsi_block_requests(%struct.Scsi_Host*) #1

declare dso_local i32 @aac_send_shutdown(%struct.aac_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_aac_reset_adapter(%struct.aac_dev*, i32, i32) #1

declare dso_local %struct.fib* @aac_fib_alloc(%struct.aac_dev*) #1

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
