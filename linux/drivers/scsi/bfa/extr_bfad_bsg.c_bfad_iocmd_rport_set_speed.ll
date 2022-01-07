; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_rport_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_rport_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_rport_set_speed_s = type { i32, i32, i32, i32, i32 }
%struct.bfa_fcs_lport_s = type { i32 }
%struct.bfa_fcs_rport_s = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@BFA_STATUS_UNKNOWN_LWWN = common dso_local global i32 0, align 4
@BFA_STATUS_UNKNOWN_RWWN = common dso_local global i32 0, align 4
@BFA_PORT_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_rport_set_speed(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_rport_set_speed_s*, align 8
  %6 = alloca %struct.bfa_fcs_lport_s*, align 8
  %7 = alloca %struct.bfa_fcs_rport_s*, align 8
  %8 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bfa_bsg_rport_set_speed_s*
  store %struct.bfa_bsg_rport_set_speed_s* %10, %struct.bfa_bsg_rport_set_speed_s** %5, align 8
  %11 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 1
  %17 = load %struct.bfa_bsg_rport_set_speed_s*, %struct.bfa_bsg_rport_set_speed_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_bsg_rport_set_speed_s, %struct.bfa_bsg_rport_set_speed_s* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bfa_bsg_rport_set_speed_s*, %struct.bfa_bsg_rport_set_speed_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_bsg_rport_set_speed_s, %struct.bfa_bsg_rport_set_speed_s* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32* %16, i32 %19, i32 %22)
  store %struct.bfa_fcs_lport_s* %23, %struct.bfa_fcs_lport_s** %6, align 8
  %24 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %25 = icmp eq %struct.bfa_fcs_lport_s* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %27, i32 0, i32 0
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* @BFA_STATUS_UNKNOWN_LWWN, align 4
  %32 = load %struct.bfa_bsg_rport_set_speed_s*, %struct.bfa_bsg_rport_set_speed_s** %5, align 8
  %33 = getelementptr inbounds %struct.bfa_bsg_rport_set_speed_s, %struct.bfa_bsg_rport_set_speed_s* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %85

34:                                               ; preds = %2
  %35 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %36 = load %struct.bfa_bsg_rport_set_speed_s*, %struct.bfa_bsg_rport_set_speed_s** %5, align 8
  %37 = getelementptr inbounds %struct.bfa_bsg_rport_set_speed_s, %struct.bfa_bsg_rport_set_speed_s* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.bfa_fcs_rport_s* @bfa_fcs_rport_lookup(%struct.bfa_fcs_lport_s* %35, i32 %38)
  store %struct.bfa_fcs_rport_s* %39, %struct.bfa_fcs_rport_s** %7, align 8
  %40 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %41 = icmp eq %struct.bfa_fcs_rport_s* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %43, i32 0, i32 0
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* @BFA_STATUS_UNKNOWN_RWWN, align 4
  %48 = load %struct.bfa_bsg_rport_set_speed_s*, %struct.bfa_bsg_rport_set_speed_s** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_bsg_rport_set_speed_s, %struct.bfa_bsg_rport_set_speed_s* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %85

50:                                               ; preds = %34
  %51 = load %struct.bfa_bsg_rport_set_speed_s*, %struct.bfa_bsg_rport_set_speed_s** %5, align 8
  %52 = getelementptr inbounds %struct.bfa_bsg_rport_set_speed_s, %struct.bfa_bsg_rport_set_speed_s* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %55 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %58 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BFA_PORT_SPEED_UNKNOWN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %50
  %64 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %65 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %70 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.bfa_bsg_rport_set_speed_s*, %struct.bfa_bsg_rport_set_speed_s** %5, align 8
  %73 = getelementptr inbounds %struct.bfa_bsg_rport_set_speed_s, %struct.bfa_bsg_rport_set_speed_s* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bfa_rport_speed(i64 %71, i32 %74)
  br label %76

76:                                               ; preds = %68, %63
  br label %77

77:                                               ; preds = %76, %50
  %78 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %79 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %78, i32 0, i32 0
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* @BFA_STATUS_OK, align 4
  %83 = load %struct.bfa_bsg_rport_set_speed_s*, %struct.bfa_bsg_rport_set_speed_s** %5, align 8
  %84 = getelementptr inbounds %struct.bfa_bsg_rport_set_speed_s, %struct.bfa_bsg_rport_set_speed_s* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %77, %42, %26
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.bfa_fcs_rport_s* @bfa_fcs_rport_lookup(%struct.bfa_fcs_lport_s*, i32) #1

declare dso_local i32 @bfa_rport_speed(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
