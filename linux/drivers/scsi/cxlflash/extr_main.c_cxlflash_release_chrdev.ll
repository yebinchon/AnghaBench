; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_cxlflash_release_chrdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_cxlflash_release_chrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxlflash_cfg = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxlflash_cfg*)* @cxlflash_release_chrdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxlflash_release_chrdev(%struct.cxlflash_cfg* %0) #0 {
  %2 = alloca %struct.cxlflash_cfg*, align 8
  store %struct.cxlflash_cfg* %0, %struct.cxlflash_cfg** %2, align 8
  %3 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %4 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @device_unregister(i32* %5)
  %7 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %8 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %7, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %10 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %9, i32 0, i32 0
  %11 = call i32 @cdev_del(%struct.TYPE_2__* %10)
  %12 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %13 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @MINOR(i32 %15)
  %17 = call i32 @cxlflash_put_minor(i32 %16)
  ret void
}

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @cdev_del(%struct.TYPE_2__*) #1

declare dso_local i32 @cxlflash_put_minor(i32) #1

declare dso_local i32 @MINOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
