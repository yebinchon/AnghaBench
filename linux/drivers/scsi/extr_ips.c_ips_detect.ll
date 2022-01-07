; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_host_template = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"ips_detect\00", align 1
@ips_num_controllers = common dso_local global i32 0, align 4
@ips_ha = common dso_local global i32* null, align 8
@ips_released_controllers = common dso_local global i32 0, align 4
@ips_hotplug = common dso_local global i32 0, align 4
@ips = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_host_template*)* @ips_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_detect(%struct.scsi_host_template* %0) #0 {
  %2 = alloca %struct.scsi_host_template*, align 8
  %3 = alloca i32, align 4
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %2, align 8
  %4 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ips_num_controllers, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @ips_register_scsi(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32*, i32** @ips_ha, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ips_free(i32 %18)
  br label %20

20:                                               ; preds = %13, %9
  %21 = load i32, i32* @ips_released_controllers, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @ips_released_controllers, align 4
  br label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %5

26:                                               ; preds = %5
  store i32 1, i32* @ips_hotplug, align 4
  %27 = load i32, i32* @ips_num_controllers, align 4
  ret i32 %27
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i64 @ips_register_scsi(i32) #1

declare dso_local i32 @ips_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
