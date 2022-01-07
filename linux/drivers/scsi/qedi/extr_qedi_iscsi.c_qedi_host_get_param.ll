; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_host_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_host_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.qedi_ctx = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"host%d\0A\00", align 1
@TCP_IPV4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%pI6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32, i8*)* @qedi_host_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_host_get_param(%struct.Scsi_Host* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qedi_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %11 = call %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host* %10)
  store %struct.qedi_ctx* %11, %struct.qedi_ctx** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %44 [
    i32 130, label %13
    i32 128, label %19
    i32 129, label %25
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sysfs_format_mac(i8* %14, i32 %17, i32 6)
  store i32 %18, i32* %9, align 4
  br label %49

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %9, align 4
  br label %49

25:                                               ; preds = %3
  %26 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TCP_IPV4, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %9, align 4
  br label %43

37:                                               ; preds = %25
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %37, %31
  br label %49

44:                                               ; preds = %3
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @iscsi_host_get_param(%struct.Scsi_Host* %45, i32 %46, i8* %47)
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %43, %19, %13
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @sysfs_format_mac(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @iscsi_host_get_param(%struct.Scsi_Host*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
