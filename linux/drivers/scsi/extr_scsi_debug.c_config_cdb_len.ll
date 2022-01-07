; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_config_cdb_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_config_cdb_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i32 }

@sdebug_cdb_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unexpected cdb_len=%d, force to 10\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @config_cdb_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_cdb_len(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %3 = load i32, i32* @sdebug_cdb_len, align 4
  switch i32 %3, label %39 [
    i32 6, label %4
    i32 10, label %11
    i32 12, label %18
    i32 16, label %25
    i32 32, label %32
  ]

4:                                                ; preds = %1
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 2
  store i32 0, i32* %10, align 4
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 2
  store i32 0, i32* %17, align 4
  br label %48

18:                                               ; preds = %1
  %19 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 2
  store i32 1, i32* %24, align 4
  br label %48

25:                                               ; preds = %1
  %26 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 2
  store i32 1, i32* %31, align 4
  br label %48

32:                                               ; preds = %1
  %33 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 2
  store i32 1, i32* %38, align 4
  br label %48

39:                                               ; preds = %1
  %40 = load i32, i32* @sdebug_cdb_len, align 4
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %43 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %47 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %46, i32 0, i32 2
  store i32 0, i32* %47, align 4
  store i32 10, i32* @sdebug_cdb_len, align 4
  br label %48

48:                                               ; preds = %39, %32, %25, %18, %11, %4
  ret void
}

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
