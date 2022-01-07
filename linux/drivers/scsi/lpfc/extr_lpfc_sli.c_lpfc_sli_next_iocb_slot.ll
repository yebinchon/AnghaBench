; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_iocb_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_iocb_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, %struct.lpfc_pgp* }
%struct.lpfc_pgp = type { i32 }
%struct.lpfc_sli_ring = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"0315 Ring %d issue: portCmdGet %d is bigger than cmd ring %d\0A\00", align 1
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@HA_ERATT = common dso_local global i32 0, align 4
@HS_FFER3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.lpfc_hba*, %struct.lpfc_sli_ring*)* @lpfc_sli_next_iocb_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @lpfc_sli_next_iocb_slot(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_sli_ring*, align 8
  %6 = alloca %struct.lpfc_pgp*, align 8
  %7 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %5, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 4
  %10 = load %struct.lpfc_pgp*, %struct.lpfc_pgp** %9, align 8
  %11 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.lpfc_pgp, %struct.lpfc_pgp* %10, i64 %13
  store %struct.lpfc_pgp* %14, %struct.lpfc_pgp** %6, align 8
  %15 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 3
  %22 = call i32 @lockdep_assert_held(i32* %21)
  %23 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %24 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %27, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %2
  %35 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %36 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %45 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %34, %2
  %49 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %55 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %53, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %123

63:                                               ; preds = %48
  %64 = load %struct.lpfc_pgp*, %struct.lpfc_pgp** %6, align 8
  %65 = getelementptr inbounds %struct.lpfc_pgp, %struct.lpfc_pgp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @le32_to_cpu(i32 %66)
  %68 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %69 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  store i64 %67, i64* %71, align 8
  %72 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %73 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp sge i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %63
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %84 = load i32, i32* @KERN_ERR, align 4
  %85 = load i32, i32* @LOG_SLI, align 4
  %86 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %87 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %90 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %88, i64 %93, i64 %94)
  %96 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @HA_ERATT, align 4
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %101 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @HS_FFER3, align 4
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %108 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %107)
  store i32* null, i32** %3, align 8
  br label %127

109:                                              ; preds = %63
  %110 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %111 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %116 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %114, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  store i32* null, i32** %3, align 8
  br label %127

122:                                              ; preds = %109
  br label %123

123:                                              ; preds = %122, %48
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %125 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %126 = call i32* @lpfc_cmd_iocb(%struct.lpfc_hba* %124, %struct.lpfc_sli_ring* %125)
  store i32* %126, i32** %3, align 8
  br label %127

127:                                              ; preds = %123, %121, %82
  %128 = load i32*, i32** %3, align 8
  ret i32* %128
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

declare dso_local i32* @lpfc_cmd_iocb(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
