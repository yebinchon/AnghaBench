; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hbq_to_firmware_s3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hbq_to_firmware_s3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, %struct.hbq_s*, i32 }
%struct.hbq_s = type { i32, i32, i32 }
%struct.hbq_dmabuf = type { %struct.TYPE_8__, i8*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.lpfc_hbq_entry = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i64, %struct.hbq_dmabuf*)* @lpfc_sli_hbq_to_firmware_s3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_hbq_to_firmware_s3(%struct.lpfc_hba* %0, i64 %1, %struct.hbq_dmabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hbq_dmabuf*, align 8
  %8 = alloca %struct.lpfc_hbq_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hbq_s*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hbq_dmabuf* %2, %struct.hbq_dmabuf** %7, align 8
  %11 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %12 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 2
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.lpfc_hbq_entry* @lpfc_sli_next_hbq_slot(%struct.lpfc_hba* %18, i64 %19)
  store %struct.lpfc_hbq_entry* %20, %struct.lpfc_hbq_entry** %8, align 8
  %21 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %22 = icmp ne %struct.lpfc_hbq_entry* %21, null
  br i1 %22, label %23, label %96

23:                                               ; preds = %3
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  %26 = load %struct.hbq_s*, %struct.hbq_s** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %26, i64 %27
  store %struct.hbq_s* %28, %struct.hbq_s** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i8* @putPaddrHigh(i32 %29)
  %31 = call i8* @le32_to_cpu(i8* %30)
  %32 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %33 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i8* @putPaddrLow(i32 %35)
  %37 = call i8* @le32_to_cpu(i8* %36)
  %38 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %39 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i8* %37, i8** %40, align 8
  %41 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %42 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %45 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %43, i32* %48, align 8
  %49 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %50 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %55 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @le32_to_cpu(i8* %58)
  %60 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %61 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i8* %59, i8** %63, align 8
  %64 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %65 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @le32_to_cpu(i8* %66)
  %68 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %69 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.hbq_s*, %struct.hbq_s** %10, align 8
  %71 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hbq_s*, %struct.hbq_s** %10, align 8
  %74 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.hbq_s*, %struct.hbq_s** %10, align 8
  %76 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = add i64 %86, %87
  %89 = call i32 @readl(i64 %88)
  %90 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %91 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.hbq_s*, %struct.hbq_s** %10, align 8
  %94 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %93, i32 0, i32 0
  %95 = call i32 @list_add_tail(i32* %92, i32* %94)
  store i32 0, i32* %4, align 4
  br label %99

96:                                               ; preds = %3
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %96, %23
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.lpfc_hbq_entry* @lpfc_sli_next_hbq_slot(%struct.lpfc_hba*, i64) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i8* @putPaddrHigh(i32) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
