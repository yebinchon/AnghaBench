; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i8*, i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@lpfc_info.lpfcinfobuf = internal global [384 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [36 x i8] c" on PCI bus %02x device %02x irq %d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" port %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c" Logical Link Speed: %d Mbps\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c" PCI resettable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lpfc_info(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [384 x i8], align 16
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %10, %struct.lpfc_vport** %3, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 0
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = bitcast [384 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 384, i1 false)
  %15 = call i32 @memset(i8* getelementptr inbounds ([384 x i8], [384 x i8]* @lpfc_info.lpfcinfobuf, i64 0, i64 0), i32 0, i32 384)
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %17 = icmp ne %struct.lpfc_hba* %16, null
  br i1 %17, label %18, label %103

18:                                               ; preds = %1
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %103

23:                                               ; preds = %18
  %24 = getelementptr inbounds [384 x i8], [384 x i8]* %6, i64 0, i64 0
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %24, i32 384, i8* %27)
  %29 = getelementptr inbounds [384 x i8], [384 x i8]* %6, i64 0, i64 0
  %30 = call i32 @strlcat(i8* getelementptr inbounds ([384 x i8], [384 x i8]* @lpfc_info.lpfcinfobuf, i64 0, i64 0), i8* %29, i32 384)
  %31 = sext i32 %30 to i64
  %32 = icmp uge i64 %31, 384
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %104

34:                                               ; preds = %23
  %35 = getelementptr inbounds [384 x i8], [384 x i8]* %6, i64 0, i64 0
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %35, i32 384, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %47, i32 %52)
  %54 = getelementptr inbounds [384 x i8], [384 x i8]* %6, i64 0, i64 0
  %55 = call i32 @strlcat(i8* getelementptr inbounds ([384 x i8], [384 x i8]* @lpfc_info.lpfcinfobuf, i64 0, i64 0), i8* %54, i32 384)
  %56 = sext i32 %55 to i64
  %57 = icmp uge i64 %56, 384
  br i1 %57, label %58, label %59

58:                                               ; preds = %34
  br label %104

59:                                               ; preds = %34
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = getelementptr inbounds [384 x i8], [384 x i8]* %6, i64 0, i64 0
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %67, i32 384, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64* %70)
  %72 = getelementptr inbounds [384 x i8], [384 x i8]* %6, i64 0, i64 0
  %73 = call i32 @strlcat(i8* getelementptr inbounds ([384 x i8], [384 x i8]* @lpfc_info.lpfcinfobuf, i64 0, i64 0), i8* %72, i32 384)
  %74 = sext i32 %73 to i64
  %75 = icmp uge i64 %74, 384
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %104

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %59
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %80 = call i32 @lpfc_sli_port_speed_get(%struct.lpfc_hba* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = getelementptr inbounds [384 x i8], [384 x i8]* %6, i64 0, i64 0
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %84, i32 384, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = getelementptr inbounds [384 x i8], [384 x i8]* %6, i64 0, i64 0
  %88 = call i32 @strlcat(i8* getelementptr inbounds ([384 x i8], [384 x i8]* @lpfc_info.lpfcinfobuf, i64 0, i64 0), i8* %87, i32 384)
  %89 = sext i32 %88 to i64
  %90 = icmp uge i64 %89, 384
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %104

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %78
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %95 = call i32 @lpfc_check_pci_resettable(%struct.lpfc_hba* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds [384 x i8], [384 x i8]* %6, i64 0, i64 0
  %99 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %98, i32 384, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %100 = getelementptr inbounds [384 x i8], [384 x i8]* %6, i64 0, i64 0
  %101 = call i32 @strlcat(i8* getelementptr inbounds ([384 x i8], [384 x i8]* @lpfc_info.lpfcinfobuf, i64 0, i64 0), i8* %100, i32 384)
  br label %102

102:                                              ; preds = %97, %93
  br label %103

103:                                              ; preds = %102, %18, %1
  br label %104

104:                                              ; preds = %103, %91, %76, %58, %33
  ret i8* getelementptr inbounds ([384 x i8], [384 x i8]* @lpfc_info.lpfcinfobuf, i64 0, i64 0)
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @lpfc_sli_port_speed_get(%struct.lpfc_hba*) #2

declare dso_local i32 @lpfc_check_pci_resettable(%struct.lpfc_hba*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
