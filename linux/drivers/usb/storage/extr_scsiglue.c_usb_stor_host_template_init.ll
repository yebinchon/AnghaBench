; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_scsiglue.c_usb_stor_host_template_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_scsiglue.c_usb_stor_host_template_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_host_template = type { i8*, i8*, %struct.module* }
%struct.module = type { i32 }

@usb_stor_host_template = common dso_local global %struct.scsi_host_template zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_stor_host_template_init(%struct.scsi_host_template* %0, i8* %1, %struct.module* %2) #0 {
  %4 = alloca %struct.scsi_host_template*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.module*, align 8
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.module* %2, %struct.module** %6, align 8
  %7 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %8 = bitcast %struct.scsi_host_template* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.scsi_host_template* @usb_stor_host_template to i8*), i64 24, i1 false)
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.module*, %struct.module** %6, align 8
  %16 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %16, i32 0, i32 2
  store %struct.module* %15, %struct.module** %17, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
