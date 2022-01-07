; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_pbc_vport_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_pbc_vport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_s = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bfi_pbc_vport_s = type { i32 }

@BFI_PBC_MAX_VPORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_pbc_vport_init(%struct.bfa_fcs_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.bfa_fcs_s* %0, %struct.bfa_fcs_s** %2, align 8
  %7 = load i32, i32* @BFI_PBC_MAX_VPORTS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca %struct.bfi_pbc_vport_s, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %2, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %1
  %16 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @bfa_iocfc_get_pbc_vports(%struct.TYPE_2__* %18, %struct.bfi_pbc_vport_s* %10)
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %36, %15
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %2, align 8
  %26 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bfi_pbc_vport_s, %struct.bfi_pbc_vport_s* %10, i64 %31
  %33 = getelementptr inbounds %struct.bfi_pbc_vport_s, %struct.bfi_pbc_vport_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bfa_fcb_pbc_vport_create(i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %20

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %41)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bfa_iocfc_get_pbc_vports(%struct.TYPE_2__*, %struct.bfi_pbc_vport_s*) #2

declare dso_local i32 @bfa_fcb_pbc_vport_create(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
