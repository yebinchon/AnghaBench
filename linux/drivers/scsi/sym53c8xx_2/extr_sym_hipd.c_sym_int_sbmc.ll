; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_int_sbmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_int_sbmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.sym_hcb = type { i32 }

@nc_stest4 = common dso_local global i32 0, align 4
@SMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: SCSI BUS mode change from %s to %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @sym_int_sbmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_int_sbmc(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = call %struct.sym_hcb* @sym_get_hcb(%struct.Scsi_Host* %5)
  store %struct.sym_hcb* %6, %struct.sym_hcb** %3, align 8
  %7 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %8 = load i32, i32* @nc_stest4, align 4
  %9 = call i32 @INB(%struct.sym_hcb* %7, i32 %8)
  %10 = load i32, i32* @SMODE, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %13 = call i8* @sym_name(%struct.sym_hcb* %12)
  %14 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %15 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @sym_scsi_bus_mode(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i8* @sym_scsi_bus_mode(i32 %18)
  %20 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %17, i8* %19)
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %22 = call i32 @sym_start_up(%struct.Scsi_Host* %21, i32 2)
  ret void
}

declare dso_local %struct.sym_hcb* @sym_get_hcb(%struct.Scsi_Host*) #1

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

declare dso_local i8* @sym_scsi_bus_mode(i32) #1

declare dso_local i32 @sym_start_up(%struct.Scsi_Host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
