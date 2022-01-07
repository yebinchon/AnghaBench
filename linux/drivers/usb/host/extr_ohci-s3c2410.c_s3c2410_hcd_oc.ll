; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-s3c2410.c_s3c2410_hcd_oc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-s3c2410.c_s3c2410_hcd_oc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_hcd_info = type { %struct.s3c2410_hcd_port* }
%struct.s3c2410_hcd_port = type { i32, i32, i32 }

@S3C_HCDFLG_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_hcd_info*, i32)* @s3c2410_hcd_oc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_hcd_oc(%struct.s3c2410_hcd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c2410_hcd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c2410_hcd_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.s3c2410_hcd_info* %0, %struct.s3c2410_hcd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %9 = icmp eq %struct.s3c2410_hcd_info* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %52

11:                                               ; preds = %2
  %12 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %13 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %12, i32 0, i32 0
  %14 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %13, align 8
  %15 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %14, i64 0
  store %struct.s3c2410_hcd_port* %15, %struct.s3c2410_hcd_port** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @local_irq_save(i64 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %44, %11
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %5, align 8
  %29 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @S3C_HCDFLG_USED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %5, align 8
  %36 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %5, align 8
  %38 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %37, i32 0, i32 2
  store i32 1, i32* %38, align 4
  %39 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @s3c2410_usb_set_power(%struct.s3c2410_hcd_info* %39, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %34, %27, %21
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %5, align 8
  %46 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %45, i32 1
  store %struct.s3c2410_hcd_port* %46, %struct.s3c2410_hcd_port** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %18

49:                                               ; preds = %18
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @local_irq_restore(i64 %50)
  br label %52

52:                                               ; preds = %49, %10
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @s3c2410_usb_set_power(%struct.s3c2410_hcd_info*, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
