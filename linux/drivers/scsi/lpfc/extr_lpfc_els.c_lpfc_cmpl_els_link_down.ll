; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.lpfc_dmabuf = type { i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"6445 ELS completes after LINK_DOWN:  Status %x/%x cmd x%x flg x%x\0A\00", align 1
@LPFC_IO_FABRIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_els_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_els_link_down(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %10 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %11 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.lpfc_dmabuf*
  %14 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %20 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %19, i32 0, i32 1
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %7, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %22 = load i32, i32* @KERN_INFO, align 4
  %23 = load i32, i32* @LOG_ELS, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %35 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %32, i32 %33, i32 %36)
  %38 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %39 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %3
  %45 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %48 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 0
  %53 = call i32 @atomic_dec(i32* %52)
  br label %54

54:                                               ; preds = %44, %3
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %56 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %57 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %55, %struct.lpfc_iocbq* %56)
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
