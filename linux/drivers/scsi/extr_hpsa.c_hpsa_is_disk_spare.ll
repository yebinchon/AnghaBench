; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_is_disk_spare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_is_disk_spare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.bmic_identify_physical_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i32*)* @hpsa_is_disk_spare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_is_disk_spare(%struct.ctlr_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bmic_identify_physical_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.bmic_identify_physical_device* @kzalloc(i32 4, i32 %9)
  store %struct.bmic_identify_physical_device* %10, %struct.bmic_identify_physical_device** %6, align 8
  %11 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %12 = icmp ne %struct.bmic_identify_physical_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @GET_BMIC_DRIVE_NUMBER(i32* %17)
  %19 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %20 = call i32 @hpsa_bmic_id_physical_device(%struct.ctlr_info* %15, i32* %16, i32 %18, %struct.bmic_identify_physical_device* %19, i32 4)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %25 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 6
  %28 = and i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %23, %14
  %30 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %31 = call i32 @kfree(%struct.bmic_identify_physical_device* %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.bmic_identify_physical_device* @kzalloc(i32, i32) #1

declare dso_local i32 @hpsa_bmic_id_physical_device(%struct.ctlr_info*, i32*, i32, %struct.bmic_identify_physical_device*, i32) #1

declare dso_local i32 @GET_BMIC_DRIVE_NUMBER(i32*) #1

declare dso_local i32 @kfree(%struct.bmic_identify_physical_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
