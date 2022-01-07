; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_build_ioa_service_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_build_ioa_service_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.ipr_ioarcb }
%struct.ipr_ioarcb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@IPR_IOA_SERVICE_ACTION = common dso_local global i32 0, align 4
@IPR_RQTYPE_IOACMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*, i32, i32)* @ipr_build_ioa_service_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_build_ioa_service_action(%struct.ipr_cmnd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipr_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipr_ioarcb*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %9 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %8, i32 0, i32 0
  store %struct.ipr_ioarcb* %9, %struct.ipr_ioarcb** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %7, align 8
  %12 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @IPR_IOA_SERVICE_ACTION, align 4
  %14 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %7, align 8
  %15 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %13, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %7, align 8
  %21 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %19, i32* %24, align 4
  %25 = load i32, i32* @IPR_RQTYPE_IOACMD, align 4
  %26 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %7, align 8
  %27 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
