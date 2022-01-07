; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_fabric_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_fabric_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.lpfc_iocbq = type { i32, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, %struct.TYPE_6__ }
%struct.lpfc_hba.0 = type opaque
%struct.lpfc_hba.1 = type opaque
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ls_rjt = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@LPFC_IO_FABRIC = common dso_local global i32 0, align 4
@RJT_UNAVAIL_TEMP = common dso_local global i32 0, align 4
@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@LSRJT_LOGICAL_BSY = common dso_local global i32 0, align 4
@FABRIC_COMANDS_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_fabric_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_fabric_iocb(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.ls_rjt, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %8 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %9 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %14 = icmp ne i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %67 [
    i32 128, label %21
    i32 131, label %21
    i32 129, label %36
    i32 132, label %36
    i32 130, label %39
  ]

21:                                               ; preds = %3, %3
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RJT_UNAVAIL_TEMP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %34 = call i32 @lpfc_block_fabric_iocbs(%struct.lpfc_hba* %33)
  br label %35

35:                                               ; preds = %32, %21
  br label %67

36:                                               ; preds = %3, %3
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %38 = call i32 @lpfc_block_fabric_iocbs(%struct.lpfc_hba* %37)
  br label %67

39:                                               ; preds = %3
  %40 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %41 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  %48 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %7, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %7, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %7, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @LSRJT_LOGICAL_BSY, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56, %39
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %65 = call i32 @lpfc_block_fabric_iocbs(%struct.lpfc_hba* %64)
  br label %66

66:                                               ; preds = %63, %56
  br label %67

67:                                               ; preds = %3, %66, %36, %35
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 1
  %70 = call i64 @atomic_read(i32* %69)
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUG_ON(i32 %72)
  %74 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %75 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %74, i32 0, i32 2
  %76 = load i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %75, align 8
  %77 = bitcast i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %76 to i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*
  %78 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %79 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %78, i32 0, i32 1
  store i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %77, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %79, align 8
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %81 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %80, i32 0, i32 2
  store i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* null, i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %81, align 8
  %82 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %85 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %89 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %88, i32 0, i32 1
  %90 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %89, align 8
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %92 = bitcast %struct.lpfc_hba* %91 to %struct.lpfc_hba.0*
  %93 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %94 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %95 = call i32 %90(%struct.lpfc_hba.0* %92, %struct.lpfc_iocbq* %93, %struct.lpfc_iocbq* %94)
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %97 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %96, i32 0, i32 1
  %98 = call i32 @atomic_dec(i32* %97)
  %99 = load i32, i32* @FABRIC_COMANDS_BLOCKED, align 4
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %101 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %100, i32 0, i32 0
  %102 = call i32 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %67
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %106 = call i32 @lpfc_resume_fabric_iocbs(%struct.lpfc_hba* %105)
  br label %107

107:                                              ; preds = %104, %67
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lpfc_block_fabric_iocbs(%struct.lpfc_hba*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @lpfc_resume_fabric_iocbs(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
