; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_queue_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i64 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i8* }
%struct.mvumi_cmd = type { %struct.scsi_cmnd* }
%struct.mvumi_hba = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mvumi_hba*, %struct.mvumi_cmd*)* }

@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @mvumi_queue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_queue_command(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.mvumi_cmd*, align 8
  %7 = alloca %struct.mvumi_hba*, align 8
  %8 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %10 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32 %11, i64 %12)
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mvumi_hba*
  store %struct.mvumi_hba* %17, %struct.mvumi_hba** %7, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %21 = call %struct.mvumi_cmd* @mvumi_get_cmd(%struct.mvumi_hba* %20)
  store %struct.mvumi_cmd* %21, %struct.mvumi_cmd** %6, align 8
  %22 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %23 = icmp ne %struct.mvumi_cmd* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32 %31, i64 %32)
  %34 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %34, i32* %3, align 4
  br label %79

35:                                               ; preds = %2
  %36 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %38 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %39 = call i32 @mvumi_build_frame(%struct.mvumi_hba* %36, %struct.scsi_cmnd* %37, %struct.mvumi_cmd* %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %65

43:                                               ; preds = %35
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %45 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %45, i32 0, i32 0
  store %struct.scsi_cmnd* %44, %struct.scsi_cmnd** %46, align 8
  %47 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %48 = bitcast %struct.mvumi_cmd* %47 to i8*
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %53 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.mvumi_hba*, %struct.mvumi_cmd*)*, i32 (%struct.mvumi_hba*, %struct.mvumi_cmd*)** %55, align 8
  %57 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %58 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %59 = call i32 %56(%struct.mvumi_hba* %57, %struct.mvumi_cmd* %58)
  %60 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %61 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32 %62, i64 %63)
  store i32 0, i32* %3, align 4
  br label %79

65:                                               ; preds = %42
  %66 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %67 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %6, align 8
  %68 = call i32 @mvumi_return_cmd(%struct.mvumi_hba* %66, %struct.mvumi_cmd* %67)
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 0
  %71 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %70, align 8
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %73 = call i32 %71(%struct.scsi_cmnd* %72)
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32 %76, i64 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %65, %43, %28
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.mvumi_cmd* @mvumi_get_cmd(%struct.mvumi_hba*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @mvumi_build_frame(%struct.mvumi_hba*, %struct.scsi_cmnd*, %struct.mvumi_cmd*) #1

declare dso_local i32 @mvumi_return_cmd(%struct.mvumi_hba*, %struct.mvumi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
