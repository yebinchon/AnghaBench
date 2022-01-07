; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_issue_fc_host_lip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_issue_fc_host_lip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64* }
%struct.bfad_im_port_s = type { %struct.bfad_s* }
%struct.bfad_s = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bfad_hal_comp = type { i64, i32 }

@bfad_hcb_comp = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_im_issue_fc_host_lip(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.bfad_im_port_s*, align 8
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca %struct.bfad_hal_comp, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %10 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %14, %struct.bfad_im_port_s** %4, align 8
  %15 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %15, i32 0, i32 0
  %17 = load %struct.bfad_s*, %struct.bfad_s** %16, align 8
  store %struct.bfad_s* %17, %struct.bfad_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 1
  %19 = call i32 @init_completion(i32* %18)
  %20 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* @bfad_hcb_comp, align 4
  %29 = call i64 @bfa_port_disable(i32* %27, i32 %28, %struct.bfad_hal_comp* %6)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %31 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %30, i32 0, i32 0
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @BFA_STATUS_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %82

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 1
  %42 = call i32 @wait_for_completion(i32* %41)
  %43 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BFA_STATUS_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %82

50:                                               ; preds = %40
  %51 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %52 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %51, i32 0, i32 0
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %56 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* @bfad_hcb_comp, align 4
  %60 = call i64 @bfa_port_enable(i32* %58, i32 %59, %struct.bfad_hal_comp* %6)
  store i64 %60, i64* %8, align 8
  %61 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %62 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %61, i32 0, i32 0
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @BFA_STATUS_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %50
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %82

71:                                               ; preds = %50
  %72 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 1
  %73 = call i32 @wait_for_completion(i32* %72)
  %74 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BFA_STATUS_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %78, %68, %47, %37
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_port_disable(i32*, i32, %struct.bfad_hal_comp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @bfa_port_enable(i32*, i32, %struct.bfad_hal_comp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
