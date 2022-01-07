; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_handle_vdm_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_handle_vdm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i32, i32, i32 }

@VDM_STATE_BUSY = common dso_local global i64 0, align 8
@CMDT_RSP_BUSY = common dso_local global i64 0, align 8
@VDM_STATE_WAIT_RSP_BUSY = common dso_local global i64 0, align 8
@VDO_CMDT_MASK = common dso_local global i32 0, align 4
@CMDT_INIT = common dso_local global i32 0, align 4
@PD_T_VDM_BUSY = common dso_local global i32 0, align 4
@VDM_STATE_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*, i32*, i32)* @tcpm_handle_vdm_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpm_handle_vdm_request(%struct.tcpm_port* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.tcpm_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = bitcast [8 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 32, i1 false)
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32_to_cpu(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %16 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VDM_STATE_BUSY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @PD_VDO_CMDT(i32 %21)
  %23 = load i64, i64* @CMDT_RSP_BUSY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load i64, i64* @VDM_STATE_WAIT_RSP_BUSY, align 8
  %27 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %28 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @VDO_CMDT_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load i32, i32* @CMDT_INIT, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %36 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %38 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %41 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %40, i32 0, i32 2
  %42 = load i32, i32* @PD_T_VDM_BUSY, align 4
  %43 = call i32 @msecs_to_jiffies(i32 %42)
  %44 = call i32 @mod_delayed_work(i32 %39, i32* %41, i32 %43)
  br label %76

45:                                               ; preds = %20
  %46 = load i64, i64* @VDM_STATE_DONE, align 8
  %47 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %48 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %3
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @PD_VDO_SVDM(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %58 = call i32 @tcpm_pd_svdm(%struct.tcpm_port* %54, i32* %55, i32 %56, i32* %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %65 = load i32, i32* %64, align 16
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @tcpm_queue_vdm(%struct.tcpm_port* %63, i32 %65, i32* %66, i32 %68)
  %70 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %71 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %74 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %73, i32 0, i32 2
  %75 = call i32 @mod_delayed_work(i32 %72, i32* %74, i32 0)
  br label %76

76:                                               ; preds = %25, %62, %59
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i64 @PD_VDO_CMDT(i32) #2

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

declare dso_local i64 @PD_VDO_SVDM(i32) #2

declare dso_local i32 @tcpm_pd_svdm(%struct.tcpm_port*, i32*, i32, i32*) #2

declare dso_local i32 @tcpm_queue_vdm(%struct.tcpm_port*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
