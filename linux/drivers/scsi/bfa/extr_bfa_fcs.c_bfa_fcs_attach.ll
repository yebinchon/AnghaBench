; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_s = type { %struct.bfa_s*, i64, i32, %struct.bfad_s*, %struct.bfa_fcs_fabric_s }
%struct.bfa_fcs_fabric_s = type { %struct.bfa_fcs_s*, i32, i32, i32, i32, i32 }
%struct.bfa_s = type { i32 }
%struct.bfad_s = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@bfa_fcs_port_event_handler = common dso_local global i32 0, align 4
@bfa_fcs_uf_recv = common dso_local global i32 0, align 4
@bfa_fcs_fabric_delete_comp = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_uninit = common dso_local global i32 0, align 4
@FC_VF_ID_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_attach(%struct.bfa_fcs_s* %0, %struct.bfa_s* %1, %struct.bfad_s* %2, i32 %3) #0 {
  %5 = alloca %struct.bfa_fcs_s*, align 8
  %6 = alloca %struct.bfa_s*, align 8
  %7 = alloca %struct.bfad_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bfa_fcs_fabric_s*, align 8
  store %struct.bfa_fcs_s* %0, %struct.bfa_fcs_s** %5, align 8
  store %struct.bfa_s* %1, %struct.bfa_s** %6, align 8
  store %struct.bfad_s* %2, %struct.bfad_s** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %10, i32 0, i32 4
  store %struct.bfa_fcs_fabric_s* %11, %struct.bfa_fcs_fabric_s** %9, align 8
  %12 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %13 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %13, i32 0, i32 0
  store %struct.bfa_s* %12, %struct.bfa_s** %14, align 8
  %15 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %16 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %16, i32 0, i32 3
  store %struct.bfad_s* %15, %struct.bfad_s** %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @BFA_TRUE, align 4
  %24 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %25 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = call i32 (...) @fcbuild_init()
  %27 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %28 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %27, i32 0, i32 0
  %29 = load %struct.bfa_s*, %struct.bfa_s** %28, align 8
  %30 = load i32, i32* @bfa_fcs_port_event_handler, align 4
  %31 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %32 = call i32 @bfa_fcport_event_register(%struct.bfa_s* %29, i32 %30, %struct.bfa_fcs_s* %31)
  %33 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %34 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %33, i32 0, i32 0
  %35 = load %struct.bfa_s*, %struct.bfa_s** %34, align 8
  %36 = load i32, i32* @bfa_fcs_uf_recv, align 4
  %37 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %38 = call i32 @bfa_uf_recv_register(%struct.bfa_s* %35, i32 %36, %struct.bfa_fcs_s* %37)
  %39 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %9, align 8
  %40 = call i32 @memset(%struct.bfa_fcs_fabric_s* %39, i32 0, i32 32)
  %41 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %42 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %9, align 8
  %43 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %42, i32 0, i32 0
  store %struct.bfa_fcs_s* %41, %struct.bfa_fcs_s** %43, align 8
  %44 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %9, align 8
  %45 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %44, i32 0, i32 5
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %9, align 8
  %48 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %47, i32 0, i32 4
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %51 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %50, i32 0, i32 0
  %52 = load %struct.bfa_s*, %struct.bfa_s** %51, align 8
  %53 = call i32 @bfa_lps_alloc(%struct.bfa_s* %52)
  %54 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %9, align 8
  %55 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %9, align 8
  %57 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN_ON(i32 %61)
  %63 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %9, align 8
  %64 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %63, i32 0, i32 2
  %65 = load i32, i32* @bfa_fcs_fabric_delete_comp, align 4
  %66 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %9, align 8
  %67 = call i32 @bfa_wc_init(i32* %64, i32 %65, %struct.bfa_fcs_fabric_s* %66)
  %68 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %9, align 8
  %69 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %68, i32 0, i32 2
  %70 = call i32 @bfa_wc_up(i32* %69)
  %71 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %9, align 8
  %72 = load i32, i32* @bfa_fcs_fabric_sm_uninit, align 4
  %73 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %71, i32 %72)
  %74 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %9, align 8
  %75 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %74, i32 0, i32 1
  %76 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %9, align 8
  %77 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %76, i32 0, i32 0
  %78 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %77, align 8
  %79 = load i32, i32* @FC_VF_ID_NULL, align 4
  %80 = call i32 @bfa_fcs_lport_attach(i32* %75, %struct.bfa_fcs_s* %78, i32 %79, i32* null)
  ret void
}

declare dso_local i32 @fcbuild_init(...) #1

declare dso_local i32 @bfa_fcport_event_register(%struct.bfa_s*, i32, %struct.bfa_fcs_s*) #1

declare dso_local i32 @bfa_uf_recv_register(%struct.bfa_s*, i32, %struct.bfa_fcs_s*) #1

declare dso_local i32 @memset(%struct.bfa_fcs_fabric_s*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bfa_lps_alloc(%struct.bfa_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_wc_init(i32*, i32, %struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_wc_up(i32*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_attach(i32*, %struct.bfa_fcs_s*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
