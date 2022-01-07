; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_session_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_session_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.beiscsi_session* }
%struct.beiscsi_session = type { i32 }
%struct.iscsi_endpoint = type { %struct.beiscsi_endpoint* }
%struct.beiscsi_endpoint = type { %struct.beiscsi_hba* }
%struct.beiscsi_hba = type { %struct.TYPE_4__*, %struct.Scsi_Host*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.beiscsi_io_task = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"beiscsi_session_create: invalid ep\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"BS_%d : HBA in error 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"BS_%d : In beiscsi_session_create\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [79 x i8] c"BS_%d : Cannot handle %d cmds.Max cmds per session supported is %d. Using %d.\0A\00", align 1
@beiscsi_iscsi_transport = common dso_local global i32 0, align 4
@ISCSI_MAX_TARGET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"beiscsi_bhs_pool\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_cls_session* @beiscsi_session_create(%struct.iscsi_endpoint* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_cls_session*, align 8
  %6 = alloca %struct.iscsi_endpoint*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.beiscsi_endpoint*, align 8
  %12 = alloca %struct.iscsi_cls_session*, align 8
  %13 = alloca %struct.beiscsi_hba*, align 8
  %14 = alloca %struct.iscsi_session*, align 8
  %15 = alloca %struct.beiscsi_session*, align 8
  %16 = alloca %struct.beiscsi_io_task*, align 8
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  %18 = icmp ne %struct.iscsi_endpoint* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %5, align 8
  br label %112

21:                                               ; preds = %4
  %22 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  %23 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %22, i32 0, i32 0
  %24 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %23, align 8
  store %struct.beiscsi_endpoint* %24, %struct.beiscsi_endpoint** %11, align 8
  %25 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %11, align 8
  %26 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %25, i32 0, i32 0
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %26, align 8
  store %struct.beiscsi_hba* %27, %struct.beiscsi_hba** %13, align 8
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %29 = call i32 @beiscsi_hba_is_online(%struct.beiscsi_hba* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %21
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %33 = load i32, i32* @KERN_INFO, align 4
  %34 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %36 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %5, align 8
  br label %112

39:                                               ; preds = %21
  %40 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %43 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %11, align 8
  %46 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %45, i32 0, i32 0
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %46, align 8
  %48 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %44, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %39
  %53 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %54 = load i32, i32* @KERN_ERR, align 4
  %55 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %11, align 8
  %58 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %57, i32 0, i32 0
  %59 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %58, align 8
  %60 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %11, align 8
  %64 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %63, i32 0, i32 0
  %65 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %64, align 8
  %66 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i64 %56, i64 %62, i64 %68)
  %70 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %11, align 8
  %71 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %70, i32 0, i32 0
  %72 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %71, align 8
  %73 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %52, %39
  %77 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %78 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %77, i32 0, i32 1
  %79 = load %struct.Scsi_Host*, %struct.Scsi_Host** %78, align 8
  store %struct.Scsi_Host* %79, %struct.Scsi_Host** %10, align 8
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @ISCSI_MAX_TARGET, align 4
  %84 = call %struct.iscsi_cls_session* @iscsi_session_setup(i32* @beiscsi_iscsi_transport, %struct.Scsi_Host* %80, i64 %81, i32 4, i32 4, i32 %82, i32 %83)
  store %struct.iscsi_cls_session* %84, %struct.iscsi_cls_session** %12, align 8
  %85 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %12, align 8
  %86 = icmp ne %struct.iscsi_cls_session* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %5, align 8
  br label %112

88:                                               ; preds = %76
  %89 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %12, align 8
  %90 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %89, i32 0, i32 0
  %91 = load %struct.iscsi_session*, %struct.iscsi_session** %90, align 8
  store %struct.iscsi_session* %91, %struct.iscsi_session** %14, align 8
  %92 = load %struct.iscsi_session*, %struct.iscsi_session** %14, align 8
  %93 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %92, i32 0, i32 0
  %94 = load %struct.beiscsi_session*, %struct.beiscsi_session** %93, align 8
  store %struct.beiscsi_session* %94, %struct.beiscsi_session** %15, align 8
  %95 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %96 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @dma_pool_create(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %98, i32 4, i32 64, i32 0)
  %100 = load %struct.beiscsi_session*, %struct.beiscsi_session** %15, align 8
  %101 = getelementptr inbounds %struct.beiscsi_session, %struct.beiscsi_session* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.beiscsi_session*, %struct.beiscsi_session** %15, align 8
  %103 = getelementptr inbounds %struct.beiscsi_session, %struct.beiscsi_session* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %88
  br label %109

107:                                              ; preds = %88
  %108 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %12, align 8
  store %struct.iscsi_cls_session* %108, %struct.iscsi_cls_session** %5, align 8
  br label %112

109:                                              ; preds = %106
  %110 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %12, align 8
  %111 = call i32 @iscsi_session_teardown(%struct.iscsi_cls_session* %110)
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %5, align 8
  br label %112

112:                                              ; preds = %109, %107, %87, %31, %19
  %113 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  ret %struct.iscsi_cls_session* %113
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @beiscsi_hba_is_online(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local %struct.iscsi_cls_session* @iscsi_session_setup(i32*, %struct.Scsi_Host*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @iscsi_session_teardown(%struct.iscsi_cls_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
