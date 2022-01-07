; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tgafb.c_tgafb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tgafb.c_tgafb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"tgafb\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@tgafb_pci_driver = common dso_local global i32 0, align 4
@tgafb_tc_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tgafb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgafb_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* null, i8** %3, align 8
  %4 = call i64 @fb_get_options(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %19

9:                                                ; preds = %0
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @tgafb_setup(i8* %10)
  %12 = call i32 @pci_register_driver(i32* @tgafb_pci_driver)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = call i32 @tc_register_driver(i32* @tgafb_tc_driver)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %6
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i64 @fb_get_options(i8*, i8**) #1

declare dso_local i32 @tgafb_setup(i8*) #1

declare dso_local i32 @pci_register_driver(i32*) #1

declare dso_local i32 @tc_register_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
