; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_isp1362-hcd.c_create_debug_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_isp1362-hcd.c_create_debug_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1362_hcd = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"isp1362\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@usb_debug_root = common dso_local global i32 0, align 4
@isp1362_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1362_hcd*)* @create_debug_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_debug_file(%struct.isp1362_hcd* %0) #0 {
  %2 = alloca %struct.isp1362_hcd*, align 8
  store %struct.isp1362_hcd* %0, %struct.isp1362_hcd** %2, align 8
  %3 = load i32, i32* @S_IRUGO, align 4
  %4 = load i32, i32* @usb_debug_root, align 4
  %5 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %6 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4, %struct.isp1362_hcd* %5, i32* @isp1362_fops)
  %7 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %8 = getelementptr inbounds %struct.isp1362_hcd, %struct.isp1362_hcd* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  ret void
}

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.isp1362_hcd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
