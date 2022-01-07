; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi.c_scsi_get_vpd_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi.c_scsi_get_vpd_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_vpd = type { i32, i32 }
%struct.scsi_device = type { i32 }

@SCSI_VPD_PG_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_vpd* (%struct.scsi_device*, i32)* @scsi_get_vpd_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_vpd* @scsi_get_vpd_buf(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_vpd*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_vpd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @SCSI_VPD_PG_LEN, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.scsi_vpd* @kmalloc(i32 %14, i32 %15)
  store %struct.scsi_vpd* %16, %struct.scsi_vpd** %6, align 8
  %17 = load %struct.scsi_vpd*, %struct.scsi_vpd** %6, align 8
  %18 = icmp ne %struct.scsi_vpd* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  store %struct.scsi_vpd* null, %struct.scsi_vpd** %3, align 8
  br label %46

20:                                               ; preds = %10
  %21 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %22 = load %struct.scsi_vpd*, %struct.scsi_vpd** %6, align 8
  %23 = getelementptr inbounds %struct.scsi_vpd, %struct.scsi_vpd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @scsi_vpd_inquiry(%struct.scsi_device* %21, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.scsi_vpd*, %struct.scsi_vpd** %6, align 8
  %32 = call i32 @kfree(%struct.scsi_vpd* %31)
  store %struct.scsi_vpd* null, %struct.scsi_vpd** %3, align 8
  br label %46

33:                                               ; preds = %20
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.scsi_vpd*, %struct.scsi_vpd** %6, align 8
  %40 = call i32 @kfree(%struct.scsi_vpd* %39)
  br label %10

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.scsi_vpd*, %struct.scsi_vpd** %6, align 8
  %44 = getelementptr inbounds %struct.scsi_vpd, %struct.scsi_vpd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.scsi_vpd*, %struct.scsi_vpd** %6, align 8
  store %struct.scsi_vpd* %45, %struct.scsi_vpd** %3, align 8
  br label %46

46:                                               ; preds = %41, %30, %19
  %47 = load %struct.scsi_vpd*, %struct.scsi_vpd** %3, align 8
  ret %struct.scsi_vpd* %47
}

declare dso_local %struct.scsi_vpd* @kmalloc(i32, i32) #1

declare dso_local i32 @scsi_vpd_inquiry(%struct.scsi_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.scsi_vpd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
