; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.ctlr_info = type { i32, i32, i32, i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @hpsa_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_scan_start(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = call %struct.ctlr_info* @shost_to_hba(%struct.Scsi_Host* %5)
  store %struct.ctlr_info* %6, %struct.ctlr_info** %3, align 8
  %7 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %8 = call i32 @lockup_detected(%struct.ctlr_info* %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  call void @hpsa_scan_complete(%struct.ctlr_info* %12)
  br label %96

13:                                               ; preds = %1
  %14 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %15 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %14, i32 0, i32 4
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %19 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %24 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %23, i32 0, i32 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %96

27:                                               ; preds = %13
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %29 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %28, i32 0, i32 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  br label %32

32:                                               ; preds = %27, %42
  %33 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %34 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %33, i32 0, i32 4
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %38 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %56

42:                                               ; preds = %32
  %43 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %44 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %46 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %45, i32 0, i32 4
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %50 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %53 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @wait_event(i32 %51, i64 %54)
  br label %32

56:                                               ; preds = %41
  %57 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %58 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %60 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %62 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %61, i32 0, i32 4
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %66 = call i32 @lockup_detected(%struct.ctlr_info* %65)
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  call void @hpsa_scan_complete(%struct.ctlr_info* %70)
  br label %96

71:                                               ; preds = %56
  %72 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %73 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %72, i32 0, i32 2
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %77 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %82 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %84 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %83, i32 0, i32 2
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  call void @hpsa_scan_complete(%struct.ctlr_info* %87)
  br label %96

88:                                               ; preds = %71
  %89 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %90 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %89, i32 0, i32 2
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %94 = call i32 @hpsa_update_scsi_devices(%struct.ctlr_info* %93)
  %95 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  call void @hpsa_scan_complete(%struct.ctlr_info* %95)
  br label %96

96:                                               ; preds = %88, %80, %69, %22, %11
  ret void
}

declare dso_local %struct.ctlr_info* @shost_to_hba(%struct.Scsi_Host*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lockup_detected(%struct.ctlr_info*) #1

declare dso_local void @hpsa_scan_complete(%struct.ctlr_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event(i32, i64) #1

declare dso_local i32 @hpsa_update_scsi_devices(%struct.ctlr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
