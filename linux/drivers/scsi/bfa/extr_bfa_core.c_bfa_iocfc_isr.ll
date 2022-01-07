; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_mbmsg_s = type { i32 }
%struct.bfa_s = type { %struct.bfa_iocfc_s }
%struct.bfa_iocfc_s = type { i32, i32 (i32, i32)* }
%union.bfi_iocfc_i2h_msg_u = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfi_faa_addr_msg_s = type { i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_iocfc_isr(i8* %0, %struct.bfi_mbmsg_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfi_mbmsg_s*, align 8
  %5 = alloca %struct.bfa_s*, align 8
  %6 = alloca %struct.bfa_iocfc_s*, align 8
  %7 = alloca %union.bfi_iocfc_i2h_msg_u*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfi_mbmsg_s* %1, %struct.bfi_mbmsg_s** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.bfa_s*
  store %struct.bfa_s* %9, %struct.bfa_s** %5, align 8
  %10 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %10, i32 0, i32 0
  store %struct.bfa_iocfc_s* %11, %struct.bfa_iocfc_s** %6, align 8
  %12 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %13 = bitcast %struct.bfi_mbmsg_s* %12 to %union.bfi_iocfc_i2h_msg_u*
  store %union.bfi_iocfc_i2h_msg_u* %13, %union.bfi_iocfc_i2h_msg_u** %7, align 8
  %14 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %15 = load %union.bfi_iocfc_i2h_msg_u*, %union.bfi_iocfc_i2h_msg_u** %7, align 8
  %16 = bitcast %union.bfi_iocfc_i2h_msg_u* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bfa_trc(%struct.bfa_s* %14, i32 %18)
  %20 = load %union.bfi_iocfc_i2h_msg_u*, %union.bfi_iocfc_i2h_msg_u** %7, align 8
  %21 = bitcast %union.bfi_iocfc_i2h_msg_u* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %46 [
    i32 130, label %24
    i32 128, label %27
    i32 131, label %36
    i32 129, label %41
  ]

24:                                               ; preds = %2
  %25 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %26 = call i32 @bfa_iocfc_cfgrsp(%struct.bfa_s* %25)
  br label %48

27:                                               ; preds = %2
  %28 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %6, align 8
  %29 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %28, i32 0, i32 1
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %6, align 8
  %32 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BFA_STATUS_OK, align 4
  %35 = call i32 %30(i32 %33, i32 %34)
  br label %48

36:                                               ; preds = %2
  %37 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %38 = load %union.bfi_iocfc_i2h_msg_u*, %union.bfi_iocfc_i2h_msg_u** %7, align 8
  %39 = bitcast %union.bfi_iocfc_i2h_msg_u* %38 to %struct.bfi_faa_addr_msg_s*
  %40 = call i32 @bfa_iocfc_process_faa_addr(%struct.bfa_s* %37, %struct.bfi_faa_addr_msg_s* %39)
  br label %48

41:                                               ; preds = %2
  %42 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %6, align 8
  %43 = load %union.bfi_iocfc_i2h_msg_u*, %union.bfi_iocfc_i2h_msg_u** %7, align 8
  %44 = bitcast %union.bfi_iocfc_i2h_msg_u* %43 to i32*
  %45 = call i32 @bfa_faa_query_reply(%struct.bfa_iocfc_s* %42, i32* %44)
  br label %48

46:                                               ; preds = %2
  %47 = call i32 @WARN_ON(i32 1)
  br label %48

48:                                               ; preds = %46, %41, %36, %27, %24
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_iocfc_cfgrsp(%struct.bfa_s*) #1

declare dso_local i32 @bfa_iocfc_process_faa_addr(%struct.bfa_s*, %struct.bfi_faa_addr_msg_s*) #1

declare dso_local i32 @bfa_faa_query_reply(%struct.bfa_iocfc_s*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
