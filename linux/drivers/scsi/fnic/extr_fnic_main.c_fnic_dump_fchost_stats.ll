; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_main.c_fnic_dump_fchost_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_main.c_fnic_dump_fchost_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.fc_host_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"fnic: seconds since last reset = %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"fnic: tx frames\09\09= %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"fnic: tx words\09\09= %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"fnic: rx frames\09\09= %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"fnic: rx words\09\09= %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"fnic: lip count\09\09= %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"fnic: nos count\09\09= %llu\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"fnic: error frames\09\09= %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"fnic: dumped frames\09= %llu\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"fnic: link failure count\09= %llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"fnic: loss of sync count\09= %llu\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"fnic: loss of signal count\09= %llu\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"fnic: prim seq protocol err count = %llu\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"fnic: invalid tx word count= %llu\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"fnic: invalid crc count\09= %llu\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"fnic: fcp input requests\09= %llu\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"fnic: fcp output requests\09= %llu\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"fnic: fcp control requests\09= %llu\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"fnic: fcp input megabytes\09= %llu\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"fnic: fcp output megabytes\09= %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_dump_fchost_stats(%struct.Scsi_Host* %0, %struct.fc_host_statistics* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.fc_host_statistics*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.fc_host_statistics* %1, %struct.fc_host_statistics** %4, align 8
  %5 = load i32, i32* @KERN_NOTICE, align 4
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %8 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %7, i32 0, i32 19
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @FNIC_MAIN_NOTE(i32 %5, %struct.Scsi_Host* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @KERN_NOTICE, align 4
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %13 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %14 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %13, i32 0, i32 18
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @FNIC_MAIN_NOTE(i32 %11, %struct.Scsi_Host* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @KERN_NOTICE, align 4
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %19 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %20 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %19, i32 0, i32 17
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @FNIC_MAIN_NOTE(i32 %17, %struct.Scsi_Host* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @KERN_NOTICE, align 4
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %25 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %26 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %25, i32 0, i32 16
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @FNIC_MAIN_NOTE(i32 %23, %struct.Scsi_Host* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @KERN_NOTICE, align 4
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %31 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %32 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %31, i32 0, i32 15
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @FNIC_MAIN_NOTE(i32 %29, %struct.Scsi_Host* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @KERN_NOTICE, align 4
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %37 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %38 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %37, i32 0, i32 14
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @FNIC_MAIN_NOTE(i32 %35, %struct.Scsi_Host* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @KERN_NOTICE, align 4
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %43 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %44 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %43, i32 0, i32 13
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @FNIC_MAIN_NOTE(i32 %41, %struct.Scsi_Host* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @KERN_NOTICE, align 4
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %49 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %50 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @FNIC_MAIN_NOTE(i32 %47, %struct.Scsi_Host* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @KERN_NOTICE, align 4
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %55 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %56 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @FNIC_MAIN_NOTE(i32 %53, %struct.Scsi_Host* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @KERN_NOTICE, align 4
  %60 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %61 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %62 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @FNIC_MAIN_NOTE(i32 %59, %struct.Scsi_Host* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @KERN_NOTICE, align 4
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %67 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %68 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @FNIC_MAIN_NOTE(i32 %65, %struct.Scsi_Host* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @KERN_NOTICE, align 4
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %73 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %74 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @FNIC_MAIN_NOTE(i32 %71, %struct.Scsi_Host* %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @KERN_NOTICE, align 4
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %79 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %80 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @FNIC_MAIN_NOTE(i32 %77, %struct.Scsi_Host* %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @KERN_NOTICE, align 4
  %84 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %85 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %86 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @FNIC_MAIN_NOTE(i32 %83, %struct.Scsi_Host* %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @KERN_NOTICE, align 4
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %91 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %92 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @FNIC_MAIN_NOTE(i32 %89, %struct.Scsi_Host* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @KERN_NOTICE, align 4
  %96 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %97 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %98 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @FNIC_MAIN_NOTE(i32 %95, %struct.Scsi_Host* %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @KERN_NOTICE, align 4
  %102 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %103 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %104 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @FNIC_MAIN_NOTE(i32 %101, %struct.Scsi_Host* %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @KERN_NOTICE, align 4
  %108 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %109 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %110 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @FNIC_MAIN_NOTE(i32 %107, %struct.Scsi_Host* %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @KERN_NOTICE, align 4
  %114 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %115 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %116 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @FNIC_MAIN_NOTE(i32 %113, %struct.Scsi_Host* %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @KERN_NOTICE, align 4
  %120 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %121 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %122 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @FNIC_MAIN_NOTE(i32 %119, %struct.Scsi_Host* %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 %123)
  ret void
}

declare dso_local i32 @FNIC_MAIN_NOTE(i32, %struct.Scsi_Host*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
