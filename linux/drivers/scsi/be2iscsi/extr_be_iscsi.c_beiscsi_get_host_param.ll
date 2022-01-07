; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_host_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_host_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.beiscsi_hba = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BS_%d : HBA in error 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"BS_%d : In beiscsi_get_host_param, param = %d\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"BS_%d : beiscsi_get_macaddr Failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"BS_%d : Retrieving Initiator Name Failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_get_host_param(%struct.Scsi_Host* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.beiscsi_hba*, align 8
  %9 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %11 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %10)
  store %struct.beiscsi_hba* %11, %struct.beiscsi_hba** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %13 = call i32 @beiscsi_hba_is_online(%struct.beiscsi_hba* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %17 = load i32, i32* @KERN_INFO, align 4
  %18 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %20 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* %4, align 4
  br label %82

23:                                               ; preds = %3
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %25 = load i32, i32* @KERN_INFO, align 4
  %26 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %75 [
    i32 131, label %30
    i32 130, label %42
    i32 128, label %61
    i32 129, label %68
  ]

30:                                               ; preds = %23
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %33 = call i32 @beiscsi_get_macaddr(i8* %31, %struct.beiscsi_hba* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %38 = load i32, i32* @KERN_ERR, align 4
  %39 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %40 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %82

41:                                               ; preds = %30
  br label %80

42:                                               ; preds = %23
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @beiscsi_get_initiator_name(%struct.beiscsi_hba* %43, i8* %44, i32 1)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @beiscsi_get_initiator_name(%struct.beiscsi_hba* %49, i8* %50, i32 0)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %58 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %54, %48
  br label %60

60:                                               ; preds = %59, %42
  br label %80

61:                                               ; preds = %23
  %62 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %63 = call i32 @beiscsi_get_port_state(%struct.Scsi_Host* %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %66 = call i8* @iscsi_get_port_state_name(%struct.Scsi_Host* %65)
  %67 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  store i32 %67, i32* %9, align 4
  br label %80

68:                                               ; preds = %23
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %70 = call i32 @beiscsi_get_port_speed(%struct.Scsi_Host* %69)
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %73 = call i8* @iscsi_get_port_speed_name(%struct.Scsi_Host* %72)
  %74 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  store i32 %74, i32* %9, align 4
  br label %80

75:                                               ; preds = %23
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @iscsi_host_get_param(%struct.Scsi_Host* %76, i32 %77, i8* %78)
  store i32 %79, i32* %4, align 4
  br label %82

80:                                               ; preds = %68, %61, %60, %41
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %75, %36, %15
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @beiscsi_hba_is_online(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @beiscsi_get_macaddr(i8*, %struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_get_initiator_name(%struct.beiscsi_hba*, i8*, i32) #1

declare dso_local i32 @beiscsi_get_port_state(%struct.Scsi_Host*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @iscsi_get_port_state_name(%struct.Scsi_Host*) #1

declare dso_local i32 @beiscsi_get_port_speed(%struct.Scsi_Host*) #1

declare dso_local i8* @iscsi_get_port_speed_name(%struct.Scsi_Host*) #1

declare dso_local i32 @iscsi_host_get_param(%struct.Scsi_Host*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
