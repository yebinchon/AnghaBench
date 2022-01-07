; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_aty128fb.c_register_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_aty128fb.c_register_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aty128fb_par = type { i32 }

@BIOS_0_SCRATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aty128fb_par*)* @register_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_test(%struct.aty128fb_par* %0) #0 {
  %2 = alloca %struct.aty128fb_par*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.aty128fb_par* %0, %struct.aty128fb_par** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @BIOS_0_SCRATCH, align 4
  %6 = call i32 @aty_ld_le32(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @BIOS_0_SCRATCH, align 4
  %8 = call i32 @aty_st_le32(i32 %7, i32 1431655765)
  %9 = load i32, i32* @BIOS_0_SCRATCH, align 4
  %10 = call i32 @aty_ld_le32(i32 %9)
  %11 = icmp eq i32 %10, 1431655765
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @BIOS_0_SCRATCH, align 4
  %14 = call i32 @aty_st_le32(i32 %13, i32 -1431655766)
  %15 = load i32, i32* @BIOS_0_SCRATCH, align 4
  %16 = call i32 @aty_ld_le32(i32 %15)
  %17 = icmp eq i32 %16, -1431655766
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %12
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* @BIOS_0_SCRATCH, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @aty_st_le32(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @aty_ld_le32(i32) #1

declare dso_local i32 @aty_st_le32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
