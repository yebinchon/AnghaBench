; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_ringtxcmpl_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_ringtxcmpl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32 }
%struct.lpfc_sli_ring = type { i64, i32, i32, i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_IO_ON_TXCMPLQ = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i64 0, align 8
@CMD_ABORT_XRI_CN = common dso_local global i64 0, align 8
@CMD_CLOSE_XRI_CN = common dso_local global i64 0, align 8
@FC_UNLOADING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)* @lpfc_sli_ringtxcmpl_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_ringtxcmpl_put(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_sli_ring*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LPFC_SLI_REV4, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %14 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %13, i32 0, i32 3
  %15 = call i32 @lockdep_assert_held(i32* %14)
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 2
  %19 = call i32 @lockdep_assert_held(i32* %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %22 = icmp ne %struct.lpfc_iocbq* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %27 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %26, i32 0, i32 3
  %28 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %28, i32 0, i32 2
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load i32, i32* @LPFC_IO_ON_TXCMPLQ, align 4
  %32 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %33 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %37 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %41 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LPFC_ELS_RING, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %20
  %49 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %50 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CMD_ABORT_XRI_CN, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %93

55:                                               ; preds = %48
  %56 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %57 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CMD_CLOSE_XRI_CN, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %55
  %63 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %64 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = icmp ne %struct.TYPE_4__* %65, null
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %71 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FC_UNLOADING, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %62
  %79 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %80 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i64, i64* @jiffies, align 8
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 %86, 1
  %88 = mul nsw i32 1000, %87
  %89 = call i64 @msecs_to_jiffies(i32 %88)
  %90 = add nsw i64 %83, %89
  %91 = call i32 @mod_timer(i32* %82, i64 %90)
  br label %92

92:                                               ; preds = %78, %62
  br label %93

93:                                               ; preds = %92, %55, %48, %20
  ret i32 0
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
