; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c_scsi_sysfs_add_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c_scsi_sysfs_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_sysfs_add_host(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %42, %12
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %13
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 2
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @device_create_file(i32* %26, i64 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %53

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %13

45:                                               ; preds = %13
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 0
  %49 = call i32 @transport_register_device(i32* %48)
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %50, i32 0, i32 0
  %52 = call i32 @transport_configure_device(i32* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %46, %39
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @device_create_file(i32*, i64) #1

declare dso_local i32 @transport_register_device(i32*) #1

declare dso_local i32 @transport_configure_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
