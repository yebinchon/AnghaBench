; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_num_of_discovered_ports_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_num_of_discovered_ports_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64* }
%struct.bfad_im_port_s = type { %struct.bfad_s*, %struct.bfad_port_s* }
%struct.bfad_s = type { i32 }
%struct.bfad_port_s = type { i32 }
%struct.bfa_rport_qualifier_s = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bfad_im_num_of_discovered_ports_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_num_of_discovered_ports_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.bfad_im_port_s*, align 8
  %10 = alloca %struct.bfad_port_s*, align 8
  %11 = alloca %struct.bfad_s*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bfa_rport_qualifier_s*, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %8, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %22, %struct.bfad_im_port_s** %9, align 8
  %23 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %9, align 8
  %24 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %23, i32 0, i32 1
  %25 = load %struct.bfad_port_s*, %struct.bfad_port_s** %24, align 8
  store %struct.bfad_port_s* %25, %struct.bfad_port_s** %10, align 8
  %26 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %9, align 8
  %27 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %26, i32 0, i32 0
  %28 = load %struct.bfad_s*, %struct.bfad_s** %27, align 8
  store %struct.bfad_s* %28, %struct.bfad_s** %11, align 8
  store i32 2048, i32* %12, align 4
  store %struct.bfa_rport_qualifier_s* null, %struct.bfa_rport_qualifier_s** %13, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.bfa_rport_qualifier_s* @kcalloc(i32 %29, i32 4, i32 %30)
  store %struct.bfa_rport_qualifier_s* %31, %struct.bfa_rport_qualifier_s** %13, align 8
  %32 = load %struct.bfa_rport_qualifier_s*, %struct.bfa_rport_qualifier_s** %13, align 8
  %33 = icmp eq %struct.bfa_rport_qualifier_s* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  br label %58

38:                                               ; preds = %3
  %39 = load %struct.bfad_s*, %struct.bfad_s** %11, align 8
  %40 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %39, i32 0, i32 0
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.bfad_port_s*, %struct.bfad_port_s** %10, align 8
  %44 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bfa_rport_qualifier_s*, %struct.bfa_rport_qualifier_s** %13, align 8
  %47 = call i32 @bfa_fcs_lport_get_rport_quals(i32 %45, %struct.bfa_rport_qualifier_s* %46, i32* %12)
  %48 = load %struct.bfad_s*, %struct.bfad_s** %11, align 8
  %49 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %48, i32 0, i32 0
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.bfa_rport_qualifier_s*, %struct.bfa_rport_qualifier_s** %13, align 8
  %53 = call i32 @kfree(%struct.bfa_rport_qualifier_s* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %54, i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %38, %34
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.bfa_rport_qualifier_s* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_fcs_lport_get_rport_quals(i32, %struct.bfa_rport_qualifier_s*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.bfa_rport_qualifier_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
