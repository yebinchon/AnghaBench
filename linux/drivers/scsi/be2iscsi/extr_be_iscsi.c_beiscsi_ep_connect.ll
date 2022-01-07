; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_ep_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_ep_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.beiscsi_endpoint* }
%struct.beiscsi_endpoint = type { %struct.iscsi_endpoint*, %struct.beiscsi_hba* }
%struct.beiscsi_hba = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sockaddr = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"beiscsi_ep_connect shost is NULL\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"BS_%d : HBA in error 0x%lx\0A\00", align 1
@BEISCSI_HBA_LINK_UP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"BS_%d : The Adapter Port state is Down!!!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"BS_%d : Failed in beiscsi_open_conn\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_endpoint* @beiscsi_ep_connect(%struct.Scsi_Host* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_endpoint*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.beiscsi_hba*, align 8
  %9 = alloca %struct.beiscsi_endpoint*, align 8
  %10 = alloca %struct.iscsi_endpoint*, align 8
  %11 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %13 = icmp ne %struct.Scsi_Host* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %11, align 4
  %19 = call %struct.iscsi_endpoint* @ERR_PTR(i32 %18)
  store %struct.iscsi_endpoint* %19, %struct.iscsi_endpoint** %4, align 8
  br label %90

20:                                               ; preds = %3
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %22 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %21)
  store %struct.beiscsi_hba* %22, %struct.beiscsi_hba** %8, align 8
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %24 = call i32 @beiscsi_hba_is_online(%struct.beiscsi_hba* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %30 = load i32, i32* @KERN_INFO, align 4
  %31 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %33 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.iscsi_endpoint* @ERR_PTR(i32 %36)
  store %struct.iscsi_endpoint* %37, %struct.iscsi_endpoint** %4, align 8
  br label %90

38:                                               ; preds = %20
  %39 = load i32, i32* @BEISCSI_HBA_LINK_UP, align 4
  %40 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %41 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %40, i32 0, i32 0
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %48 = load i32, i32* @KERN_WARNING, align 4
  %49 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %50 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %11, align 4
  %52 = call %struct.iscsi_endpoint* @ERR_PTR(i32 %51)
  store %struct.iscsi_endpoint* %52, %struct.iscsi_endpoint** %4, align 8
  br label %90

53:                                               ; preds = %38
  %54 = call %struct.iscsi_endpoint* @iscsi_create_endpoint(i32 16)
  store %struct.iscsi_endpoint* %54, %struct.iscsi_endpoint** %10, align 8
  %55 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %10, align 8
  %56 = icmp ne %struct.iscsi_endpoint* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call %struct.iscsi_endpoint* @ERR_PTR(i32 %60)
  store %struct.iscsi_endpoint* %61, %struct.iscsi_endpoint** %4, align 8
  br label %90

62:                                               ; preds = %53
  %63 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %10, align 8
  %64 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %63, i32 0, i32 0
  %65 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %64, align 8
  store %struct.beiscsi_endpoint* %65, %struct.beiscsi_endpoint** %9, align 8
  %66 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %67 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %9, align 8
  %68 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %67, i32 0, i32 1
  store %struct.beiscsi_hba* %66, %struct.beiscsi_hba** %68, align 8
  %69 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %10, align 8
  %70 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %9, align 8
  %71 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %70, i32 0, i32 0
  store %struct.iscsi_endpoint* %69, %struct.iscsi_endpoint** %71, align 8
  %72 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %10, align 8
  %73 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @beiscsi_open_conn(%struct.iscsi_endpoint* %72, i32* null, %struct.sockaddr* %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %62
  %79 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %80 = load i32, i32* @KERN_ERR, align 4
  %81 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %82 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %85

83:                                               ; preds = %62
  %84 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %10, align 8
  store %struct.iscsi_endpoint* %84, %struct.iscsi_endpoint** %4, align 8
  br label %90

85:                                               ; preds = %78
  %86 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %10, align 8
  %87 = call i32 @iscsi_destroy_endpoint(%struct.iscsi_endpoint* %86)
  %88 = load i32, i32* %11, align 4
  %89 = call %struct.iscsi_endpoint* @ERR_PTR(i32 %88)
  store %struct.iscsi_endpoint* %89, %struct.iscsi_endpoint** %4, align 8
  br label %90

90:                                               ; preds = %85, %83, %57, %44, %26, %14
  %91 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %4, align 8
  ret %struct.iscsi_endpoint* %91
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.iscsi_endpoint* @ERR_PTR(i32) #1

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @beiscsi_hba_is_online(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.iscsi_endpoint* @iscsi_create_endpoint(i32) #1

declare dso_local i32 @beiscsi_open_conn(%struct.iscsi_endpoint*, i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @iscsi_destroy_endpoint(%struct.iscsi_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
