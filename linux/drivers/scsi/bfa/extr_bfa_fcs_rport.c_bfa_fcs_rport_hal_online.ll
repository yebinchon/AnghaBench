; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_hal_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_hal_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, i32, i32, i32, %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bfa_rport_info_s = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*)* @bfa_fcs_rport_hal_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_hal_online(%struct.bfa_fcs_rport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_rport_s*, align 8
  %3 = alloca %struct.bfa_fcs_lport_s*, align 8
  %4 = alloca %struct.bfa_rport_info_s, align 4
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %2, align 8
  %5 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %5, i32 0, i32 5
  %7 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  store %struct.bfa_fcs_lport_s* %7, %struct.bfa_fcs_lport_s** %3, align 8
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.bfa_rport_info_s, %struct.bfa_rport_info_s* %4, i32 0, i32 7
  store i32 %10, i32* %11, align 4
  %12 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.bfa_rport_info_s, %struct.bfa_rport_info_s* %4, i32 0, i32 6
  store i32 %14, i32* %15, align 4
  %16 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.bfa_rport_info_s, %struct.bfa_rport_info_s* %4, i32 0, i32 5
  store i32 %18, i32* %19, align 4
  %20 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.bfa_rport_info_s, %struct.bfa_rport_info_s* %4, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.bfa_rport_info_s, %struct.bfa_rport_info_s* %4, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %33 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.bfa_rport_info_s, %struct.bfa_rport_info_s* %4, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %37 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.bfa_rport_info_s, %struct.bfa_rport_info_s* %4, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %41 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.bfa_rport_info_s, %struct.bfa_rport_info_s* %4, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %45 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bfa_rport_online(i32 %46, %struct.bfa_rport_info_s* %4)
  ret void
}

declare dso_local i32 @bfa_rport_online(i32, %struct.bfa_rport_info_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
