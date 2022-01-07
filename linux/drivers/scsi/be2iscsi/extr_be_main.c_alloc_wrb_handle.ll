; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_alloc_wrb_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_alloc_wrb_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrb_handle = type { i32 }
%struct.beiscsi_hba = type { %struct.TYPE_2__, %struct.hwi_controller* }
%struct.TYPE_2__ = type { i32 }
%struct.hwi_controller = type { %struct.hwi_wrb_context* }
%struct.hwi_wrb_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wrb_handle* @alloc_wrb_handle(%struct.beiscsi_hba* %0, i32 %1, %struct.hwi_wrb_context** %2) #0 {
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwi_wrb_context**, align 8
  %7 = alloca %struct.hwi_wrb_context*, align 8
  %8 = alloca %struct.hwi_controller*, align 8
  %9 = alloca i64, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hwi_wrb_context** %2, %struct.hwi_wrb_context*** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @BE_GET_CRI_FROM_CID(i32 %10)
  store i64 %11, i64* %9, align 8
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %13 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %12, i32 0, i32 1
  %14 = load %struct.hwi_controller*, %struct.hwi_controller** %13, align 8
  store %struct.hwi_controller* %14, %struct.hwi_controller** %8, align 8
  %15 = load %struct.hwi_controller*, %struct.hwi_controller** %8, align 8
  %16 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %15, i32 0, i32 0
  %17 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %16, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %17, i64 %18
  store %struct.hwi_wrb_context* %19, %struct.hwi_wrb_context** %7, align 8
  %20 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %7, align 8
  %21 = load %struct.hwi_wrb_context**, %struct.hwi_wrb_context*** %6, align 8
  store %struct.hwi_wrb_context* %20, %struct.hwi_wrb_context** %21, align 8
  %22 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %7, align 8
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %24 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.wrb_handle* @beiscsi_get_wrb_handle(%struct.hwi_wrb_context* %22, i32 %26)
  ret %struct.wrb_handle* %27
}

declare dso_local i64 @BE_GET_CRI_FROM_CID(i32) #1

declare dso_local %struct.wrb_handle* @beiscsi_get_wrb_handle(%struct.hwi_wrb_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
