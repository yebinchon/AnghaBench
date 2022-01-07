; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_g_ffs.c_gfs_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_g_ffs.c_gfs_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { i32 }

@N_CONF = common dso_local global i32 0, align 4
@func_num = common dso_local global i32 0, align 4
@f_ffs = common dso_local global i32** null, align 8
@gfs_otg_desc = common dso_local global i32** null, align 8
@f_ecm = common dso_local global i32 0, align 4
@f_geth = common dso_local global i32 0, align 4
@f_rndis = common dso_local global i32 0, align 4
@fi_ecm = common dso_local global i32 0, align 4
@fi_geth = common dso_local global i32 0, align 4
@fi_rndis = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_composite_dev*)* @gfs_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs_unbind(%struct.usb_composite_dev* %0) #0 {
  %2 = alloca %struct.usb_composite_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %2, align 8
  %4 = call i32 (...) @ENTER()
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @N_CONF, align 4
  %8 = load i32, i32* @func_num, align 4
  %9 = mul nsw i32 %7, %8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %5
  %12 = load i32**, i32*** @f_ffs, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_put_function(i32 %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %5
  %24 = load i32**, i32*** @gfs_otg_desc, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load i32**, i32*** @gfs_otg_desc, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  store i32* null, i32** %29, align 8
  ret i32 0
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @usb_put_function(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
