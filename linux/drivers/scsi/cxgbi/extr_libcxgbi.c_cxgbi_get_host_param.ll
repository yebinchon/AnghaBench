; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_get_host_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_get_host_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.cxgbi_hba = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.cxgbi_sock = type { i32 }
%struct.sockaddr = type opaque

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Could not get host param. netdev for host not set.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"shost 0x%p, hba 0x%p,%s, param %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%pIS\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"hba %s, addr %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_get_host_param(%struct.Scsi_Host* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cxgbi_hba*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxgbi_sock*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %12 = call %struct.cxgbi_hba* @iscsi_host_priv(%struct.Scsi_Host* %11)
  store %struct.cxgbi_hba* %12, %struct.cxgbi_hba** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %8, align 8
  %14 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @KERN_ERR, align 4
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %20 = call i32 @shost_printk(i32 %18, %struct.Scsi_Host* %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %87

23:                                               ; preds = %3
  %24 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %27 = bitcast %struct.Scsi_Host* %26 to i8*
  %28 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %8, align 8
  %29 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %8, align 8
  %30 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32, i8*, i8*, ...) @log_debug(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %27, %struct.cxgbi_hba* %28, i8* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %80 [
    i32 130, label %37
    i32 128, label %45
    i32 129, label %53
  ]

37:                                               ; preds = %23
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %8, align 8
  %40 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sysfs_format_mac(i8* %38, i32 %43, i32 6)
  store i32 %44, i32* %9, align 4
  br label %85

45:                                               ; preds = %23
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %8, align 8
  %48 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  store i32 %52, i32* %9, align 4
  br label %85

53:                                               ; preds = %23
  %54 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %8, align 8
  %55 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %8, align 8
  %58 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.cxgbi_sock* @find_sock_on_port(i32 %56, i32 %59)
  store %struct.cxgbi_sock* %60, %struct.cxgbi_sock** %10, align 8
  %61 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %10, align 8
  %62 = icmp ne %struct.cxgbi_sock* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %10, align 8
  %66 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %65, i32 0, i32 0
  %67 = bitcast i32* %66 to %struct.sockaddr*
  %68 = bitcast %struct.sockaddr* %67 to i8*
  %69 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %63, %53
  %71 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %72 = shl i32 1, %71
  %73 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %8, align 8
  %74 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 (i32, i8*, i8*, ...) @log_debug(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %77, i8* %78)
  br label %85

80:                                               ; preds = %23
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @iscsi_host_get_param(%struct.Scsi_Host* %81, i32 %82, i8* %83)
  store i32 %84, i32* %4, align 4
  br label %87

85:                                               ; preds = %70, %45, %37
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %80, %17
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.cxgbi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32 @log_debug(i32, i8*, i8*, ...) #1

declare dso_local i32 @sysfs_format_mac(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local %struct.cxgbi_sock* @find_sock_on_port(i32, i32) #1

declare dso_local i32 @iscsi_host_get_param(%struct.Scsi_Host*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
