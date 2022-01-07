; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_get_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BFI_PCIFN_CLASS_ETH = common dso_local global i64 0, align 8
@BFA_IOC_TYPE_LL = common dso_local global i32 0, align 4
@BFI_PCIFN_CLASS_FC = common dso_local global i64 0, align 8
@BFI_PORT_MODE_FC = common dso_local global i64 0, align 8
@BFA_IOC_TYPE_FC = common dso_local global i32 0, align 4
@BFA_IOC_TYPE_FCoE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfa_ioc_get_type(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_ioc_s*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  %4 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %5 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BFI_PCIFN_CLASS_ETH, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @BFA_IOC_TYPE_LL, align 4
  store i32 %10, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BFI_PCIFN_CLASS_FC, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BFI_PORT_MODE_FC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %11
  %27 = load i32, i32* @BFA_IOC_TYPE_FC, align 4
  br label %30

28:                                               ; preds = %11
  %29 = load i32, i32* @BFA_IOC_TYPE_FCoE, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
