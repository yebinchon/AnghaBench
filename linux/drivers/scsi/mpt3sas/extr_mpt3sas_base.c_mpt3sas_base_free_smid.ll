; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c_mpt3sas_base_free_smid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c_mpt3sas_base_free_smid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i64, i64, i64, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.scsiio_tracker = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt3sas_base_free_smid(%struct.MPT3SAS_ADAPTER* %0, i64 %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsiio_tracker*, align 8
  %8 = alloca i8*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %11 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call %struct.scsiio_tracker* @_get_st_from_smid(%struct.MPT3SAS_ADAPTER* %15, i64 %16)
  store %struct.scsiio_tracker* %17, %struct.scsiio_tracker** %7, align 8
  %18 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %7, align 8
  %19 = icmp ne %struct.scsiio_tracker* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %22 = call i32 @_base_recovery_check(%struct.MPT3SAS_ADAPTER* %21)
  br label %107

23:                                               ; preds = %14
  %24 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i8* @mpt3sas_base_get_msg_frame(%struct.MPT3SAS_ADAPTER* %24, i64 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %29 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memset(i8* %27, i32 0, i32 %30)
  %32 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %33 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %7, align 8
  %34 = call i32 @mpt3sas_base_clear_st(%struct.MPT3SAS_ADAPTER* %32, %struct.scsiio_tracker* %33)
  %35 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %36 = call i32 @_base_recovery_check(%struct.MPT3SAS_ADAPTER* %35)
  br label %107

37:                                               ; preds = %2
  %38 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %39 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %38, i32 0, i32 3
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %44 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %37
  %48 = load i64, i64* %4, align 8
  %49 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %50 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  %54 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %55 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %54, i32 0, i32 7
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 255, i32* %60, align 4
  %61 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %62 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %61, i32 0, i32 7
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %69 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %68, i32 0, i32 6
  %70 = call i32 @list_add(i32* %67, i32* %69)
  br label %102

71:                                               ; preds = %37
  %72 = load i64, i64* %4, align 8
  %73 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %74 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp sle i64 %72, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = load i64, i64* %4, align 8
  %79 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %80 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %6, align 4
  %84 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %85 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %84, i32 0, i32 5
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 255, i32* %90, align 4
  %91 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %92 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %91, i32 0, i32 5
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %99 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %98, i32 0, i32 4
  %100 = call i32 @list_add(i32* %97, i32* %99)
  br label %101

101:                                              ; preds = %77, %71
  br label %102

102:                                              ; preds = %101, %47
  %103 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %104 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %103, i32 0, i32 3
  %105 = load i64, i64* %5, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  br label %107

107:                                              ; preds = %102, %23, %20
  ret void
}

declare dso_local %struct.scsiio_tracker* @_get_st_from_smid(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @_base_recovery_check(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i8* @mpt3sas_base_get_msg_frame(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mpt3sas_base_clear_st(%struct.MPT3SAS_ADAPTER*, %struct.scsiio_tracker*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
