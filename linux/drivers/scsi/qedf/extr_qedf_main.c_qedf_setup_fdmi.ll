; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_setup_fdmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_setup_fdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { %struct.TYPE_3__*, %struct.fc_lport* }
%struct.TYPE_3__ = type { i32 }
%struct.fc_lport = type { i32, i32 }
%struct.fc_host_attrs = type { i32, i32, i32, i32, i32, i32, i32 }

@PCI_EXT_CAP_ID_DSN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%02X%02X%02X%02X%02X%02X%02X%02X\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Cavium Inc.\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"QL41000\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"QLogic FastLinQ QL41000 Series 10/25/40/50GGbE Controller(FCoE)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Rev %d\00", align 1
@QEDF_VERSION = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@FW_MAJOR_VERSION = common dso_local global i32 0, align 4
@FW_MINOR_VERSION = common dso_local global i32 0, align 4
@FW_REVISION_VERSION = common dso_local global i32 0, align 4
@FW_ENGINEERING_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ctx*)* @qedf_setup_fdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_setup_fdmi(%struct.qedf_ctx* %0) #0 {
  %2 = alloca %struct.qedf_ctx*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_host_attrs*, align 8
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %2, align 8
  %8 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %8, i32 0, i32 1
  %10 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  store %struct.fc_lport* %10, %struct.fc_lport** %3, align 8
  %11 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %12 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.fc_host_attrs* @shost_to_fc_host(i32 %13)
  store %struct.fc_host_attrs* %14, %struct.fc_host_attrs** %4, align 8
  %15 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %16 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* @PCI_EXT_CAP_ID_DSN, align 4
  %21 = call i32 @pci_find_ext_capability(%struct.TYPE_3__* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 4
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %41, %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %38
  %40 = call i32 @pci_read_config_byte(%struct.TYPE_3__* %33, i32 %36, i32* %39)
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %4, align 8
  %46 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %55 = load i32, i32* %54, align 16
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %47, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51, i32 %53, i32 %55, i32 %57, i32 %59, i32 %61, i32 %63)
  br label %70

65:                                               ; preds = %1
  %66 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %4, align 8
  %67 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %68, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %44
  %71 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %4, align 8
  %72 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %73, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %4, align 8
  %76 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %77, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %79 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %4, align 8
  %80 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %81, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %83 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %4, align 8
  %84 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %87 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %85, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %4, align 8
  %93 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** @QEDF_VERSION, align 8
  %96 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %94, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  %97 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %4, align 8
  %98 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @FW_MAJOR_VERSION, align 4
  %101 = load i32, i32* @FW_MINOR_VERSION, align 4
  %102 = load i32, i32* @FW_REVISION_VERSION, align 4
  %103 = load i32, i32* @FW_ENGINEERING_VERSION, align 4
  %104 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %99, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %100, i32 %101, i32 %102, i32 %103)
  ret void
}

declare dso_local %struct.fc_host_attrs* @shost_to_fc_host(i32) #1

declare dso_local i32 @pci_find_ext_capability(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
