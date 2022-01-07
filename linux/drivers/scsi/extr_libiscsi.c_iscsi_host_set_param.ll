; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_host_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_host_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iscsi_host = type { i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_host_set_param(%struct.Scsi_Host* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %12 = call %struct.iscsi_host* @shost_priv(%struct.Scsi_Host* %11)
  store %struct.iscsi_host* %12, %struct.iscsi_host** %10, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %29 [
    i32 128, label %14
    i32 130, label %19
    i32 129, label %24
  ]

14:                                               ; preds = %4
  %15 = load %struct.iscsi_host*, %struct.iscsi_host** %10, align 8
  %16 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %15, i32 0, i32 2
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @iscsi_switch_str_param(i32* %16, i8* %17)
  store i32 %18, i32* %5, align 4
  br label %32

19:                                               ; preds = %4
  %20 = load %struct.iscsi_host*, %struct.iscsi_host** %10, align 8
  %21 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %20, i32 0, i32 1
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @iscsi_switch_str_param(i32* %21, i8* %22)
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %4
  %25 = load %struct.iscsi_host*, %struct.iscsi_host** %10, align 8
  %26 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %25, i32 0, i32 0
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @iscsi_switch_str_param(i32* %26, i8* %27)
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %24, %19, %14
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.iscsi_host* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @iscsi_switch_str_param(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
