; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { %struct.dentry*, %struct.TYPE_2__ }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CONFIG_USB_GADGET_DEBUG_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"usbd\00", align 1
@bcm63xx_usbd_dbg_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"iudma\00", align 1
@bcm63xx_iudma_dbg_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm63xx_udc*)* @bcm63xx_udc_init_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_udc_init_debugfs(%struct.bcm63xx_udc* %0) #0 {
  %2 = alloca %struct.bcm63xx_udc*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %2, align 8
  %4 = load i32, i32* @CONFIG_USB_GADGET_DEBUG_FS, align 4
  %5 = call i32 @IS_ENABLED(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %10 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.dentry* @debugfs_create_dir(i32 %12, i32* null)
  store %struct.dentry* %13, %struct.dentry** %3, align 8
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %16 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %15, i32 0, i32 0
  store %struct.dentry* %14, %struct.dentry** %16, align 8
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %19 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 256, %struct.dentry* %17, %struct.bcm63xx_udc* %18, i32* @bcm63xx_usbd_dbg_fops)
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %22 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 256, %struct.dentry* %20, %struct.bcm63xx_udc* %21, i32* @bcm63xx_iudma_dbg_fops)
  br label %23

23:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.bcm63xx_udc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
